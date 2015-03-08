Quiz 1: 
  ## Read data
  hw<- read.csv ("hw1_data.csv")

  ## Missing values in the Ozon column
  is.na(hw)
  good<- complete.cases(hw)
  hw [good,][,1]
  new<- hw [good,][,1]
  sum(is.na(hw))

  ## Get Data with month=6 and get mean for Temaprature
  july_data <- hw[ which( hw$Month == 6 ) , ]
  mean(july_data[ , "Temp" ], na.rm = TRUE)

## Max Ozon for month = 5
  may_data <- hw[ which( hw$Month == 5 ) , ]
  max(may_data[ , "Ozone" ], na.rm = TRUE)

## Extract the subset of rows of the data frame where Ozone values are above 31 and Temp values are above 90. 
## What is the mean of Solar.R in this subset?
  sub_data <- hw[which(hw$Ozone >31 & hw$Temp > 90), ]
  mean(sub_data[ , "Solar.R" ], na.rm = TRUE)