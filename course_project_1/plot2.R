powerdata$DateTime <- strptime(paste(powerdata$Date, powerdata$Time, sep = " "), format = "%d/%m/%Y %H:%M:%S")
png("plot2.png", width = 480, height = 480)
with(powerdata,plot(DateTime,Global_active_power, type = "l",ylab = "Global Active Power (kilowatts)", main = "", xlab = ""))
dev.off()