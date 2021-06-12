# In this file, write the R-code necessary to load your original data file
# (e.g., an SPSS, Excel, or SAS-file), and convert it to a data.frame. Then,
# use the function open_data(your_data_frame) or closed_data(your_data_frame)
# to store the data.

library(worcs)
library(foreign)
library(haven)
df <- read.spss("Goodman data 8_19 1.30.21 for Caspar.sav", to.data.frame = T)
# Retain only cases with 1 attempt or more
df$exclude <- 0
df$exclude[which(df$CDE13 > 0)] <- 1
# which(rowSums(is.na(df[c("CDE7_NEW", "CDE8", "CDE9", "CDE10", "CDE11", 
#                          "CDE12", "CDE13","CDE17")])) == 8)
#df$exclude <- 0

# 3. Military Service Auxiliary Variable - Can you please remove/exclude from analyses the participants for whom it's unclear whether they are currently (vs. previously) serving when looking at military service as an auxiliary variable?
df$exclude[df$Any_Service == "served but unclear if still serving (cougle)"] <- 0
filter_for_emily <- df
filter_for_emily <- filter_for_emily[, c("Sitecode", "ID", "exclude")]
haven::write_sav(filter_for_emily, "filter_for_emily.sav")
df <- df[df$exclude == 1, ]
df["exclude"] <- NULL
df$Sitecode <- factor(df$Sitecode)
df$Gender <- droplevels(df$Gender_MF_Only)
df$Education <- as.numeric(df$EducationJT)
df$Method <- droplevels(df$CDE15_Method_Condensed_NEW)
df$Branch <- factor(gsub("^(Army|Air Force|Navy|Marine Corps|Coast Guard).*$", "\\1", df$Military_Branch))

df[c("ID", "Gender_MF_Only", "EducationJT", "CDE15_CODE", "CDE15_Method_Condensed_NEW", "CDE15_Method_Condensed", "CDE15_Method_More_Condensed", "Military_Branch")] <- NULL
df[c("CDE7_NEW", "CDE8", "CDE9", "CDE10", "CDE11", "CDE12", "CDE16")] <- lapply(df[c("CDE7_NEW", "CDE8", "CDE9", "CDE10", "CDE11", "CDE12", "CDE16")], as.integer)


desc <- descriptives(df)

closed_data(df)