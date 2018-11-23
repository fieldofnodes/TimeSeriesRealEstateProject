#Data ends at 3rd quarter loaded as csv and turned into S3 zoo class object
dataHPI <- read.csv(file = "data/UKQuarteryHPI.csv", header = TRUE, stringsAsFactors = FALSE)
class(dataHPI)
colnames(dataHPI)
class(dataHPI$Date)
tsHPI = ts(data=dataHPI$HPI, frequency = 4, start=c(1968,2), end=c(2018,3)) 
class(tsHPI)

Lambda = 1600
DecompHPIQuarterly=hpfilter(tsHPI,freq=Lambda,type=c("lambda","frequency"),drift=FALSE)


## Plots from each of the regions of the UK
opar <- par(no.readonly=TRUE)
par(mfrow=c(2,2),mar=c(6,6,2,1),cex=.8)

#PLots of the series themselves all in one plot.
colorToUse = "blue"
ts.plot(DecompHPIQuarterly$x,
        main="HPI Time Series  Since 1968",
        col=colorToUse, ylab="")

ts.plot(DecompHPIQuarterly$trend,
        main="HPI  Trend Since 1968",
        col=colorToUse, ylab="")

ts.plot(DecompHPIQuarterly$cycle,
        main="HPI Cycle Since 1968",
        col=colorToUse, ylab="")


