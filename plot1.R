###############
#loading DATA #
###############
dataFile <- "household_power_consumption.txt"
DadosCompletos <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetData <- DadosCompletos[DadosCompletos$Date %in% c("1/2/2007","2/2/2007") ,]

#####################
#preparing variables#
#####################
globalActivePower <- as.numeric(subSetData$Global_active_power)


##################
#GENERATING GRAPH#
##################
par(mfrow = c(1, 1))
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.copy(png,'plot1.png', width=480, height=480, units="px")
dev.off()
