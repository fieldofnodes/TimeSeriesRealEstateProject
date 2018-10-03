#Run this line for mac
#Set the working directory
setwd("~/Documents/R Projects/TimeSeriesRealEstateProject")

#Run this line for ubuntu
#Set the working directory
setwd("/home/jon/Documents/Minvera Statistical Consulting/Real Estate Bulletin/TimeSeriesRealEstateProject")

#input packages needed to run script
source("packagestoUse.R")

#input data, create dataframe
source("AveragePricesSADataFrame.R")

#Create time series data
source("AveragePricesSATimeSeries.R")

#Create and input plot work
source("TimeSeriesPlotsNoWork.R")

 


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




