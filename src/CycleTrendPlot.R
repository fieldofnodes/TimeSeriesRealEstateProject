## Plots from each of the regions of the UK
opar <- par(no.readonly=TRUE)
par(mfrow=c(2,2),mar=c(6,6,2,1),cex=.8)

#PLots of the series themselves all in one plot.
colorToUse = DistincColours(12)
ts.plot(DecompDataEngland$x,DecompDataWales$x,	DecompDataLondon$x,	DecompDataNorthEast$x,	DecompDataWestMidlandsRegion$x,	DecompDataEastMidlands$x,	DecompDataSouthEast$x,	DecompDataSouthWest$x,	DecompDataEastofEngland$x,	DecompDataNorthWest$x,	DecompDataYorkshireandtheHumber$x,	DecompDataEnglandandWales$x,		
     main="Average house prices in various regions of the UK",
     col=colorToUse, ylab="")
#legend("topleft",legend=regions, col=colorToUse, lty=1, ncol=1, cex = 0.8)


#PLots of the trends all in one plot.
#colorToUse = DistincColours(12)
ts.plot(DecompDataEngland$trend,DecompDataWales$trend,	DecompDataLondon$trend,	DecompDataNorthEast$trend,	DecompDataWestMidlandsRegion$trend,	DecompDataEastMidlands$trend,	DecompDataSouthEast$trend,	DecompDataSouthWest$trend,	DecompDataEastofEngland$trend,	DecompDataNorthWest$trend,	DecompDataYorkshireandtheHumber$trend,	DecompDataEnglandandWales$trend,		
        main="Average house prices trend in various regions of the UK",
        col=colorToUse, ylab="")
#legend("topleft",legend=regions, col=colorToUse, lty=1, ncol=1, cex = 0.8)


#PLots of the cycles all in one plot.
#colorToUse = DistincColours(12)
ts.plot(DecompDataEngland$cycle,DecompDataWales$cycle,	DecompDataLondon$cycle,	DecompDataNorthEast$cycle,	DecompDataWestMidlandsRegion$cycle,	DecompDataEastMidlands$cycle,	DecompDataSouthEast$cycle,	DecompDataSouthWest$cycle,	DecompDataEastofEngland$cycle,	DecompDataNorthWest$cycle,	DecompDataYorkshireandtheHumber$cycle,	DecompDataEnglandandWales$cycle,		
        main="Average house prices cycle in various regions of the UK",
        col=colorToUse, ylab="")
#legend("topleft",legend=regions, col=colorToUse, lty=1, ncol=1, cex = 0.8)

plot(NULL ,xaxt='n',yaxt='n',bty='n',ylab='',xlab='', xlim=0:1, ylim=0:1)
legend("center",legend=regions, col=colorToUse, lty=1, ncol=2, cex = .80)
mtext("Regions of the UK",side = 3,line = 0,outer = FALSE, at = NA)






#Exporting as png example
# Cities: London
#png(filename = "/home/jon/Documents/Minvera Statistical Consulting/Plots/STL Plots/LondonPercentChangeSTLDecompositionPlot.png")
#AveragePriceSeasonallyAdjustedTSSTLDecomposition = (stl(AveragePriceSeasonallyAdjustedTSComponents, s.window = 7, t.window = 50, t.jump = 1))
#AveragePriceSeasonallyAdjustedTSSTLDecompositionPlot = plot(AveragePriceSeasonallyAdjustedTSSTLDecomposition)
#adev.off()




