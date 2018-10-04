#Trend and Cycle decompositions
DecompDataEngland=hpfilter(LocationTableTS$England,freq=NULL,type=c("lambda","frequency"),drift=TRUE)
DecompDataWales=hpfilter(LocationTableTS$Wales,freq=NULL,type=c("lambda","frequency"),drift=TRUE)
DecompDataLondon=hpfilter(LocationTableTS$London,freq=NULL,type=c("lambda","frequency"),drift=TRUE)
DecompDataNorthEast=hpfilter(LocationTableTS$`North East`,freq=NULL,type=c("lambda","frequency"),drift=TRUE)
DecompDataWestMidlandsRegion=hpfilter(LocationTableTS$`West Midlands Region`,freq=NULL,type=c("lambda","frequency"),drift=TRUE)
DecompDataEastMidlands=hpfilter(LocationTableTS$`East Midlands`,freq=NULL,type=c("lambda","frequency"),drift=TRUE)
DecompDataSouthEast=hpfilter(LocationTableTS$`South East`,freq=NULL,type=c("lambda","frequency"),drift=TRUE)
DecompDataSouthWest=hpfilter(LocationTableTS$`South West`,freq=NULL,type=c("lambda","frequency"),drift=TRUE)
DecompDataEastofEngland=hpfilter(LocationTableTS$`East of England`,freq=NULL,type=c("lambda","frequency"),drift=TRUE)
DecompDataNorthWest=hpfilter(LocationTableTS$`North West`,freq=NULL,type=c("lambda","frequency"),drift=TRUE)
DecompDataYorkshireandtheHumber=hpfilter(LocationTableTS$`Yorkshire and the Humber`,freq=NULL,type=c("lambda","frequency"),drift=TRUE)
DecompDataEnglandandWales=hpfilter(LocationTableTS$`England and Wales`,freq=NULL,type=c("lambda","frequency"),drift=TRUE)


