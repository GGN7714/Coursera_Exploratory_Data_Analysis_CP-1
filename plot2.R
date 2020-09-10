file <- "C:/Users/GuruPC/Desktop/Data Science-Coursera/household_power_consumption.txt"
data <- read.table(file, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
mydata<-subset(data,Date=="1/2/2007" | Date=="2/2/2007")
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
png("plot2.png", width=480, height=480)
plot(datetime,as.numeric(mydata$Global_active_power),type="l",xlab="",ylab = "Global Active power (kilowatts)")
dev.off()