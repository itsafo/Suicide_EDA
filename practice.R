
install.packages('dslabs')
install.packages('tidyverse')

library(dslabs)
library(tidyverse)
data(murders)
library(winatr)

data

df <- read.csv("who_suicide_statistics_modified3.csv")

df2 <- rename(df)

df2$age <- str_replace_all(df2$age, "years",
                "")
# Getting the the total NA data
sum(is.na(df2))

# Remove rows with NA data
na.omit(df2)

#  Checkin the classses of the data columns
sapply(df2, class)

#  Chhanging suicide_no to numeric
df2$suicides_no <- as.numeric(df2$suicides_no)

# Find the mean of column with missing data
mean_suicide <-mean(df2$suicides_no, na.rm = TRUE)

replace.na(df2$suicides_no, mean_suicide)

replace_na(df2$suicides_no, mean_suicide)

df2$suicides_no <- replace_na(df2$suicides_no, mean_suicide)

df1 <- rename(df)
df1$age <- gsub(" ", "", df1$age)

df1$age <- gsub("years", "", df1$age)

df1$age <- gsub("-", "", df1$age)


run_tutorial(name = "winatr01", package = "winatr")

str_replace