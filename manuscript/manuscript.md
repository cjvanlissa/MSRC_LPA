Results MSRC latent class analysis
================
07 June, 2021

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
and positively skewed in the extreme, such that 44% of participants
reported the lowest level of NSSI, and 44% of participants reported the
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
| Sitecode             | integer | 2411 | 0.0000000 |     23 |   13.253007 |     13 |   13 |                                        | 8.415597e+00 |           |   1 |       26 |       25 |  0.1716985 |   1.7219849 |   -1.2386811 |   -6.214010 |
| CollectionMethod     | factor  | 2411 | 0.0000000 |      8 |             |        |  936 | computer administrated self-report (1) |              | 0.7218044 |     |          |          |            |             |              |             |
| Age                  | integer | 2380 | 0.0128577 |     63 |   34.238235 |     30 |   30 |                                        | 1.400249e+01 |           |  18 |       88 |       70 |  0.8258956 |   8.2296525 |   -0.4526842 |   -2.256335 |
| Gender               | factor  | 2347 | 0.0265450 |      3 |             |        | 1504 | Male                                   |              | 0.4603405 |     |          |          |            |             |              |             |
| Race                 | factor  | 2351 | 0.0248859 |      8 |             |        | 1584 | White/Caucasian                        |              | 0.5082580 |     |          |          |            |             |              |             |
| Ethnicity            | factor  | 2291 | 0.0497719 |      4 |             |        | 2015 | Non-Hispanic                           |              | 0.2151302 |     |          |          |            |             |              |             |
| Relationship\_Status | factor  | 1863 | 0.2272916 |      7 |             |        |  745 | Single                                 |              | 0.6800723 |     |          |          |            |             |              |             |
| Deployment           | factor  | 1311 | 0.4562422 |      3 |             |        | 1100 |                                        |              | 0.4999927 |     |          |          |            |             |              |             |
| ActiveDuty           | factor  | 1673 | 0.3060971 |      3 |             |        | 1160 | Classified as active duty              |              | 0.4252198 |     |          |          |            |             |              |             |
| Any\_Service         | factor  | 2411 | 0.0000000 |      4 |             |        |  831 | Veteran                                |              | 0.6663497 |     |          |          |            |             |              |             |
| Any\_Service\_Y\_N   | factor  | 2411 | 0.0000000 |      3 |             |        | 1640 | SM or Veteran                          |              | 0.4350446 |     |          |          |            |             |              |             |
| CDE7\_NEW            | integer | 2373 | 0.0157611 |      4 |    1.923725 |      2 |    2 |                                        | 8.169769e-01 |           |   1 |        3 |        2 |  0.1409037 |   1.4019736 |   -1.4890678 |   -7.411129 |
| CDE8                 | integer | 2347 | 0.0265450 |      8 |    3.551342 |      4 |    4 |                                        | 1.724969e+00 |           |   1 |        7 |        6 |  0.1298826 |   1.2852253 |   -0.7792231 |   -3.856954 |
| CDE9                 | integer | 2195 | 0.0895894 |      4 |    2.401822 |      3 |    3 |                                        | 7.040684e-01 |           |   1 |        3 |        2 | -0.7459526 |  -7.1387043 |   -0.6831422 |   -3.270291 |
| CDE10                | integer | 2200 | 0.0875156 |      4 |    2.422727 |      3 |    3 |                                        | 6.726191e-01 |           |   1 |        3 |        2 | -0.7436607 |  -7.1248605 |   -0.5729458 |   -2.745881 |
| CDE11                | integer | 2225 | 0.0771464 |      4 |    2.447640 |      3 |    3 |                                        | 5.937891e-01 |           |   1 |        3 |        2 | -0.5509152 |  -5.3080703 |   -0.6233245 |   -3.004212 |
| CDE12                | integer | 2180 | 0.0958109 |      4 |    2.076147 |      2 |    2 |                                        | 7.281653e-01 |           |   1 |        3 |        2 | -0.1174953 |  -1.1205767 |   -1.1108034 |   -5.299402 |
| CDE13                | numeric | 2411 | 0.0000000 |     39 |   39.437370 |      2 |    2 |                                        | 1.233481e+03 |           |   1 |    42865 |    42864 | 34.6360228 | 347.3689162 | 1198.5923036 | 6012.899700 |
| SA\_Dichot           | factor  | 2411 | 0.0000000 |      2 |             |        | 2411 | Yes                                    |              | 0.0000000 |     |          |          |            |             |              |             |
| SA\_MA\_Group        | factor  | 2411 | 0.0000000 |      3 |             |        | 1355 | Multiple SA                            |              | 0.4923101 |     |          |          |            |             |              |             |
| CDE16                | integer | 1978 | 0.1795935 |      6 |    2.813448 |      3 |    3 |                                        | 1.540248e+00 |           |   1 |        5 |        4 |  0.0324753 |   0.2950456 |   -1.4840281 |   -6.744772 |
| CDE17                | numeric | 2220 | 0.0792202 |    119 | 9574.181081 |      1 |    1 |                                        | 3.008228e+05 |           |   0 | 10000000 | 10000000 | 33.0147620 | 317.7402209 | 1092.9510834 | 5261.743526 |
| Education            | integer | 2360 | 0.0211530 |      6 |    2.802966 |      3 |    3 |                                        | 8.791734e-01 |           |   1 |        5 |        4 |  0.3522097 |   3.4948417 |    0.2680804 |    1.330591 |
| Method               | factor  | 2231 | 0.0746578 |      7 |             |        | 1088 | Overdose                               |              | 0.7025273 |     |          |          |            |             |              |             |
| Branch               | factor  | 1583 | 0.3434260 |      7 |             |        |  828 |                                        |              | 0.6448522 |     |          |          |            |             |              |             |

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
|       1 | 37042.59 | 37146.77 |    1.00 |      1.00 |      1.00 |   1.00 |   1.00 |         |
|       2 | 34928.83 | 35142.98 |    0.75 |      0.91 |      0.92 |   0.45 |   0.55 |       0 |
|       3 | 34259.88 | 34583.99 |    0.77 |      0.77 |      0.95 |   0.10 |   0.52 |       0 |
|       4 | 33860.01 | 34294.09 |    0.75 |      0.78 |      0.93 |   0.09 |   0.47 |       0 |
|       5 | 33699.00 | 34243.06 |    0.68 |      0.72 |      0.83 |   0.09 |   0.30 |       0 |
|       6 | 33616.33 | 34270.35 |    0.69 |      0.73 |      0.82 |   0.05 |   0.29 |       0 |
|       7 | 33569.30 | 34333.29 |    0.67 |      0.67 |      0.83 |   0.05 |   0.22 |       0 |

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
variables are displayed in Table <a href="#tab:tabcat">4</a>. All
auxiliary variables differed significantly across the two classes.

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
| Medical attention (DV) |  3.13 | 0.05 | \[3.02, 3.23\]   |  2.44 | 0.05 | \[2.34, 2.55\]   | 70.499 | 0     |
| Age (cov)              | 35.82 | 0.43 | \[34.98, 36.66\] | 32.24 | 0.46 | \[31.33, 33.14\] | 27.427 | 0     |
| Education (cov)        |  2.77 | 0.03 | \[2.72, 2.82\]   |  2.84 | 0.03 | \[2.78, 2.90\]   | 2.661  | 0.103 |

Table 3: Class differences in continuous auxiliary variables.

    ## Error in `[.data.frame`(x$parameters, , c("class", "category", "prob", : undefined columns selected

    ## Error in grep(i, cats$Variable):(grep(i, cats$Variable) + (length(test_res[[i]]) - : argument of length 0

| Variable | category                       | prob.1 | se.1  | ci.1           | prob.2 | se.2  | ci.2            | chisq  | p     | cramersv | p 1 vs 2 |
|:---------|:-------------------------------|:-------|:------|:---------------|:-------|:------|:----------------|:-------|:------|---------:|:---------|
|          | Female                         | 0.329  | 0.015 | \[0.30, 0.36\] | 0.458  | 0.019 | \[0.42, 0.50\]  | 25.827 | 0.000 |     0.12 |          |
|          | Male                           | 0.671  | 0.015 | \[0.64, 0.70\] | 0.542  | 0.019 | \[0.50, 0.58\]  |        |       |          |          |
|          | Asian                          | 0.022  | 0.005 | \[0.01, 0.03\] | 0.034  | 0.007 | \[0.02, 0.05\]  | 13.789 | 0.032 |     0.08 |          |
|          | Black/African American         | 0.151  | 0.012 | \[0.13, 0.17\] | 0.181  | 0.014 | \[0.15, 0.21\]  |        |       |          |          |
|          | Multiracial                    | 0.029  | 0.005 | \[0.02, 0.04\] | 0.012  | 0.004 | \[0.00, 0.02\]  |        |       |          |          |
|          | Native American/Native Alaskan | 0.018  | 0.004 | \[0.01, 0.03\] | 0.011  | 0.004 | \[0.00, 0.02\]  |        |       |          |          |
|          | Other (sometimes Hispanic)     | 0.080  | 0.009 | \[0.06, 0.10\] | 0.087  | 0.010 | \[0.07, 0.11\]  |        |       |          |          |
|          | Pacific Islander               | 0.005  | 0.002 | \[0.00, 0.01\] | 0.001  | 0.001 | \[-0.00, 0.00\] |        |       |          |          |
|          | White/Caucasian                | 0.696  | 0.015 | \[0.67, 0.73\] | 0.674  | 0.017 | \[0.64, 0.71\]  |        |       |          |          |
|          | Currently Serving              | 0.280  | 0.014 | \[0.25, 0.31\] | 0.242  | 0.016 | \[0.21, 0.27\]  | 29.169 | 0.000 |     0.12 |          |
|          | No Military Service            | 0.312  | 0.015 | \[0.28, 0.34\] | 0.446  | 0.019 | \[0.41, 0.48\]  |        |       |          |          |
|          | Veteran                        | 0.408  | 0.016 | \[0.38, 0.44\] | 0.312  | 0.017 | \[0.28, 0.35\]  |        |       |          |          |
|          | Cutting                        | 0.137  | 0.011 | \[0.12, 0.16\] | 0.198  | 0.014 | \[0.17, 0.23\]  | 38.668 | 0.000 |     0.14 |          |
|          | Hanging/Asphyxiation           | 0.128  | 0.011 | \[0.11, 0.15\] | 0.117  | 0.012 | \[0.09, 0.14\]  |        |       |          |          |
|          | Jumping                        | 0.050  | 0.007 | \[0.04, 0.06\] | 0.058  | 0.008 | \[0.04, 0.07\]  |        |       |          |          |
|          | Other Method                   | 0.064  | 0.008 | \[0.05, 0.08\] | 0.076  | 0.010 | \[0.06, 0.10\]  |        |       |          |          |
|          | Overdose                       | 0.497  | 0.016 | \[0.47, 0.53\] | 0.506  | 0.018 | \[0.47, 0.54\]  |        |       |          |          |
|          | Shooting                       | 0.124  | 0.011 | \[0.10, 0.15\] | 0.046  | 0.008 | \[0.03, 0.06\]  |        |       |          |          |
|          | 1                              | 0.275  | 0.014 | \[0.25, 0.30\] | 0.413  | 0.019 | \[0.38, 0.45\]  | 99.997 | 0.000 |     0.24 |          |
|          | 2                              | 0.022  | 0.005 | \[0.01, 0.03\] | 0.053  | 0.008 | \[0.04, 0.07\]  |        |       |          |          |
|          | 3                              | 0.213  | 0.014 | \[0.19, 0.24\] | 0.264  | 0.016 | \[0.23, 0.30\]  |        |       |          |          |
|          | 4                              | 0.219  | 0.013 | \[0.19, 0.24\] | 0.171  | 0.015 | \[0.14, 0.20\]  |        |       |          |          |
|          | 5                              | 0.270  | 0.015 | \[0.24, 0.30\] | 0.099  | 0.012 | \[0.08, 0.12\]  |        |       |          |          |

Table 4: Class differences in categorical auxiliary variables.

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
