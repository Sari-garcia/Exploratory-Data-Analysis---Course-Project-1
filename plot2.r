#Plot 2
setwd("C:/Users/Sara2/Desktop/ArchivosR")
dat<-read.table("household_power_consumption.txt",header = TRUE,sep = ";", stringsAsFactors=FALSE, dec=".")
gdata<-dat[dat$Date %in% c("1/2/2007","2/2/2007"),]
GAP <- as.numeric(gdata$Global_active_power)

x <- strptime(paste(gdata$Date, gdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
png("plot2.png", width=480, height=480)
plot(x,GAP, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
