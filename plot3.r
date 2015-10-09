#Plot 3
setwd("C:/Users/Sara2/Desktop/ArchivosR")
dat<-read.table("household_power_consumption.txt",header = TRUE,sep = ";", stringsAsFactors=FALSE, dec=".")
gdata<-dat[dat$Date %in% c("1/2/2007","2/2/2007"),]
x <- strptime(paste(gdata$Date, gdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

a<-as.numeric(gdata$Sub_metering_1)
b<-as.numeric(gdata$Sub_metering_2)
c<-as.numeric(gdata$Sub_metering_3)
png("plot3.png", width=480, height=480)
plot(x, a, type="l", xlab="", ylab="Energy sub metering", col="black")
lines(x, b, type="l", col="red")
lines(x, c, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()
