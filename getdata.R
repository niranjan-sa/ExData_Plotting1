library(readr)
## Read the entire dataset
df <- read_delim(file = "data\\household_power_consumption.txt",
                 delim = ";", na = c("?"))

df$Date <- as.Date(df$Date, format = '%d/%m/%Y')

## Subset based on the dates
df <- subset(df, Date >= "2007-02-01" & Date <= "2007-02-02")
df$DateTime <- strptime(temp$DateTime, format = '%Y-%m-%d %H:%M:%S')

