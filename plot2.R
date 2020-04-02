d<-read.table("household_power_consumption.txt", sep=";",header = TRUE)
d1<-subset(d,Date=="1/2/2007")
d2<-subset(d,Date=="2/2/2007")
d3<-rbind(d1,d2)
xaxis<-as.POSIXct(paste(as.character(d3$Date),as.character(d3$Time)), 
                  format=" %d/%m/%Y %H:%M:%S")
yaxis<-as.numeric(as.character(d3$Global_active_power))
png("plot2.png")
plot(xaxis,yaxis, type='l', xlab="Days",ylab="Global Active Power (kilowatts", main="Elect
     city usage")
dev.off()
