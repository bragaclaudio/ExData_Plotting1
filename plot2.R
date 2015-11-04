###############
#loading DATA #
###############

dataFile <- "household_power_consumption.txt"
DadosCompletos <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetData <- DadosCompletos[DadosCompletos$Date %in% c("1/2/2007","2/2/2007") ,]


#####################
#preparing variables#
#####################

datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subSetData$Global_active_power)

##################
#GENERATING GRAPH#
##################
par(mfrow = c(1, 1))
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.copy(png,'plot2.png', width=480, height=480, units="px")
dev.off()
