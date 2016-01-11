powerData<-read.csv("household_power_consumption.txt",header=TRUE,sep=";",stringsAsFactors=FALSE)
powerData<-powerData[powerData$Date=="1/2/2007"|powerData$Date=="2/2/2007",]

powerData$Date<-as.Date(powerData$Date,"%d/%m/%Y")

powerData["DateTime"]=as.POSIXct(paste(powerData$Date, powerData$Time), format="%Y-%m-%d %H:%M:%S")




png(filename="ExData_Plotting1/plot2.png",width=480,height=480)
plot(powerData$DateTime,powerData$Global_active_power,type="l",ylab="Global Active Power (kilowatts)",xlab="")
dev.off()