#Trend and Cycle decompositions
Lambda = 129600
DecompDataEnglandMonthly=hpfilter(LocationTableTS$England,freq=Lambda,type=c("lambda","frequency"),drift=TRUE)
DecompDataWalesMonthly=hpfilter(LocationTableTS$Wales,freq=Lambda,type=c("lambda","frequency"),drift=TRUE)
DecompDataLondonMonthly=hpfilter(LocationTableTS$London,freq=Lambda,type=c("lambda","frequency"),drift=TRUE)
DecompDataNorthEastMonthly=hpfilter(LocationTableTS$`North East`,freq=Lambda,type=c("lambda","frequency"),drift=TRUE)
DecompDataWestMidlandsRegionMonthly=hpfilter(LocationTableTS$`West Midlands Region`,freq=Lambda,type=c("lambda","frequency"),drift=TRUE)
DecompDataEastMidlandsMonthly=hpfilter(LocationTableTS$`East Midlands`,freq=Lambda,type=c("lambda","frequency"),drift=TRUE)
DecompDataSouthEastMonthly=hpfilter(LocationTableTS$`South East`,freq=Lambda,type=c("lambda","frequency"),drift=TRUE)
DecompDataSouthWestMonthly=hpfilter(LocationTableTS$`South West`,freq=Lambda,type=c("lambda","frequency"),drift=TRUE)
DecompDataEastofEnglandMonthly=hpfilter(LocationTableTS$`East of England`,freq=Lambda,type=c("lambda","frequency"),drift=TRUE)
DecompDataNorthWestMonthly=hpfilter(LocationTableTS$`North West`,freq=Lambda,type=c("lambda","frequency"),drift=TRUE)
DecompDataYorkshireandtheHumberMonthly=hpfilter(LocationTableTS$`Yorkshire and the Humber`,freq=Lambda,type=c("lambda","frequency"),drift=TRUE)
DecompDataEnglandandWalesMonthly=hpfilter(LocationTableTS$`England and Wales`,freq=Lambda,type=c("lambda","frequency"),drift=TRUE)

