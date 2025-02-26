#Load Libraries

library(tidyverse)

#Question 1 Generate a sequence of dates from January 1, 2015 to December 31, 2025,
#spaced by every two months. Extract the year, quarter, and ISO week number 
#for each date.

dates <- seq(from = as.Date("2015-01-01"), to = as.Date("2025-12-31"), by = "months")
head(dates)

#extract data
year <- year(dates)
quarter <- quarter(dates)
isoweek <- isoweek(dates)

#check extracted data
head(year)
head(quarter)
head(isoweek)

#Question 2 Given the following dates, compute the difference in months and 
#weeks between each consecutive pair.

sample_dates <- c("2018-03-15", "2020-07-20", "2023-01-10", "2025-09-05")


for (x in 1: length(sample_dates) - 1){
  dif <- interval(start = sample_dates[x], end = sample_dates[x+1])
}
dif


