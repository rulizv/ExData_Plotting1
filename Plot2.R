plot2 <- function() {
    t=read.table('household_power_consumption.txt',sep=";",stringsAsFactors=FALSE,na.string="?",header=TRUE)
    t1=subset(t, grepl("^[1-2]/2/2007",t$Date))
    t2=strptime(paste(t1[,1],t1[,2]),'%d/%m/%Y %H:%M:%S')
    png('plot2.png')
    plot(t2,t1[,'Global_active_power'],ylab='Global Active Power (kilowatts)',type='l',xlab='')
    dev.off()
}
