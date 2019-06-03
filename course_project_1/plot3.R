library(reshape)
library(datasets)
dataMetering <- powerdata[, 7:10]
EnergySubMetering <- melt(dataMetering, id = c("DateTime"))


png("plot3.png", width = 480, height = 480)
with(EnergySubMetering, plot(DateTime,value, type="n", main = "", ylab = "Energy sub metering", xlab = ""))
with(subset(EnergySubMetering,variable == "Sub_metering_1"), lines(DateTime,value, col="black"))
with(subset(EnergySubMetering,variable == "Sub_metering_2"), lines(DateTime,value, col="red"))
with(subset(EnergySubMetering,variable == "Sub_metering_3"), lines(DateTime,value, col="blue"))
legend("topright", lty=1, lwd = 2,col = c("black","red","blue"), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()