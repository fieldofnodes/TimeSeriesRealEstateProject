## Plots from each of the regions of the UK
opar <- par(no.readonly=TRUE)
par(mfrow=c(2,2),mar=c(5,2.5,2,1),cex=.8)


#PLots of the series themselves all in one plot.
colorToUse = "blue"
ts.plot(DecompDataEnglandMonthly$x,DecompDataWalesMonthly$x,	DecompDataLondonMonthly$x,	DecompDataNorthEastMonthly$x,	DecompDataWestMidlandsRegionMonthly$x,	DecompDataEastMidlandsMonthly$x,	DecompDataSouthEastMonthly$x,	DecompDataSouthWestMonthly$x,	DecompDataEastofEnglandMonthly$x,	DecompDataNorthWestMonthly$x,	DecompDataYorkshireandtheHumberMonthly$x,	DecompDataEnglandandWalesMonthly$x,		
        main="Average house prices in various regions of the UK",
        col=colorToUse, ylab="", lty = 1:12)
#legend("topleft",legend=regions, col=colorToUse, lty=1, ncol=1, cex = 0.8)


#PLots of the trends all in one plot.
#colorToUse = DistincColours(1)
ts.plot(DecompDataEnglandMonthly$trend,DecompDataWalesMonthly$trend,	DecompDataLondonMonthly$trend,	DecompDataNorthEastMonthly$trend,	DecompDataWestMidlandsRegionMonthly$trend,	DecompDataEastMidlandsMonthly$trend,	DecompDataSouthEastMonthly$trend,	DecompDataSouthWestMonthly$trend,	DecompDataEastofEnglandMonthly$trend,	DecompDataNorthWestMonthly$trend,	DecompDataYorkshireandtheHumberMonthly$trend,	DecompDataEnglandandWalesMonthly$trend,		
        main="Average house prices trend in various regions of the UK",
        col=colorToUse, ylab="", lty =1:12)
#legend("topleft",legend=regions, col=colorToUse, lty=1, ncol=1, cex = 0.8)


#PLots of the cycles all in one plot.
#colorToUse = DistincColours(12)
ts.plot(DecompDataEnglandMonthly$cycle,DecompDataWalesMonthly$cycle,	DecompDataLondonMonthly$cycle,	DecompDataNorthEastMonthly$cycle,	DecompDataWestMidlandsRegionMonthly$cycle,	DecompDataEastMidlandsMonthly$cycle,	DecompDataSouthEastMonthly$cycle,	DecompDataSouthWestMonthly$cycle,	DecompDataEastofEnglandMonthly$cycle,	DecompDataNorthWestMonthly$cycle,	DecompDataYorkshireandtheHumberMonthly$cycle,	DecompDataEnglandandWalesMonthly$cycle,		
        main="Average house prices cycle in various regions of the UK",
        col=colorToUse, ylab="", lty =1:12)
#legend("topleft",legend=regions, col=colorToUse, lty=1, ncol=1, cex = 0.8)


plot(NULL ,xaxt='n',yaxt='n',bty='n',ylab='',xlab='', xlim=0:1, ylim=0:1)
legend("center",legend=regions, col=colorToUse, lty=1:12, ncol=2, cex = .90)
mtext("Regions of the UK",side = 3,line = -1,outer = FALSE, at = NA)






#Exporting as png example
# Cities: London
#png(filename = "/home/jon/Documents/Minvera Statistical Consulting/Plots/STL Plots/LondonPercentChangeSTLDecompositionPlot.png")
#AveragePriceSeasonallyAdjustedTSSTLDecomposition = (stl(AveragePriceSeasonallyAdjustedTSComponents, s.window = 7, t.window = 50, t.jump = 1))
#AveragePriceSeasonallyAdjustedTSSTLDecompositionPlot = plot(AveragePriceSeasonallyAdjustedTSSTLDecomposition)
#adev.off()








#Exporting as png example
# Cities: London
#png(filename = "/home/jon/Documents/Minvera Statistical Consulting/Plots/STL Plots/LondonPercentChangeSTLDecompositionPlot.png")
#AveragePriceSeasonallyAdjustedTSSTLDecomposition = (stl(AveragePriceSeasonallyAdjustedTSComponents, s.window = 7, t.window = 50, t.jump = 1))
#AveragePriceSeasonallyAdjustedTSSTLDecompositionPlot = plot(AveragePriceSeasonallyAdjustedTSSTLDecomposition)
#adev.off()




