#Trend and Cycle decompositions
Lambda = 129600
DecompDataEngland=hpfilter(LocationTableTS$England,freq=Lambda,type=c("lambda","frequency"),drift=TRUE)
DecompDataWales=hpfilter(LocationTableTS$Wales,freq=Lambda,type=c("lambda","frequency"),drift=TRUE)
DecompDataLondon=hpfilter(LocationTableTS$London,freq=Lambda,type=c("lambda","frequency"),drift=TRUE)
DecompDataNorthEast=hpfilter(LocationTableTS$`North East`,freq=Lambda,type=c("lambda","frequency"),drift=TRUE)
DecompDataWestMidlandsRegion=hpfilter(LocationTableTS$`West Midlands Region`,freq=Lambda,type=c("lambda","frequency"),drift=TRUE)
DecompDataEastMidlands=hpfilter(LocationTableTS$`East Midlands`,freq=Lambda,type=c("lambda","frequency"),drift=TRUE)
DecompDataSouthEast=hpfilter(LocationTableTS$`South East`,freq=Lambda,type=c("lambda","frequency"),drift=TRUE)
DecompDataSouthWest=hpfilter(LocationTableTS$`South West`,freq=Lambda,type=c("lambda","frequency"),drift=TRUE)
DecompDataEastofEngland=hpfilter(LocationTableTS$`East of England`,freq=Lambda,type=c("lambda","frequency"),drift=TRUE)
DecompDataNorthWest=hpfilter(LocationTableTS$`North West`,freq=Lambda,type=c("lambda","frequency"),drift=TRUE)
DecompDataYorkshireandtheHumber=hpfilter(LocationTableTS$`Yorkshire and the Humber`,freq=Lambda,type=c("lambda","frequency"),drift=TRUE)
DecompDataEnglandandWales=hpfilter(LocationTableTS$`England and Wales`,freq=Lambda,type=c("lambda","frequency"),drift=TRUE)


