plot4 <- function(){
  DT = read.table("./data/household_power_consumption.txt", na.strings="?", sep=";", header=TRUE)
  DT <- subset(DT, Date=='1/2/2007' | Date=='2/2/2007')
  DT$Dates <- strptime(paste(DT$Date, DT$Time), "%d/%m/%Y %H:%M:%S")
  
  #Save the histogram to png
  #png(file = "plot4.png")  
  #
  par( mfrow = c( 2, 2 ) )
  with(DT,plot(Dates,Global_active_power,type="l", ylab="Global Active Power", xlab=""))
  with(DT,plot(Dates,Voltage,type="l", ylab="Voltage", xlab=""))
  plot(DT$Date, DT$Global_active_power, ylab="Energy sub metering", col="red")
  #plot(DT$Date, DT$Global_active_power, ylab="Energy sub metering", col="blue")
  with(DT,plot(Dates,Global_reactive_power,type="l", ylab="Global_reactive_power", xlab=""))
  #dev.off()
}