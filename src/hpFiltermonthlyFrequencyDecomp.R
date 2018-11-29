#Trend and Cycle decompositions
Lambda = 129600
DecompDataEnglandMonthly=hpfilter(LocationTableTS$England,freq=Lambda,type=c("lambda","frequency"),drift=FALSE)
DecompDataWalesMonthly=hpfilter(LocationTableTS$Wales,freq=Lambda,type=c("lambda","frequency"),drift=FALSE)
DecompDataLondonMonthly=hpfilter(LocationTableTS$London,freq=Lambda,type=c("lambda","frequency"),drift=FALSE)
DecompDataNorthEastMonthly=hpfilter(LocationTableTS$`North East`,freq=Lambda,type=c("lambda","frequency"),drift=FALSE)
DecompDataWestMidlandsRegionMonthly=hpfilter(LocationTableTS$`West Midlands Region`,freq=Lambda,type=c("lambda","frequency"),drift=FALSE)
DecompDataEastMidlandsMonthly=hpfilter(LocationTableTS$`East Midlands`,freq=Lambda,type=c("lambda","frequency"),drift=FALSE)
DecompDataSouthEastMonthly=hpfilter(LocationTableTS$`South East`,freq=Lambda,type=c("lambda","frequency"),drift=FALSE)
DecompDataSouthWestMonthly=hpfilter(LocationTableTS$`South West`,freq=Lambda,type=c("lambda","frequency"),drift=FALSE)
DecompDataEastofEnglandMonthly=hpfilter(LocationTableTS$`East of England`,freq=Lambda,type=c("lambda","frequency"),drift=FALSE)
DecompDataNorthWestMonthly=hpfilter(LocationTableTS$`North West`,freq=Lambda,type=c("lambda","frequency"),drift=FALSE)
DecompDataYorkshireandtheHumberMonthly=hpfilter(LocationTableTS$`Yorkshire and the Humber`,freq=Lambda,type=c("lambda","frequency"),drift=FALSE)
DecompDataEnglandandWalesMonthly=hpfilter(LocationTableTS$`England and Wales`,freq=Lambda,type=c("lambda","frequency"),drift=FALSE)

