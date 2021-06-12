Results MSRC latent class analysis
================
12 June, 2021

**NOTE: I’ve written a first-glance interpretation of the results as a
placeholder. Please interpret the results substantively at your own
discretion.**

This manuscript uses the Workflow for Open Reproducible Code in Science
(Van Lissa et al. 2020) to ensure reproducibility and transparency. All
code <!--and data--> are available at
<https://github.com/cjvanlissa/MSRC_LPA>.

<!--The function below inserts a notification if the manuscript is knit using synthetic data. Make sure to insert it after load_data().-->

## 0.1 Descriptive statistics

We present descriptive statistics of the observed variables below (see
Table <a href="#tab:tabdesc">1</a>). Two of the latent class indicators,
NSSI history and suicide attempt frequency, were measured at a
continuous level of measurement. However, these variables were censored
and positively skewed in the extreme, such that 42% of participants
reported the lowest level of NSSI, and 41% of participants reported the
lowest level of suicide attempts. Based on a visual comparison of
transformations for skewed variables (square root, log, inverse,
rank-ordering, and median dichotomization), it was observed that most
transformations split the sample into this lowest category versus all
other response levels. This indicates that, despite the continuous
measurement scale, these variables convey information at the binary
level. We thus used median dichotomization to account for the deviation
from normality, and treated these dichotomized variables as ordinal.
This is a validated approach for dealing with severely censored
variables (Muthén and Speckart 1983).

| name                 | type    |    n |   missing | unique |        mean | median | mode | mode\_value                            |           sd |         v | min |      max |    range |       skew |   skew\_2se |         kurt |   kurt\_2se |
|:---------------------|:--------|-----:|----------:|-------:|------------:|-------:|-----:|:---------------------------------------|-------------:|----------:|----:|---------:|---------:|-----------:|------------:|-------------:|------------:|
| Sitecode             | integer | 2643 | 0.0000000 |     23 |   14.230042 |     13 |   13 |                                        | 8.673402e+00 |           |   1 |       26 |       25 |  0.0113401 |   0.1190706 |   -1.3758324 |   -7.225844 |
| CollectionMethod     | factor  | 2643 | 0.0000000 |      8 |             |        | 1157 | computer administrated self-report (1) |              | 0.7006318 |     |          |          |            |             |              |             |
| Age                  | integer | 2610 | 0.0124858 |     63 |   33.561686 |     29 |   29 |                                        | 1.371596e+01 |           |  18 |       88 |       70 |  0.9145880 |   9.5431009 |   -0.2562963 |   -1.337649 |
| Gender               | factor  | 2570 | 0.0276201 |      3 |             |        | 1556 | Male                                   |              | 0.4777617 |     |          |          |            |             |              |             |
| Race                 | factor  | 2576 | 0.0253500 |      8 |             |        | 1762 | White/Caucasian                        |              | 0.4980744 |     |          |          |            |             |              |             |
| Ethnicity            | factor  | 2514 | 0.0488082 |      4 |             |        | 2227 | Non-Hispanic                           |              | 0.2051155 |     |          |          |            |             |              |             |
| Relationship\_Status | factor  | 1872 | 0.2917140 |      7 |             |        |  771 |                                        |              | 0.6805847 |     |          |          |            |             |              |             |
| Deployment           | factor  | 1313 | 0.5032160 |      3 |             |        | 1330 |                                        |              | 0.4999927 |     |          |          |            |             |              |             |
| ActiveDuty           | factor  | 1673 | 0.3670072 |      3 |             |        | 1160 | Classified as active duty              |              | 0.4252198 |     |          |          |            |             |              |             |
| Any\_Service         | factor  | 2411 | 0.0877790 |      4 |             |        |  831 | Veteran                                |              | 0.6663497 |     |          |          |            |             |              |             |
| Any\_Service\_Y\_N   | factor  | 2411 | 0.0877790 |      3 |             |        | 1640 | SM or Veteran                          |              | 0.4350446 |     |          |          |            |             |              |             |
| CDE7\_NEW            | integer | 2605 | 0.0143776 |      4 |    1.940115 |      2 |    2 |                                        | 8.138249e-01 |           |   1 |        3 |        2 |  0.1099644 |   1.1463055 |   -1.4826778 |   -7.730918 |
| CDE8                 | integer | 2579 | 0.0242149 |      8 |    3.661109 |      4 |    4 |                                        | 1.738289e+00 |           |   1 |        7 |        6 |  0.0797321 |   0.8270001 |   -0.7919977 |   -4.108982 |
| CDE9                 | integer | 2426 | 0.0821037 |      4 |    2.384171 |      3 |    3 |                                        | 7.034384e-01 |           |   1 |        3 |        2 | -0.6969276 |  -7.0112546 |   -0.7324895 |   -3.686022 |
| CDE10                | integer | 2431 | 0.0802119 |      4 |    2.406006 |      3 |    3 |                                        | 6.728945e-01 |           |   1 |        3 |        2 | -0.6964602 |  -7.0137597 |   -0.6234148 |   -3.140363 |
| CDE11                | integer | 2456 | 0.0707529 |      4 |    2.436889 |      2 |    2 |                                        | 5.905632e-01 |           |   1 |        3 |        2 | -0.5021639 |  -5.0829879 |   -0.6606007 |   -3.344713 |
| CDE12                | integer | 2411 | 0.0877790 |      4 |    2.041062 |      2 |    2 |                                        | 7.296151e-01 |           |   1 |        3 |        2 | -0.0632245 |  -0.6340863 |   -1.1210972 |   -5.624135 |
| CDE13                | numeric | 2643 | 0.0000000 |     42 |   52.430760 |      2 |    2 |                                        | 1.437748e+03 |           |   1 |    42865 |    42864 | 29.6034898 | 310.8365984 |  874.9452242 | 4595.194812 |
| SA\_Dichot           | factor  | 2643 | 0.0000000 |      2 |             |        | 2643 | Yes                                    |              | 0.0000000 |     |          |          |            |             |              |             |
| SA\_MA\_Group        | factor  | 2643 | 0.0000000 |      3 |             |        | 1531 | Multiple SA                            |              | 0.4874338 |     |          |          |            |             |              |             |
| CDE16                | integer | 2209 | 0.1642073 |      6 |    2.795835 |      3 |    3 |                                        | 1.530328e+00 |           |   1 |        5 |        4 |  0.0491310 |   0.4716742 |   -1.4687467 |   -7.053419 |
| CDE17                | numeric | 2440 | 0.0768067 |    181 | 8736.054918 |      2 |    2 |                                        | 2.869474e+05 |           |   0 | 10000000 | 10000000 | 34.6183633 | 349.2710353 | 1201.8526032 | 6065.333131 |
| Education            | integer | 2589 | 0.0204313 |      6 |    2.839707 |      3 |    3 |                                        | 8.866340e-01 |           |   1 |        5 |        4 |  0.3247398 |   3.3747946 |    0.2109382 |    1.096489 |
| Method               | factor  | 2463 | 0.0681044 |      7 |             |        | 1223 | Overdose                               |              | 0.6943656 |     |          |          |            |             |              |             |
| Branch               | factor  | 1583 | 0.4010594 |      7 |             |        | 1060 |                                        |              | 0.6448522 |     |          |          |            |             |              |             |

Table 1: Descriptive statistics

## 0.2 Analysis

We conducted a latent class analysis for 1-7 classes in Mplus 8.4. All
latent class indicators were coded as categorical. Class membership for
categorical variables is determined by the proportion of responses in
each category. We used tidyLPA to determine the optimum number of
classes (see Table <a href="#tab:tabres">2</a>). According to the BIC,
the model fit improved dramatically from a one-class solution to a
two-class solution, and continued improving until a five-class solution.
According to the bootstrapped likelihood ratio test, model fit improved
significantly with an increasing number of classes. However, all
solutions with more than two classes had low posterior classification
probabilities (&lt;= .77), and the smallest class contained only
approximately 10% of all cases. We thus selected a two-class solution
for our final analysis. Note that the entropy for all models is low,
which indicates that classes are not clearly separable.

| Classes |      AIC |      BIC | Entropy | prob\_min | prob\_max | n\_min | n\_max | BLRT\_p |
|--------:|---------:|---------:|--------:|----------:|----------:|-------:|-------:|--------:|
|       1 | 40864.27 | 40970.10 |    1.00 |      1.00 |      1.00 |   1.00 |   1.00 |         |
|       2 | 38511.65 | 38729.20 |    0.76 |      0.91 |      0.93 |   0.46 |   0.54 |       0 |
|       3 | 37735.66 | 38064.92 |    0.77 |      0.77 |      0.94 |   0.10 |   0.50 |       0 |
|       4 | 37301.36 | 37742.34 |    0.75 |      0.76 |      0.93 |   0.10 |   0.45 |       0 |
|       5 | 37133.22 | 37685.90 |    0.69 |      0.71 |      0.83 |   0.10 |   0.29 |       0 |
|       6 | 37036.24 | 37700.64 |    0.70 |      0.75 |      0.83 |   0.05 |   0.29 |       0 |
|       7 |          |          |         |           |           |        |        |         |

Table 2: Fit of latent class models

## 0.3 Final model

For all indicator variables, the proportion of responses by response
category and latent class are displayed in Figure
<a href="#fig:figpresprob">1</a>. These same results are rescaled to the
approximate number of participants per class (based on summed posterior
class probabilities) in Figure <a href="#fig:figpres">2</a>. Both
figures show that participants in the first class were relatively more
likely to report higher scores on being certain that their attempt would
be fatal and lethal, intent to die, and a belief that their attempt
could not be fixed by medical attention, as compared to participants in
the second class. Participants in the first class were relatively less
likely to report a history of NSSI.

<div class="figure">

<img src="manuscript_files/figure-gfm/figpresprob-1.png" alt="Results of the two-class latent class model. Proportion of responses by response category and latent class."  />
<p class="caption">
Figure 1: Results of the two-class latent class model. Proportion of
responses by response category and latent class.
</p>

</div>

<div class="figure">

<img src="manuscript_files/figure-gfm/figpres-1.png" alt="Results of the two-class latent class model. Proportion of responses by response category and latent class, rescaled to the number of participants per latent class (based on posterior class probability)."  />
<p class="caption">
Figure 2: Results of the two-class latent class model. Proportion of
responses by response category and latent class, rescaled to the number
of participants per latent class (based on posterior class probability).
</p>

</div>

## 0.4 Auxiliary variables

We were interested in whether these classes differed on two outcome
variables and several covariates. To prevent the inclusion of these
auxiliary variables from influencing the latent class measurement model,
we used the three-step method described by Asparouhov and Muthén (2014).
Results for continuous auxiliary variables are displayed in Table
<a href="#tab:tabcont">3</a>, and results for categorical auxiliary
variables are displayed in Table
<a href="#tab:tabcat"><strong>??</strong></a>. All auxiliary variables
differed significantly across the two classes.

With regard to the method of the attempt, the most notable differences
between the classes were that the first class was more likely than the
second to report shooting as a method, and the second class was more
likely than the first to report cutting as a method. With regard to the
amount of medical attention required, the first class scored
significantly higher than the second.

With regard to the covariates, the first class consisted of a relatively
larger proportion of males than the second class. The first class was
significantly older and lower educated than the second. The first class
was relatively more likely to be currently serving or a veteran, whereas
the second class was relatively more likely to have no military service
record. Although there was a significant association between class
membership and race, the chi square value was small, and no clear
pattern emerged from the results.

| Variable               |   m.1 | se.1 | ci1              |   m.2 | se.2 | ci2              | chisq  | p     |
|:-----------------------|------:|-----:|:-----------------|------:|-----:|:-----------------|:-------|:------|
| Medical attention (DV) |  3.10 | 0.05 | \[3.01, 3.20\]   |  2.46 | 0.05 | \[2.36, 2.56\]   | 72.621 | 0     |
| Age (cov)              | 35.48 | 0.41 | \[34.68, 36.29\] | 31.31 | 0.41 | \[30.50, 32.12\] | 43.932 | 0     |
| Education (cov)        |  2.78 | 0.03 | \[2.73, 2.83\]   |  2.91 | 0.03 | \[2.86, 2.96\]   | 9.859  | 0.002 |

Table 3: Class differences in continuous auxiliary variables.

    ## Error in `[.data.frame`(x$parameters, , c("class", "category", "prob", : undefined columns selected

    ## Error in cats[["p 1 vs 2"]] <- NA: object 'cats' not found

    ## Error in cats$`p 1 vs 2`[grep(i, cats$Variable):(grep(i, cats$Variable) + : object 'cats' not found

    ## Error in eval(expr, envir, enclos): object 'cats' not found

    ## Error in rownames(cats) <- NULL: object 'cats' not found

    ## Error in is.data.frame(x): object 'cats' not found

    ## Error in knitr::kable(cats, digits = 2, caption = "Class differences in categorical auxiliary variables."): object 'cats' not found

<div id="refs" class="references csl-bib-body hanging-indent">

<div id="ref-asparouhovAuxiliaryVariablesMixture2014" class="csl-entry">

Asparouhov, Tihomir, and Bengt Muthén. 2014. “Auxiliary Variables in
Mixture Modeling: Three-Step Approaches Using Mplus.” *Structural
Equation Modeling: A Multidisciplinary Journal* 21 (3): 329–41.
<https://doi.org/10.1080/10705511.2014.915181>.

</div>

<div id="ref-muthenCategorizingSkewedLimited1983" class="csl-entry">

Muthén, Bengt O., and George Speckart. 1983. “Categorizing Skewed,
Limited Dependent Variables Using Multivariate Probit Regression to
Evaluate the California Civil Addict Program.” *Evaluation Review* 7
(2): 257–69.

</div>

<div id="ref-vanlissaWORCSWorkflowOpen2020" class="csl-entry">

Van Lissa, Caspar J., Andreas M. Brandmaier, Loek Brinkman, Anna-Lena
Lamprecht, Aaron Peikert, Marijn E. Struiksma, and Barbara Vreede. 2020.
“WORCS: A Workflow for Open Reproducible Code in Science,” May.
<https://doi.org/10.17605/OSF.IO/ZCVBS>.

</div>

</div>
