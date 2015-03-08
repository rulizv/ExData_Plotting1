plot1 <- function() {
t=read.table('household_power_consumption.txt',sep=";",stringsAsFactors=FALSE,na.string="?",header=TRUE)
t1=subset(t, grepl("[1-2]/2/2007",t$Date))
png('plot1.png')
hist(t1$Global_active_power,main="Global Active Power",col='red', xlab="Global Active Power (kilowatts)")
dev.off()
}
