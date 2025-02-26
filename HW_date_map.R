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

#use a for loop to check each date against the one next to you 
for (x in 1: length(sample_dates) - 1){
  dif <- seq(from = as.Date(sample_dates[x]), to = as.Date(sample_dates[x+1]))
  print(month(dif))
  print(weeks(dif))
}

#Question 3 Using map() and map_dbl(), compute the mean, median, and standard deviation for each
#numeric vector in the following list:

num_lists <- list(c(4, 16, 25, 36, 49), c(2.3, 5.7, 8.1, 11.4), c(10, 20, 30, 40, 50))

#Use a for loop to access each individual vector using [[]] to do so
for (x in 1:3){
  print("mean")
  print(mean(num_lists[[x]]))
  print("median")
  print(median(num_lists[[x]]))
  print("standard deviation")
  print(sd(num_lists[[x]]))
}





