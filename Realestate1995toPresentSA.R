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

#Creating the Trend and Cycle components using the HP filter model
source("TrendAndCycleDecompData.R")

#Plotting the Trend and Cycle components of each regions in the UK in two plots - 1 for the series,trend and one for the cycle 
source("CycleTrendPlot.R")

