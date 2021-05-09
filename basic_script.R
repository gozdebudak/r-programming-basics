data <- read.csv("sample_data.csv") # Reading CSV file and creating dataframe object

print(data)  # Printing the data
print(is.data.frame(data)) # Checking if the data object is a dataframe
print(ncol(data)) # The column count of the data dataframe
print(nrow(data)) # The row count of the data dataframe
names(data)  # The column names of data dataframe

print(data[1:2,]) # Printing the first 2 rows of the data frame
print(data[152:153,]) # Printing the last 2 rows of the data frame
print(data[47,"Ozone"]) # Printing the value of "Ozone" in the 47th row

# Missing values count in the "Ozone" column of this data frame
sum(is.na(data$Ozone))  

# The mean value of "Ozone" column except missing values
mean(data$Ozone[complete.cases(data$Ozone)]) 

# Mean of the "Solar.R" column in the subset of rows of the data frame where 
# "Ozone" values are above 31 and "Temp" values are above 90
mean(subset(x=data, subset= Ozone > 31 & Temp > 90)$Solar.R)

# The mean of "Temp" when "Month" is equal to 6
mean(subset(x=data, subset=Month==6)$Temp) 

# The max value of "Ozone" when "Month" is equal to 5
max(subset(x=data, subset=Month==5)$Ozone, na.rm=TRUE)
