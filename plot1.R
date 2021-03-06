setwd("~/Monica/DataScience/ExploratoryDataAnalysis/exdata%2Fdata%2Fhousehold_power_consumption (1)")
data <- read.csv("household_power_consumption.txt", sep = ";", na.strings = "?")
colnames(data) <- c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")
newdata <- subset(data, subset = (data$Date >= "2007-02-01" & Date <= "2007-02-02"))
newdata$Date <- strptime(paste(newdata$Date, newdata$Time), format="%d/%m/%Y %H:%M:%S")
hist(as.numeric(newdata$Global_active_power), col = "red", border = "black", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", main = "Global Active Power")


