file <- "C:/Users/GuruPC/Desktop/Data Science-Coursera/household_power_consumption.txt"
data <- read.table(file, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
mydata<-subset(data,Date=="1/2/2007" | Date=="2/2/2007")
png("plot1.png", width=480, height=480)
hist(as.numeric(mydata$Global_active_power),col="red",main = "Global Active Power",xlab = "Global Active power (kilowatts)")
dev.off()
