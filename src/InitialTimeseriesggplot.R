options(stringsAsFactors = FALSE)
# plot the data using ggplot
LocationTable$Date <- as.Date(LocationTable$Date,
                               format = "%d/%m/%Y", origin = "1995-01-01")
colorToUse = DistincColours(12)


#Just checking the date has been set correctly
class(LocationTable$Date)
head(LocationTable$Date)

df <- LocationTable %>%
  select(Date, regions) %>%
  gather(key = "variable", value = "value", -Date)
head(df, 3)

#Setting up a png output for this plot
#Standard plot for timeseries
UKTimeSeriesPlot = ggplot(data = df, aes(x = Date, y = value, group = variable))
p <- UKTimeSeriesPlot + geom_area(aes(color = variable, fill = variable, linetype = variable), 
    alpha = 0.5, position = position_dodge(0.8)) +
    scale_color_manual(values = colorToUse) +
    scale_fill_manual(values = colorToUse) +
    labs(title = "Average prices seasonally adjsuted",
    subtitle = "1995 - 2017",
    x = "Date", y = "Average house prices") 
ggsave(p, filename = "/home/jon/Documents/R_Projects/TimeSeriesRealEstateProject/fig/UKTimeSeriesPlot.png", bg = "transparent")

#No fill
p1 <- UKTimeSeriesPlot + geom_line(aes(color = variable, linetype = variable), size = 0.7) + 
  labs(title = "Average prices seasonally adjsuted",
  subtitle = "1995 - 2017",
  x = "Date", y = "Average house prices")
ggsave(p1, filename = "/home/jon/Documents/R_Projects/TimeSeriesRealEstateProject/fig/DifferentLineTypesSeriesUK.png", bg = "transparent")


data = cbind(DecompDataEnglandMonthly$trend, DecompDataWalesMonthly$trend,DecompDataEnglandMonthly$trend, DecompDataWalesMonthly$trend, DecompDataLondonMonthly$trend,	DecompDataNorthEastMonthly$trend,	DecompDataWestMidlandsRegionMonthly$trend, DecompDataEastMidlandsMonthly$trend,	DecompDataSouthEastMonthly$trend,	DecompDataSouthWestMonthly$trend, DecompDataEastofEnglandMonthly$trend,	DecompDataNorthWestMonthly$trend,	DecompDataYorkshireandtheHumberMonthly$trend,	DecompDataEnglandandWalesMonthly$trend))
dataCopy <- data
as.data.frame(dataCopy)
class(DecompDataEnglandMonthly$trend)
colnames(data) = regions
data[1]








#PLots of the trends all in one plot.
#colorToUse = DistincColours(12)
ts.plot(DecompDataEnglandMonthly$trend,DecompDataWalesMonthly$trend,	DecompDataLondonMonthly$trend,	DecompDataNorthEastMonthly$trend,	DecompDataWestMidlandsRegionMonthly$trend,	DecompDataEastMidlandsMonthly$trend,	DecompDataSouthEastMonthly$trend,	DecompDataSouthWestMonthly$trend,	DecompDataEastofEnglandMonthly$trend,	DecompDataNorthWestMonthly$trend,	DecompDataYorkshireandtheHumberMonthly$trend,	DecompDataEnglandandWalesMonthly$trend,		
        main="Average house prices trend in various regions of the UK",
        col=colorToUse, ylab="")
#legend("topleft",legend=regions, col=colorToUse, lty=1, ncol=1, cex = 0.8)


#PLots of the cycles all in one plot.
#colorToUse = DistincColours(12)
ts.plot(DecompDataEnglandMonthly$cycle,DecompDataWalesMonthly$cycle,	DecompDataLondonMonthly$cycle,	DecompDataNorthEastMonthly$cycle,	DecompDataWestMidlandsRegionMonthly$cycle,	DecompDataEastMidlandsMonthly$cycle,	DecompDataSouthEastMonthly$cycle,	DecompDataSouthWestMonthly$cycle,	DecompDataEastofEnglandMonthly$cycle,	DecompDataNorthWestMonthly$cycle,	DecompDataYorkshireandtheHumberMonthly$cycle,	DecompDataEnglandandWalesMonthly$cycle,		
        main="Average house prices cycle in various regions of the UK",
        col=colorToUse, ylab="")
#legend("topleft",legend=regions, col=colorToUse, lty=1, ncol=1, cex = 0.8)

plot(NULL ,xaxt='n',yaxt='n',bty='n',ylab='',xlab='', xlim=0:1, ylim=0:1)
legend("center",legend=regions, col=colorToUse, lty=1, ncol=2, cex = .80)
mtext("Regions of the UK",side = 3,line = 0,outer = FALSE, at = NA)


## Plots from each of the regions of the UK
opar <- par(no.readonly=TRUE)
par(mfrow=c(2,2),mar=c(6,6,2,1),cex=.8)

#PLots of the series themselves all in one plot.
colorToUse = DistincColours(12)
ts.plot(DecompDataEnglandMonthly$x,DecompDataWalesMonthly$x,	DecompDataLondonMonthly$x,	DecompDataNorthEastMonthly$x,	DecompDataWestMidlandsRegionMonthly$x,	DecompDataEastMidlandsMonthly$x,	DecompDataSouthEastMonthly$x,	DecompDataSouthWestMonthly$x,	DecompDataEastofEnglandMonthly$x,	DecompDataNorthWestMonthly$x,	DecompDataYorkshireandtheHumberMonthly$x,	DecompDataEnglandandWalesMonthly$x,		
        main="Average house prices in various regions of the UK",
        col=colorToUse, ylab="")
#legend("topleft",legend=regions, col=colorToUse, lty=1, ncol=1, cex = 0.8)




