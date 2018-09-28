#Seasonally adjusted time series
#Realestate1995toPresentSA.R
library(mFilter)
library(TTR)
library(forecast)
library(xtable)

#Data ends at May 2017
# Average Prices Seasonally Adjusted
AveragePriceSeasonallyAdjusted <- scan(file = "/home/jon/Documents/Minvera Statistical Consulting/Data/Average-price-seasonally-adjusted-2018-07.csv")




#Converte each city to a time series
# Cities: London
AveragePriceSeasonallyAdjustedTS = ts(AveragePriceSeasonallyAdjusted, frequency = 12, start = c(2008,1))


#Time series plot for each city
# Cities: London
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




