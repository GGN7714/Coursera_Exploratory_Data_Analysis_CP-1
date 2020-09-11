file <- "C:/Users/GuruPC/Desktop/Data Science-Coursera/household_power_consumption.txt"
data <- read.table(file, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
mydata<-subset(data,Date=="1/2/2007" | Date=="2/2/2007")

datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
png("plot3.png", width=480, height=480)
plot(datetime,as.numeric(mydata$Sub_metering_1),type="l",xlab="",ylab = "Energy sub metering")
lines(datetime,as.numeric(mydata$Sub_metering_2),type="l",col="red")
lines(datetime,as.numeric(mydata$Sub_metering_3),type="l",col="blue")
legend("topright",lty=1, lwd=2.5,col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()
