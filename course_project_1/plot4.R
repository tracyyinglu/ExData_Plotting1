png("plot4.png", width = 480, height = 480)
par(mfrow = c(2,2))
with(powerdata, {plot(DateTime, Global_active_power, type = "l", main = "", ylab = "Global Actuve Power", xlab = "")
      plot(DateTime, Voltage, type = "l", main = "", xlab = "datatime")
      })

with(EnergySubMetering, plot(DateTime,value, type="n", main = "", ylab = "Energy sub metering", xlab = ""))
with(subset(EnergySubMetering,variable == "Sub_metering_1"), lines(DateTime,value, col="black"))
with(subset(EnergySubMetering,variable == "Sub_metering_2"), lines(DateTime,value, col="red"))
with(subset(EnergySubMetering,variable == "Sub_metering_3"), lines(DateTime,value, col="blue"))
legend("topright", lty=1, lwd = 2,col = c("black","red","blue"), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

with(powerdata, plot(DateTime, Global_reactive_power, type = "l", main = "", xlab = "datetime"))

dev.off()