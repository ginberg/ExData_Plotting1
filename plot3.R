plot3 <- function(){
  DT = read.table("./data/household_power_consumption.txt", na.strings="?", sep=";", header=TRUE)
  DT <- subset(DT, Date=='1/2/2007' | Date=='2/2/2007')
  DT$Dates <- strptime(paste(DT$Date, DT$Time), "%d/%m/%Y %H:%M:%S")
  
  #Save the plot to png
  png(file = "plot3.png")
  par( mfrow = c(1,1 ) )
  plot(DT$Dates,DT$Sub_metering_1,type="l", col="black", ylim=range(0:35), ylab="Energy sub metering", xlab="")
  par(new=TRUE)
  plot(DT$Dates,DT$Sub_metering_2,type="l", col="red", ylim=range(0:35), ylab="Energy sub metering", xlab="")
  par(new=TRUE)
  plot(DT$Dates,DT$Sub_metering_3,type="l", col="blue", ylim=range(0:35), ylab="Energy sub metering", xlab="")
  legend("topright", lty=1, col=c("black", "red", "blue"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3" ))
  dev.off()
}