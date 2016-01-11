powerData<-read.csv("household_power_consumption.txt",header=TRUE,sep=";",stringsAsFactors=FALSE)
powerData<-powerData[powerData$Date=="1/2/2007"|powerData$Date=="2/2/2007",]

actPower<-as.numeric(powerData[["Global_active_power"]])



png(filename="ExData_Plotting1/plot1.png",width=480,height=480)
hist(actPower,col="red",main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()