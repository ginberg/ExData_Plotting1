plot1 <- function(){
  DT = read.table("./data/household_power_consumption.txt", na.strings="?", sep=";", header=TRUE)
  DT <- subset(DT, Date=='1/2/2007' | Date=='2/2/2007')
  hist(DT$Global_active_power,main="Global Active Power", col="red", xlab="Global Active Power (kilowatts)")
}