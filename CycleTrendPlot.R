## Plots from each of the regions of the UK
opar <- par(no.readonly=TRUE)
par(mfrow=c(3,1),mar=c(3,3,2,1),cex=.8)

#PLots of the series themselves all in one plot.
ts.plot(DecompDataEngland$x,DecompDataWales$x,	DecompDataLondon$x,	DecompDataNorthEast$x,	DecompDataWestMidlandsRegion$x,	DecompDataEastMidlands$x,	DecompDataSouthEast$x,	DecompDataSouthWest$x,	DecompDataEastofEngland$x,	DecompDataNorthWest$x,	DecompDataYorkshireandtheHumber$x,	DecompDataEnglandandWales$x,		
     main="Average house prices in various regions of the UK",
     col=1:12, ylab="")
legend("topleft",legend=regions, col=1:12, lty=1, ncol=1, cex = 0.8)


plot(unemp.hp1$cycle,
     main="Hodrick-Prescott filter of Average Prices: Cycle,drift=TRUE",
     col=2, ylab="", ylim=range(unemp.hp4$cycle,na.rm=TRUE))
lines(unemp.hp2$cycle,col=3)
lines(unemp.hp3$cycle,col=4)
lines(unemp.hp4$cycle,col=5)
legend("topleft",legend=c("lambda=1600", "lambda=800", "freq=12", "freq=52"), col=1:5, lty=rep(1,5), ncol=1)
par(opar)












png(filename="/home/jon/Documents/Minvera Statistical Consulting/Plots/TIme Series/LondonTSPlot.png")
AveragePriceSeasonallyAdjustedPlot = plot.ts(AveragePriceSeasonallyAdjustedTS, main = "Monthly Percentage Change London", ylab = "Monthly Percent Change", xlab = "Monthly Time")

#Basic Decompose for each city
# Cities: London
png(filename="/home/jon/Documents/Minvera Statistical Consulting/Plots/Basic Decomposition/LondonFlatPercentChangeComponentsPlot.png")
AveragePriceSeasonallyAdjustedTSComponents = decompose(AveragePriceSeasonallyAdjustedTS)
AveragePriceSeasonallyAdjustedTSComponents = plot(AveragePriceSeasonallyAdjustedTSComponents)
dev.off()


#STL Decomposition for each city
# Cities: London
png(filename = "/home/jon/Documents/Minvera Statistical Consulting/Plots/STL Plots/LondonPercentChangeSTLDecompositionPlot.png")
AveragePriceSeasonallyAdjustedTSSTLDecomposition = (stl(AveragePriceSeasonallyAdjustedTSComponents, s.window = 7, t.window = 50, t.jump = 1))
AveragePriceSeasonallyAdjustedTSSTLDecompositionPlot = plot(AveragePriceSeasonallyAdjustedTSSTLDecomposition)
dev.off()




