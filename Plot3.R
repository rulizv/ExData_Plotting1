plot3 <- function() {
    t=read.table('household_power_consumption.txt',sep=";",stringsAsFactors=FALSE,na.string="?",header=TRUE)
    t1=subset(t, grepl("^[1-2]/2/2007",t$Date))
    t2=strptime(paste(t1[,1],t1[,2]),'%d/%m/%Y %H:%M:%S')
    png('plot3.png')
    plot(t2,t1[,'Sub_metering_1'],type='l',ylab='Energy sub metering',xlab='')
    points(t2,t1[,'Sub_metering_2'],col='red',type='l')
    points(t2,t1[,'Sub_metering_3'],col='blue',type='l')
    legend('topright',pch=1,col=c('black','red','blue'),legend=c('Sub metering 1','Sub metering 2','Sub metering 3'))
    dev.off()
}
