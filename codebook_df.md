Codebook created on 2021-01-31 at 2021-01-31 09:51:38
================

A codebook contains documentation and metadata describing the contents,
structure, and layout of a data file.

## Dataset description

The data contains 1904 cases and 21 variables.

## Codebook

| name               | type    |    n | missing | unique |  mean | median | mode |    sd | min | max | range |   skew | skew\_2se |   kurt | kurt\_2se |
| :----------------- | :------ | ---: | ------: | -----: | ----: | -----: | ---: | ----: | --: | --: | ----: | -----: | --------: | -----: | --------: |
| Age                | numeric | 1904 |    0.00 |     61 | 34.94 |     30 |   30 | 14.17 |  18 |  88 |    70 |   0.75 |      6.71 | \-0.57 |    \-2.52 |
| GenderMale         | numeric | 1904 |    0.00 |      2 |  0.61 |      1 |    1 |  0.49 |   0 |   1 |     1 | \-0.43 |    \-3.85 | \-1.81 |    \-8.09 |
| GenderFemale       | numeric | 1904 |    0.00 |      2 |  0.38 |      0 |    0 |  0.49 |   0 |   1 |     1 |   0.49 |      4.39 | \-1.76 |    \-7.84 |
| Race\_Cauc         | numeric | 1904 |    0.00 |      2 |  0.69 |      1 |    1 |  0.46 |   0 |   1 |     1 | \-0.81 |    \-7.25 | \-1.34 |    \-5.97 |
| Race\_Black        | numeric | 1904 |    0.00 |      2 |  0.16 |      0 |    0 |  0.37 |   0 |   1 |     1 |   1.80 |     16.08 |   1.26 |      5.60 |
| Race\_NAmer        | numeric | 1904 |    0.00 |      2 |  0.01 |      0 |    0 |  0.12 |   0 |   1 |     1 |   8.06 |     71.82 |  62.95 |    280.69 |
| Race\_Asian        | numeric | 1904 |    0.00 |      2 |  0.03 |      0 |    0 |  0.16 |   0 |   1 |     1 |   5.74 |     51.13 |  30.92 |    137.87 |
| Race\_Multi        | numeric | 1904 |    0.00 |      2 |  0.02 |      0 |    0 |  0.15 |   0 |   1 |     1 |   6.59 |     58.72 |  41.41 |    184.68 |
| EducationJT        | numeric | 1904 |    0.00 |      5 |  1.82 |      2 |    2 |  0.89 |   0 |   4 |     4 |   0.29 |      2.55 |   0.20 |      0.90 |
| Service\_Current   | numeric | 1904 |    0.00 |      2 |  0.27 |      0 |    0 |  0.44 |   0 |   1 |     1 |   1.04 |      9.31 | \-0.91 |    \-4.06 |
| Service\_Veteran   | numeric | 1904 |    0.00 |      2 |  0.37 |      0 |    0 |  0.48 |   0 |   1 |     1 |   0.55 |      4.89 | \-1.70 |    \-7.58 |
| CDE7\_NEW          | numeric | 1904 |    0.00 |      3 |  1.95 |      2 |    2 |  0.83 |   1 |   3 |     2 |   0.09 |      0.78 | \-1.54 |    \-6.85 |
| CDE8               | integer | 1904 |    0.00 |      7 |  2.67 |      3 |    3 |  1.71 |   0 |   6 |     6 |   0.06 |      0.57 | \-0.75 |    \-3.35 |
| CDE9               | numeric | 1904 |    0.00 |      3 |  1.39 |      2 |    2 |  0.70 |   0 |   2 |     2 | \-0.73 |    \-6.49 | \-0.71 |    \-3.14 |
| CDE10              | numeric | 1904 |    0.00 |      3 |  1.41 |      2 |    2 |  0.67 |   0 |   2 |     2 | \-0.71 |    \-6.33 | \-0.61 |    \-2.70 |
| CDE11              | numeric | 1904 |    0.00 |      3 |  1.43 |      1 |    1 |  0.59 |   0 |   2 |     2 | \-0.50 |    \-4.42 | \-0.66 |    \-2.95 |
| CDE12              | numeric | 1904 |    0.00 |      3 |  1.08 |      1 |    1 |  0.72 |   0 |   2 |     2 | \-0.12 |    \-1.04 | \-1.08 |    \-4.81 |
| CDE15\_CODE\_FINAL | numeric | 1827 |    0.04 |     14 |  3.11 |      1 |    1 |  2.62 |   0 |  12 |    12 |   0.70 |      6.12 | \-0.93 |    \-4.07 |
| CDE16              | numeric | 1732 |    0.09 |      6 |  1.89 |      2 |    2 |  1.53 |   0 |   4 |     4 | \-0.05 |    \-0.41 | \-1.45 |    \-6.19 |
| NSSI\_Freq\_Rank   | numeric | 1904 |    0.00 |     97 | 11.38 |      1 |    1 | 20.16 |   0 |  96 |    96 |   2.12 |     18.86 |   3.80 |     16.94 |
| SA\_Freq\_Rank     | numeric | 1904 |    0.00 |     30 |  2.99 |      2 |    2 |  3.47 |   1 |  30 |    29 |   3.83 |     34.16 |  18.99 |     84.69 |

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
