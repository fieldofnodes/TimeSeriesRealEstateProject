#Data ends at May 2017
# Average Prices Seasonally Adjusted
Data <- read.csv(file = "Average-price-seasonally-adjusted-2018-07.csv", header = TRUE)
#Filter data per location
EnglandData = filter(Data, Region_Name == "England")
WalesData = filter(Data, Region_Name == "Wales")
LondonData = filter(Data, Region_Name == "London")
NorthEastData = filter(Data, Region_Name == "North East")
WestMidlandsRegionData = filter(Data, Region_Name == "West Midlands Region")
EastMidlandsData = filter(Data, Region_Name == "East Midlands")
SouthEastData = filter(Data, Region_Name == "South East")
SouthWestData = filter(Data, Region_Name == "South West")
EastofEnglandData = filter(Data, Region_Name == "East of England")
NorthWest = filter(Data, Region_Name == "North West")
YorkshireandTheHumberData = filter(Data, Region_Name == "Yorkshire and The Humber")
EnglandandWalesData = filter(Data, Region_Name == "England and Wales")
WalesData = filter(Data, Region_Name == "Wales")

#Create dataframe of regions
LocationTable = cbind.data.frame(EnglandData[,c(1,3)],WalesData[3], LondonData[3], NorthEastData[3], WestMidlandsRegionData[3], EastMidlandsData[3], SouthEastData[3], SouthWestData[3], EastofEnglandData[3], NorthWest[3], YorkshireandTheHumberData[3], EnglandandWalesData[3])
regions <- c("England", "Wales", "London", "North East", "West Midlands Region", "East Midlands", "South East", "South West", "East of England", "North West", "Yorkshire and the Humber", "England and Wales")
colnames(LocationTable) = c("Date", regions)


