plot4 <- function(){
  DT = read.table("./data/household_power_consumption.txt", na.strings="?", sep=";", header=TRUE)
  DT <- subset(DT, Date=='1/2/2007' | Date=='2/2/2007')
  DT$Dates <- strptime(paste(DT$Date, DT$Time), "%d/%m/%Y %H:%M:%S")
  
  #Save the histogram to png
  png(file = "plot4.png")  
  
  #set multiple rows and columns
  par( mfrow = c( 2, 2 ) )
  
  with(DT,plot(Dates,Global_active_power,type="l", ylab="Global Active Power", xlab=""))
  with(DT,plot(Dates,Voltage,type="l", ylab="Voltage", xlab=""))
  
  plot(DT$Dates,DT$Sub_metering_1,type="l", col="black", ylim=range(0:35), ylab="Energy sub metering", xlab="")
  par(new=TRUE)
  plot(DT$Dates,DT$Sub_metering_2,type="l", col="red", ylim=range(0:35), ylab="Energy sub metering", xlab="")
  par(new=TRUE)
  plot(DT$Dates,DT$Sub_metering_3,type="l", col="blue", ylim=range(0:35), ylab="Energy sub metering", xlab="")
  legend("topright", lty=1, col=c("black", "red", "blue"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3" ))
  
  with(DT,plot(Dates,Global_reactive_power,type="l", ylab="Global_reactive_power", xlab=""))
  dev.off()
}