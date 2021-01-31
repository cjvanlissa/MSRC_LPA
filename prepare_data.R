# In this file, write the R-code necessary to load your original data file
# (e.g., an SPSS, Excel, or SAS-file), and convert it to a data.frame. Then,
# use the function open_data(your_data_frame) or closed_data(your_data_frame)
# to store the data.

library(worcs)
library(foreign)
library(ggplot2)
library(tidySEM)
df <- read.csv("MSRC LPA Data 1.6.21 NO IDs for LPA.csv", stringsAsFactors = FALSE)
df[df == 888] <- NA

desc <- descriptives(df)

closed_data(df)