plot2 <- function(){
  DT = read.table("./data/household_power_consumption.txt", na.strings="?", sep=";", header=TRUE)
  DT <- subset(DT, Date=='1/2/2007' | Date=='2/2/2007')
  DT$Dates <- strptime(paste(DT$Date, DT$Time), "%d/%m/%Y %H:%M:%S")
  
  #Save the plot to png
  png(file = "plot2.png")  
  with(DT,plot(Dates,Global_active_power,type="l", ylab="Global Active Power (kilowatts)", xlab=""))
  dev.off()
}
#Get week of day on x-axis
#What kind of plot is it?

#days <- weekdays(as.Date(DT$Date,'%d/%m/%Y'))
#days
#plot(Global_active_power ~ Dates, DT, xaxt = "n", type = "l")
#plot(Dates, DT$Global_active_power, ylab="Global Active Power (kilowatts)")
