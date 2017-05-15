source("getdata.R")

## Creating the plot in png format starting the device
png(filename = "plot2.png", width = 480, height = 480, units = "px")

plot(temp$DateTime, temp$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")

dev.off()
