Codebook created on 2021-06-11 at 2021-06-11 08:13:01
================

A codebook contains documentation and metadata describing the contents,
structure, and layout of a data file.

## Dataset description

The data contains 2643 cases and 25 variables.

## Codebook

| name                 | type    |    n | missing | unique |    mean | median | mode | mode\_value                            |        sd |    v | min |      max |    range |  skew | skew\_2se |    kurt | kurt\_2se |
|:---------------------|:--------|-----:|--------:|-------:|--------:|-------:|-----:|:---------------------------------------|----------:|-----:|----:|---------:|---------:|------:|----------:|--------:|----------:|
| Sitecode             | factor  | 2411 |    0.09 |     24 |         |        |  486 | 13                                     |           | 0.88 |     |          |          |       |           |         |           |
| CollectionMethod     | factor  | 2411 |    0.09 |      8 |         |        |  936 | computer administrated self-report (1) |           | 0.72 |     |          |          |       |           |         |           |
| Age                  | numeric | 2380 |    0.10 |     63 |   34.24 |     30 |   30 |                                        |     14.00 |      |  18 |       88 |       70 |  0.83 |      8.23 |   -0.45 |     -2.26 |
| Gender               | factor  | 2347 |    0.11 |      3 |         |        | 1504 | Male                                   |           | 0.46 |     |          |          |       |           |         |           |
| Race                 | factor  | 2351 |    0.11 |      8 |         |        | 1584 | White/Caucasian                        |           | 0.51 |     |          |          |       |           |         |           |
| Ethnicity            | factor  | 2291 |    0.13 |      4 |         |        | 2015 | Non-Hispanic                           |           | 0.22 |     |          |          |       |           |         |           |
| Relationship\_Status | factor  | 1863 |    0.30 |      7 |         |        |  780 |                                        |           | 0.68 |     |          |          |       |           |         |           |
| Deployment           | factor  | 1311 |    0.50 |      3 |         |        | 1332 |                                        |           | 0.50 |     |          |          |       |           |         |           |
| ActiveDuty           | factor  | 1673 |    0.37 |      3 |         |        | 1160 | Classified as active duty              |           | 0.43 |     |          |          |       |           |         |           |
| Any\_Service         | factor  | 2411 |    0.09 |      4 |         |        |  831 | Veteran                                |           | 0.67 |     |          |          |       |           |         |           |
| Any\_Service\_Y\_N   | factor  | 2411 |    0.09 |      3 |         |        | 1640 | SM or Veteran                          |           | 0.44 |     |          |          |       |           |         |           |
| CDE7\_NEW            | integer | 2373 |    0.10 |      4 |    1.92 |      2 |    2 |                                        |      0.82 |      |   1 |        3 |        2 |  0.14 |      1.40 |   -1.49 |     -7.41 |
| CDE8                 | integer | 2347 |    0.11 |      8 |    3.55 |      4 |    4 |                                        |      1.72 |      |   1 |        7 |        6 |  0.13 |      1.29 |   -0.78 |     -3.86 |
| CDE9                 | integer | 2195 |    0.17 |      4 |    2.40 |      3 |    3 |                                        |      0.70 |      |   1 |        3 |        2 | -0.75 |     -7.14 |   -0.68 |     -3.27 |
| CDE10                | integer | 2200 |    0.17 |      4 |    2.42 |      3 |    3 |                                        |      0.67 |      |   1 |        3 |        2 | -0.74 |     -7.12 |   -0.57 |     -2.75 |
| CDE11                | integer | 2225 |    0.16 |      4 |    2.45 |      3 |    3 |                                        |      0.59 |      |   1 |        3 |        2 | -0.55 |     -5.31 |   -0.62 |     -3.00 |
| CDE12                | integer | 2180 |    0.18 |      4 |    2.08 |      2 |    2 |                                        |      0.73 |      |   1 |        3 |        2 | -0.12 |     -1.12 |   -1.11 |     -5.30 |
| CDE13                | numeric | 2411 |    0.09 |     40 |   39.44 |      2 |    2 |                                        |   1233.48 |      |   1 |    42865 |    42864 | 34.64 |    347.37 | 1198.59 |   6012.90 |
| SA\_Dichot           | factor  | 2411 |    0.09 |      2 |         |        | 2411 | Yes                                    |           | 0.00 |     |          |          |       |           |         |           |
| SA\_MA\_Group        | factor  | 2411 |    0.09 |      3 |         |        | 1355 | Multiple SA                            |           | 0.49 |     |          |          |       |           |         |           |
| CDE16                | integer | 1978 |    0.25 |      6 |    2.81 |      3 |    3 |                                        |      1.54 |      |   1 |        5 |        4 |  0.03 |      0.30 |   -1.48 |     -6.74 |
| CDE17                | numeric | 2220 |    0.16 |    119 | 9574.18 |      1 |    1 |                                        | 300822.77 |      |   0 | 10000000 | 10000000 | 33.01 |    317.74 | 1092.95 |   5261.74 |
| Education            | numeric | 2360 |    0.11 |      6 |    2.80 |      3 |    3 |                                        |      0.88 |      |   1 |        5 |        4 |  0.35 |      3.49 |    0.27 |      1.33 |
| Method               | factor  | 2231 |    0.16 |      7 |         |        | 1088 | Overdose                               |           | 0.70 |     |          |          |       |           |         |           |
| Branch               | factor  | 1583 |    0.40 |      7 |         |        | 1060 |                                        |           | 0.64 |     |          |          |       |           |         |           |

### Legend

-   **Name**: Variable name
-   **type**: Data type of the variable
-   **missing**: Proportion of missing values for this variable
-   **unique**: Number of unique values
-   **mean**: Mean value
-   **median**: Median value
-   **mode**: Most common value (for categorical variables, this shows
    the frequency of the most common category)
-   **mode\_value**: For categorical variables, the value of the most
    common category
-   **sd**: Standard deviation (measure of dispersion for numerical
    variables
-   **v**: Agresti’s V (measure of dispersion for categorical variables)
-   **min**: Minimum value
-   **max**: Maximum value
-   **range**: Range between minimum and maximum value
-   **skew**: Skewness of the variable
-   **skew\_2se**: Skewness of the variable divided by 2\*SE of the
    skewness. If this is greater than abs(1), skewness is significant
-   **kurt**: Kurtosis (peakedness) of the variable
-   **kurt\_2se**: Kurtosis of the variable divided by 2\*SE of the
    kurtosis. If this is greater than abs(1), kurtosis is significant.

This codebook was generated using the [Workflow for Open Reproducible
Code in Science (WORCS)](https://osf.io/zcvbs/)
