d<-read.table("household_power_consumption.txt", sep=";",header = TRUE)
d1<-subset(d,Date=="1/2/2007")
d2<-subset(d,Date=="2/2/2007")
d3<-rbind(d1,d2)
#plot(as.Date(as.character(d3$Date),format="%d/%m/%y"),as.numeric(d3$Global_active_power))
xaxis<-as.POSIXct(paste(as.character(d3$Date),as.character(d3$Time)), 
                  format=" %d/%m/%Y %H:%M:%S")
png("plot3.png")
plot(xaxis,as.numeric(as.character(d3$Sub_metering_1)), type='l', xlab=
       "Days",ylab="Energy sub metering")
lines(xaxis, as.numeric(as.character(d3$Sub_metering_2)), col="red")
lines(xaxis, as.numeric(as.character(d3$Sub_metering_3)), col="blue")
legend("topright",col=c("black","red","blue"),border="black",legend=
         c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty = 1)
dev.off()


