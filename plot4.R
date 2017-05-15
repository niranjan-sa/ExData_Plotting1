source("getdata.R")

## Creating the plot in png format starting the device
png(filename = "plot4.png", width = 480, height = 480, units = "px")

par(mfrow = c(2, 2))

plot(temp$DateTime, temp$Global_active_power, type = "l",
     xlab = "", ylab = "Global Active Power (kilowatts)")

plot(temp$DateTime, temp$Voltage, type = "l",
     xlab = "datetime", ylab = "Voltage")

plot(temp$DateTime, temp$Sub_metering_1, type = "l", col = "black",
     xlab = '', ylab = "Energy sub metering")

lines(temp$DateTime, temp$Sub_metering_2, col='red')

lines(temp$DateTime, temp$Sub_metering_3, col='blue')

legend("topright", pch = c("_", "_", "_"), col = c("black", "red", "blue"),
    legend= c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

plot(temp$DateTime, temp$Global_reactive_power, type = "l",
     xlab = "datetime", ylab = "Global_reactive_power")

dev.off()