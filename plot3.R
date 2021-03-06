powerData<-read.csv("household_power_consumption.txt",header=TRUE,sep=";",stringsAsFactors=FALSE)
powerData<-powerData[powerData$Date=="1/2/2007"|powerData$Date=="2/2/2007",]

powerData$Date<-as.Date(powerData$Date,"%d/%m/%Y")

powerData["DateTime"]=as.POSIXct(paste(powerData$Date, powerData$Time), format="%Y-%m-%d %H:%M:%S")




png(filename="ExData_Plotting1/plot3.png",width=480,height=480)

plot(powerData$DateTime,powerData$Sub_metering_1,type="l",ylab="Energy sub metering",xlab="")
lines(powerData$DateTime,powerData$Sub_metering_2,col="red")
lines(powerData$DateTime,powerData$Sub_metering_3,col="blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1,1),lwd=c(2.5,2.5,2.5),col=c("black","red","blue"))



dev.off()