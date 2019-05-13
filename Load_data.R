load_data <- function(){
  power <- read.table("household_power_consumption.txt", sep=";", header = TRUE, colClasses = c("character","character",rep("numeric",7)), na = "?")
  power$Time <- strptime(paste(power$Date, power$Time), "%d/%m/%Y %H:%M:%S")
  power$Date <- as.Date(power$Date,"%d/%m/%Y")
  PowerS <- subset(power, power$Date<="2007-02-02" & power$Date >= "2007-02-01")
  return(PowerS)
}
