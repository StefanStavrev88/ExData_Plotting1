source("init.R")

png(filename = "plot4.png", width = 480, height = 480, units = "px", bg="transparent")
par (mfrow = c(2,2), mar = c(4,4,2,1), oma = c(0,0,2,0))
plot(data$DateTime, data$Global_active_power, xlab="", ylab="Global Active Power", type="l")
plot(data$DateTime, data$Voltage, xlab="datetime", ylab="Voltage", type="l")
plot(data$DateTime, data$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(data$DateTime, data$Sub_metering_2, type="l", col="red")
lines(data$DateTime, data$Sub_metering_3, type="l", col="blue")
legend("topright", lwd=1, lty=1, col = c("black", "red", "blue"),
  legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
plot(data$DateTime, data$Global_reactive_power, xlab="datetime", ylab="Global_reactive_power", type="l")
dev.off()