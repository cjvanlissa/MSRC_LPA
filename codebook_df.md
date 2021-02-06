Codebook created on 2021-02-06 at 2021-02-06 11:35:18
================

A codebook contains documentation and metadata describing the contents,
structure, and layout of a data file.

## Dataset description

The data contains 2648 cases and 25 variables.

## Codebook

| name                 | type    |    n | missing | unique |    mean | median | mode | mode\_value                                                         |        sd |    v | min |      max |    range |  skew | skew\_2se |    kurt | kurt\_2se |
| :------------------- | :------ | ---: | ------: | -----: | ------: | -----: | ---: | :------------------------------------------------------------------ | --------: | ---: | --: | -------: | -------: | ----: | --------: | ------: | --------: |
| Sitecode             | factor  | 2648 |    0.00 |     24 |         |        |  617 | 25                                                                  |           | 0.87 |     |          |          |       |           |         |           |
| CollectionMethod     | factor  | 2648 |    0.00 |      8 |         |        | 1162 | computer administrated self-report (1)                              |           | 0.70 |     |          |          |       |           |         |           |
| Age                  | numeric | 2615 |    0.01 |     63 |   33.56 |     29 |   29 |                                                                     |     13.71 |      |  18 |       88 |       70 |  0.92 |      9.56 |  \-0.25 |    \-1.32 |
| Gender               | factor  | 2575 |    0.03 |      3 |         |        | 1561 | Male                                                                |           | 0.48 |     |          |          |       |           |         |           |
| Race                 | factor  | 2581 |    0.03 |      8 |         |        | 1767 | White/Caucasian                                                     |           | 0.50 |     |          |          |       |           |         |           |
| Ethnicity            | factor  | 2519 |    0.05 |      4 |         |        | 2232 | Non-Hispanic                                                        |           | 0.20 |     |          |          |       |           |         |           |
| Relationship\_Status | factor  | 1877 |    0.29 |      7 |         |        |  771 |                                                                     |           | 0.68 |     |          |          |       |           |         |           |
| Deployment           | factor  | 1313 |    0.50 |      3 |         |        | 1335 |                                                                     |           | 0.50 |     |          |          |       |           |         |           |
| ActiveDuty           | factor  | 1678 |    0.37 |      3 |         |        | 1160 | Classified as active duty                                           |           | 0.43 |     |          |          |       |           |         |           |
| Any\_Service         | factor  | 2416 |    0.09 |      5 |         |        |  831 | Veteran                                                             |           | 0.67 |     |          |          |       |           |         |           |
| Any\_Service\_Y\_N   | factor  | 2416 |    0.09 |      3 |         |        | 1645 | SM or Veteran                                                       |           | 0.43 |     |          |          |       |           |         |           |
| CDE7\_NEW            | factor  | 2610 |    0.01 |      4 |         |        |  945 | \= “No”                                                             |           | 0.66 |     |          |          |       |           |         |           |
| CDE8                 | factor  | 2584 |    0.02 |      8 |         |        |  534 | likely                                                              |           | 0.83 |     |          |          |       |           |         |           |
| CDE9                 | factor  | 2431 |    0.08 |      4 |         |        | 1248 | I thought that death was probable or certain                        |           | 0.59 |     |          |          |       |           |         |           |
| CDE10                | factor  | 2436 |    0.08 |      4 |         |        | 1246 | I believed what I did equaled or exceeded what would be lethal      |           | 0.58 |     |          |          |       |           |         |           |
| CDE11                | factor  | 2461 |    0.07 |      4 |         |        | 1200 | I intended to die.                                                  |           | 0.55 |     |          |          |       |           |         |           |
| CDE12                | factor  | 2416 |    0.09 |      4 |         |        | 1127 | I was uncertain whether death could be avoided by medical attention |           | 0.64 |     |          |          |       |           |         |           |
| CDE13                | numeric | 2648 |    0.00 |     42 |   52.34 |      2 |    2 |                                                                     |   1436.39 |      |   1 |    42865 |    42864 | 29.63 |    311.43 |  876.61 |   4608.29 |
| SA\_Dichot           | factor  | 2648 |    0.00 |      2 |         |        | 2648 | Yes                                                                 |           | 0.00 |     |          |          |       |           |         |           |
| SA\_MA\_Group        | factor  | 2648 |    0.00 |      3 |         |        | 1533 | Multiple SA                                                         |           | 0.49 |     |          |          |       |           |         |           |
| CDE16                | factor  | 2214 |    0.16 |      6 |         |        |  793 | No medical attention required                                       |           | 0.75 |     |          |          |       |           |         |           |
| CDE17                | numeric | 2445 |    0.08 |    181 | 8718.19 |      2 |    2 |                                                                     | 286653.97 |      |   0 | 10000000 | 10000000 | 34.65 |    349.99 | 1204.33 |   6084.04 |
| Education            | numeric | 2594 |    0.02 |      6 |    2.84 |      3 |    3 |                                                                     |      0.89 |      |   1 |        5 |        4 |  0.32 |      3.38 |    0.22 |      1.12 |
| Method               | factor  | 2468 |    0.07 |      7 |         |        | 1225 | Overdose                                                            |           | 0.69 |     |          |          |       |           |         |           |
| Branch               | factor  | 1583 |    0.40 |      7 |         |        | 1065 |                                                                     |           | 0.64 |     |          |          |       |           |         |           |

### Legend

  - **Name**: Variable name
  - **type**: Data type of the variable
  - **missing**: Proportion of missing values for this variable
  - **unique**: Number of unique values
  - **mean**: Mean value
  - **median**: Median value
  - **mode**: Most common value (for categorical variables, this shows
    the frequency of the most common category)
  - **mode\_value**: For categorical variables, the value of the most
    common category
  - **sd**: Standard deviation (measure of dispersion for numerical
    variables
  - **v**: Agresti’s V (measure of dispersion for categorical variables)
  - **min**: Minimum value
  - **max**: Maximum value
  - **range**: Range between minimum and maximum value
  - **skew**: Skewness of the variable
  - **skew\_2se**: Skewness of the variable divided by 2\*SE of the
    skewness. If this is greater than abs(1), skewness is significant
  - **kurt**: Kurtosis (peakedness) of the variable
  - **kurt\_2se**: Kurtosis of the variable divided by 2\*SE of the
    kurtosis. If this is greater than abs(1), kurtosis is significant.

This codebook was generated using the [Workflow for Open Reproducible
Code in Science (WORCS)](https://osf.io/zcvbs/)
