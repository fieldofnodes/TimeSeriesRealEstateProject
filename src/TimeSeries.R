library("TTR")
library("forecast")

#Data ends at June 2017
aveHousePrice <- scan(file = "/home/jon/Documents/Minvera Statistical Consulting/aveHousePrice.csv")
#Data ends at December 2017
aveHousePrice1 <- scan(file = "/home/jon/Documents/Minvera Statistical Consulting/aveHousePrice1.csv")
aveHousePriceSeries = ts(aveHousePrice, frequency = 12, start = c(2012,6))
aveHousePriceSeries1 = ts(aveHousePrice1, frequency = 12, start = c(2012,6))
aveHousePriceSeries
plot.ts(aveHousePriceSeries)
plot.ts(aveHousePriceSeries1)





aveHousePriceComponents = decompose(aveHousePriceSeries)
aveHousePriceComponents1 = decompose(aveHousePriceSeries1)
plot(aveHousePriceComponents)
plot(aveHousePriceComponents1)

aveHousePriceForecasts <- HoltWinters(aveHousePriceSeries, beta=FALSE, gamma=FALSE)
aveHousePriceForecasts1 <- HoltWinters(aveHousePriceSeries1, beta=FALSE, gamma=FALSE)
plot(aveHousePriceForecasts)
plot(aveHousePriceForecasts1)

#Use this forecast to check on the future months
aveHousePriceForecastsFuture1 <- forecast(aveHousePriceForecasts1, h=6) 
plot(aveHousePriceForecastsFuture1)
aveHousePriceForecastsFuture1
