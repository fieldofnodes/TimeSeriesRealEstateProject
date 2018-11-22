library(mFilter)
library(TTR)
library(forecast)
library(xtable)

#Data ends at May 2017
# Cities: London
LondonFlatPercentChange <- scan(file = "/home/jon/Documents/Minvera Statistical Consulting/Data/LondonPC.csv")
# Cities: City of Glasgow
GlasgowFlatPercentChange <- scan(file = "/home/jon/Documents/Minvera Statistical Consulting/Data/GlasgowPC.csv")
# Cities: Manchester
ManchesterFlatPercentChange <- scan(file = "/home/jon/Documents/Minvera Statistical Consulting/Data/ManchesterPC.csv")
#Cities: West Midlands	
WestMidlandsFlatPercentChange <- scan(file = "/home/jon/Documents/Minvera Statistical Consulting/Data/WestMidlandsPC.csv")
#Cities: West Yorkshire
WestYorkshireFlatPercentChange <- scan(file = "/home/jon/Documents/Minvera Statistical Consulting/Data/WestYorkshirePC.csv")




#Converte each city to a time series
# Cities: London
LondonFlatPercentChangeSeries = ts(LondonFlatPercentChange, frequency = 12, start = c(2008,1))
# Cities: City of Glasgow
GlasgowFlatPercentChangeSeries = ts(GlasgowFlatPercentChange, frequency = 12, start = c(2008,1))
# Cities: Manchester
ManchesterFlatPercentChangeSeries = ts(ManchesterFlatPercentChange, frequency = 12, start = c(2008,1))
#Cities: West Midlands	
WestMidlandsFlatPercentChangeSeries = ts(WestMidlandsFlatPercentChange, frequency = 12, start = c(2008,1))
#Cities: West Yorkshire
WestYorkshireFlatPercentChangeSeries = ts(WestYorkshireFlatPercentChange, frequency = 12, start = c(2008,1))



#Time series plot for each city
# Cities: London
png(filename="/home/jon/Documents/Minvera Statistical Consulting/Plots/TIme Series/LondonTSPlot.png")
LondonTSPlot = plot.ts(LondonFlatPercentChangeSeries, main = "Monthly Percentage Change London", ylab = "Monthly Percent Change", xlab = "Monthly Time")
# Cities: City of Glasgow
dev.off()
png(filename="/home/jon/Documents/Minvera Statistical Consulting/Plots/TIme Series/GlasgowTSPlot.png")
GlasgowTSPlot = plot.ts(GlasgowFlatPercentChangeSeries, main = "Monthly Percentage Change City of Glasgow", ylab = "Monthly Percent Change", xlab = "Monthly Time")
dev.off()
# Cities: Manchester
png(filename="/home/jon/Documents/Minvera Statistical Consulting/Plots/TIme Series/ManchesterTSPlot.png")
ManchesterTSPlot = plot.ts(ManchesterFlatPercentChangeSeries, main = "Monthly Percentage Change Manchester", ylab = "Monthly Percent Change", xlab = "Monthly Time")
dev.off()
#Cities: West Midlands
png(filename="/home/jon/Documents/Minvera Statistical Consulting/Plots/TIme Series/WestMidlandsTSPlot.png")
WestMidlandsTSPlot = plot.ts(WestMidlandsFlatPercentChangeSeries, main = "Monthly Percentage Change West Midlands", ylab = "Monthly Percent Change", xlab = "Monthly Time")
dev.off()
#Cities: West Yorkshire
png(filename="/home/jon/Documents/Minvera Statistical Consulting/Plots/TIme Series/WestYorkshireTSPlot.png")
WestYorkshireTSPlot = plot.ts(WestYorkshireFlatPercentChangeSeries, main = "Monthly Percentage Change West Yorkshire", ylab = "Monthly Percent Change", xlab = "Monthly Time")
dev.off()





#Basic Decompose for each city
# Cities: London
png(filename="/home/jon/Documents/Minvera Statistical Consulting/Plots/Basic Decomposition/LondonFlatPercentChangeComponentsPlot.png")
LondonFlatPercentChangeComponents = decompose(LondonFlatPercentChangeSeries)
LondonFlatPercentChangeComponentsPlot = plot(LondonFlatPercentChangeComponents)
dev.off()
# Cities: City of Glasgow
png(filename="/home/jon/Documents/Minvera Statistical Consulting/Plots/Basic Decomposition/GlasgowFlatPercentChangeComponentsPlot.png")
GlasgowFlatPercentChangeComponents = decompose(GlasgowFlatPercentChangeSeries)
GlasgowFlatPercentChangeComponentsPlot = plot(GlasgowFlatPercentChangeComponents)
dev.off()
# Cities: Manchester
png(filename="/home/jon/Documents/Minvera Statistical Consulting/Plots/Basic Decomposition/ManchesterFlatPercentChangeComponentsPlot.png")
ManchesterFlatPercentChangeComponents = decompose(ManchesterFlatPercentChangeSeries)
ManchesterFlatPercentChangeComponentsPlot = plot(ManchesterFlatPercentChangeComponents)
dev.off()
#Cities: West Midlands
png(filename="/home/jon/Documents/Minvera Statistical Consulting/Plots/Basic Decomposition/WestMidlandsFlatPercentChangeComponentsPlot.png")
WestMidlandsFlatPercentChangeComponents = decompose(WestMidlandsFlatPercentChangeSeries)
WestMidlandsFlatPercentChangeComponentsPlot = plot(WestMidlandsFlatPercentChangeComponents)
dev.off()
#Cities: West Yorkshire
png(filename="/home/jon/Documents/Minvera Statistical Consulting/Plots/Basic Decomposition/WestYorkshireFlatPercentChangeComponentsPlot.png")
WestYorkshireFlatPercentChangeComponents = decompose(WestYorkshireFlatPercentChangeSeries)
WestYorkshireFlatPercentChangeComponentsPlot = plot(WestYorkshireFlatPercentChangeComponents)
dev.off()



#STL Decomposition for each city
# Cities: London
png(filename = "/home/jon/Documents/Minvera Statistical Consulting/Plots/STL Plots/LondonPercentChangeSTLDecompositionPlot.png")
LondonPercentChangeSTLDecomposition = (stl(LondonFlatPercentChangeSeries, s.window = 7, t.window = 50, t.jump = 1))
LondonPercentChangeSTLDecompositionPlot = plot(LondonPercentChangeSTLDecomposition)
dev.off()
# Cities: City of Glasgow
png(filename = "/home/jon/Documents/Minvera Statistical Consulting/Plots/STL Plots/GlasgowPercentChangeSTLDecompositionPlot.png")
GlasgowPercentChangeSTLDecomposition = (stl(GlasgowFlatPercentChangeSeries, s.window = 7, t.window = 50, t.jump = 1))
GlasgowPercentChangeSTLDecompositionPlot = plot(GlasgowPercentChangeSTLDecomposition)
dev.off()
# Cities: Manchester
png(filename = "/home/jon/Documents/Minvera Statistical Consulting/Plots/STL Plots/ManchesterPercentChangeSTLDecompositionPlot.png")
ManchesterPercentChangeSTLDecomposition = (stl(ManchesterFlatPercentChangeSeries, s.window = 7, t.window = 50, t.jump = 1))
ManchesterPercentChangeSTLDecompositionPlot = plot(ManchesterPercentChangeSTLDecomposition)
dev.off()
#Cities: West Midlands
png(filename = "/home/jon/Documents/Minvera Statistical Consulting/Plots/STL Plots/WestMidlandsPercentChangeSTLDecompositionPlot.png")
WestMidlandsPercentChangeSTLDecomposition = (stl(WestMidlandsFlatPercentChangeSeries, s.window = 7, t.window = 50, t.jump = 1))
WestMidlandsPercentChangeSTLDecompositionPlot = plot(WestMidlandsPercentChangeSTLDecomposition)
dev.off()
#Cities: West Yorkshire
png(filename = "/home/jon/Documents/Minvera Statistical Consulting/Plots/STL Plots/WestYorkshirePercentChangeSTLDecompositionPlot.png")
WestYorkshirePercentChangeSTLDecomposition = (stl(WestYorkshireFlatPercentChangeSeries, s.window = 7, t.window = 50, t.jump = 1))
WestYorkshirePercentChangeSTLDecompositionPlot = plot(WestYorkshirePercentChangeSTLDecomposition)
dev.off()




