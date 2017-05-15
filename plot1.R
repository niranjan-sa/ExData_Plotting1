library(readr)

## Read the entire dataset
df <- read_delim(file = "data\\household_power_consumption.txt",
                 delim = ";", na = c("?"))

## Dimensions
print(dim(df))

## Visualize the data
df

## Check the classes
print(names(df))

## Subset based on the dates
df <- subset(df, Date >= "2007-02-01" & Date <= "2007-02-02")
print(dim(df))

## Creating the plot in png format starting the device
png(filename = "plot1.png", width = 480, height = 480, units = "px")

## Plot the histogram
hist(df$Global_active_power, col = "red",
     main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)",
     ylab = "Frequency")

## Close the device
dev.off()