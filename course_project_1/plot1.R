rm(list = ls())
setwd("~/Documents/Data Science Course/Exploratory Data Analysis/week 1/")
download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", destfile = "assignment" ,method = "curl")
unzip("assignment")
powerdata <- read.table("household_power_consumption.txt",skip = grep("1/2/2007", readLines("household_power_consumption.txt")), nrows = 2880, sep = ";")
names(powerdata) <- c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity",
                 "Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
write.table(powerdata, "powerdata.csv", sep = ",", row.names = FALSE)

powerdata$Global_active_power <- as.numeric(powerdata$Global_active_power)
png("plot1.png", width = 480, height = 480)
with(powerdata, hist(Global_active_power, main = "Global Active Power", xlab="Global Active Power (kilowatts)", col = "red"))
dev.off()
