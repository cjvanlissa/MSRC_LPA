library(MplusAutomation)
library(tibble)
lpa_model <- function(num, df_anal){
  desc <- descriptives(df_anal)
  #browser()
  cat_vars <- desc$name[desc$unique < 9 & desc$type %in% c("integer", "factor", "character")]
  cont_vars <- desc$name[!desc$name %in% cat_vars]
  mod <- mplusObject(
    TITLE = paste0("Categorical only ", num, " classes"),
    VARIABLE = paste0(
      "CLASSES = c (", num, ");\n",
      paste0("CATEGORICAL = ", paste0(cat_vars, collapse = "\n"), ";")),
    ANALYSIS = "TYPE IS MIXTURE;\nLRTSTARTS = 0 0 40 10;",
    OUTPUT = "TECH14;",
    SAVEDATA = paste0("FILE IS dat_", num, ".dat;\nSAVE = CPROBABILITIES;"),
    usevariables = names(df_anal),
    rdata = df_anal
  )
}
run_lpa <- function(classes, df_anal){
  out <- lapply(classes, function(i){

    mod <- lpa_model(i, df_anal)
    res <- mplusModeler(mod,
                        modelout = paste0("mod_", i, ".inp"),
                        run = 1L)
    make_outlist(res, this_model = NA, this_class = i, selected_variables = names(df_anal))
  })
  names(out) <- paste("model_", "unknown", "_class_", 
                           classes, sep = "")
  class(out) <- c("tidyLPA", "list")
  out
}

make_outlist <- function(res, this_model = NA, this_class, selected_variables){
  out <- list(model = res$results)
  warnings <- NULL
  if (!is.null(out$model$summaries$LL)) {
    out$fit <- c(Model = this_model, Classes = this_class, 
                 tidyLPA:::calc_fitindices(out$model))
    estimates <- estimates(out$model)
    if (!is.null(estimates)) {
      estimates$Model <- this_model
      estimates$Classes <- this_class
    }
    out$estimates <- estimates
    if(!is.null(out$model[["savedata"]])) {
      outdat <- as.matrix(out$model$savedata[, grep("CPROB1", 
                                                    names(out$model$savedata)):ncol(out$model$savedata)])

      
      dff <- outdat
      colnames(dff) <- c(paste0("CPROB", 1:(ncol(dff) - 
                                              1)), "Class")
      out$dff <- as_tibble(cbind(res$rdata, dff))
      out$dff$model_number <- this_model
      out$dff$classes_number <- this_class
      out$dff <- out$dff[, c((ncol(out$dff) - 1), 
                             ncol(out$dff), 1:(ncol(out$dff) - 2))]
      attr(out$dff, "selected") <- selected_variables
    }
    if (!is.na(out$fit[["prob_min"]])) {
      if (out$fit[["prob_min"]] < 0.001) 
        warnings <- c(warnings, "Some classes were not assigned any cases with more than .1% probability. Consequently, these solutions are effectively identical to a solution with one class less.")
    }
    if (!is.na(out$fit[["n_min"]])) {
      if (out$fit[["n_min"]] < 0.01) 
        warnings <- c(warnings, "Less than 1% of cases were assigned to one of the profiles. Interpret this solution with caution and consider other models.")
    }
  }
  else {
    out$fit <- c(Model = this_model, Classes = this_class, 
                 LogLik = NA, AIC = NA, AWE = NA, BIC = NA, CAIC = NA, 
                 CLC = NA, KIC = NA, SABIC = NA, ICL = NA, Entropy = NA, 
                 prob_min = NA, prob_max = NA, n_min = NA, n_max = NA, 
                 BLRT_val = NA, BLRT_p = NA)
    out$estimates <- NULL
  }
  warnings <- unlist(c(warnings, sapply(out$model$warnings, 
                                        paste, collapse = " "), sapply(out$model$errors, 
                                                                       paste, collapse = " ")))
  warnings <- warnings[!grepl("first 8 characters", warnings)]
  if (this_class == 1) {
    warnings <- warnings[!grepl("TECH14 option is not available for TYPE=MIXTURE with only one class.", 
                                warnings)]
  }
  if (this_model %in% c(1, 2, 6)) {
    warnings <- warnings[!grepl("All variables are uncorrelated with all other variables within class.", 
                                warnings)]
  }
  if (length(warnings)) 
    out$warnings <- warnings
  class(out) <- c("tidyProfile.mplus", "tidyProfile", 
                  "list")
  out
}

estimates <- function (model) 
{
  df <- suppressWarnings(subset(model$parameters[["unstandardized"]], 
                                grepl("(^Means$|^Intercepts$|^Variances$|\\.WITH$|^Thresholds$)", 
                                      model$parameters[["unstandardized"]]$paramHeader) & 
                                  !is.na(as.numeric(model$parameters[["unstandardized"]]$LatentClass)), 
                                select = -5))
  varnames <- strsplit(model$input$variable$names, " ")[[1]]
  param_match <- sapply(substr(gsub("\\$.+?$", "", df$param), 1, 8), `%in%`, toupper(varnames))
  df <- df[which(param_match), ]
  if (is.null(df)) {
    return(NULL)
  }
  df$LatentClass <- as.integer(df$LatentClass)
  names(df) <- c("Category", "Parameter", "Estimate", "se", 
                 "p", "Class")
  df[!df$p == 999, ]
}


transformations <- function(df){
  vars <- names(df)
  varlist <- lapply(vars, function(v){
    bias <- min(df[[v]], na.rm = TRUE) + 1e-16
    out <- data.frame(Value = df[[v]], transformation = paste0(v, " (none)"))
    out <- rbind(out, 
                 data.frame(Value = log(df[[v]]+bias), transformation = paste0(v, " (log)")))
    out <- rbind(out, 
                 data.frame(Value = 1/(df[[v]]+bias), transformation = paste0(v, " (inv)")))
    out <- rbind(out, 
                 data.frame(Value = sqrt(df[[v]]+bias), transformation = paste0(v, " (sqrt)")))
    out <- rbind(out, 
                 data.frame(Value = as.numeric(df[[v]] <= median(df[[v]], na.rm = TRUE)), transformation = paste0(v, " (dummy)")))
    out <- rbind(out, 
                 data.frame(Value = match(df[[v]], sort(unique(df[[v]]))), transformation = paste0(v, " (rank)")))
    out$Variable <- v
    out
  })

  df_plot <- do.call(rbind, varlist)
  
  df_plot$transformation <- ordered(df_plot$transformation, levels = paste0(rep(vars, 6), rep(c(" (none)", " (rank)", " (sqrt)", " (log)", " (inv)", " (dummy)"), each = length(vars))))
  df_plot <- df_plot[complete.cases(df_plot), ]

  ggplot(df_plot, aes(x = Value)) + 
    geom_density() +
    facet_wrap(~transformation, scales = "free", ncol = length(vars)) +
    theme_bw() +
    scale_y_continuous(labels = NULL)
}


extract_cat_tests <- function(txt){
  start <- grep("EQUALITY TESTS OF MEANS/PROBABILITIES ACROSS CLASSES", txt, fixed = TRUE)
  end <- grep("TECHNICAL 14 OUTPUT", txt, fixed = TRUE)-1
  txt <- txt[start:end]
  txt <- txt[!txt == ""]
  sections <- which(!grepl(" ", txt, fixed = TRUE))
  out <- mapply(function(st, en){
    thetxt <- txt[st:en]
    props <- thetxt[grepl("Class", thetxt, fixed = TRUE) | grepl("Category", thetxt, fixed = TRUE) ]
    props <- strsplit(props, "\\s+")
    lengths <- sapply(props, length)
    labs <- sapply(props[lengths == 3], `[`, 3)
    props <- data.frame(do.call(rbind, props[lengths == 9]))
    props$X3 <- as.integer(props$X3)
    which_lab <- 1
    props$X1[1] <- labs[which_lab]
    for(i in 2:nrow(props)){
      if(!sign(props$X3[i]-props$X3[i-1] > 0)){
        which_lab <- which_lab + 1
      }
      props$X1[i] <- labs[which_lab]
    }
    names(props) <- c("Class", "X2", "Category", "Prob", "se", "OR", "se_OR", "ci.lower", "ci.upper")
    props <- props[, -2]
    
    tests <- thetxt[grepl("Overall test", thetxt, fixed = TRUE) | grepl(" vs. ", thetxt, fixed = TRUE) ]
    tests <- strsplit(tests, "\\s+")
    lengths <- sapply(tests, length)
    tests[lengths == 6] <- lapply(tests[lengths == 6], function(x){
      c(x[1], "", x[2], "", x[c(2,4:6)])
    })
    tests <- data.frame(do.call(rbind, tests))
    
    tests <- tests[, -c(1,2,4)]
    names(tests) <- c("Class", "Versus", "Chi.square", "p", "df")
    list(parameters = props, tests = tests)
  }, st = sections, en = c(sections[-1], length(txt)), SIMPLIFY = FALSE)
  names(out) <- txt[sections]
  out
}
