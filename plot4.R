file <- "C:/Users/GuruPC/Desktop/Data Science-Coursera/household_power_consumption.txt"
data <- read.table(file, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
mydata<-subset(data,Date=="1/2/2007" | Date=="2/2/2007")
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

png("plot4.png", width=480, height=480)

par(mfrow=c(2,2))

plot(datetime,as.numeric(mydata$Global_active_power),type="l",xlab="",ylab = "Global Active power")

plot(datetime,as.numeric(mydata$Voltage),type="l",ylab = "Voltage")

plot(datetime,as.numeric(mydata$Sub_metering_1),type="l",xlab="",ylab = "Energy sub metering")
lines(datetime,as.numeric(mydata$Sub_metering_2),type="l",col="red")
lines(datetime,as.numeric(mydata$Sub_metering_3),type="l",col="blue")
legend("topright",lty=1, lwd=2.5,col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),cex = 0.75,bty = "n")

plot(datetime,as.numeric(mydata$Global_reactive_power),type="l",ylab = "Global_reactive_power")

dev.off()
