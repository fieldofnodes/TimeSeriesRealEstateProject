library(mFilter)
library(TTR)
library(forecast)
library(xtable)
library(dplyr)
library(ggplot2)
library(lubridate)
library(zoo)
library(graphics)
require(graphics)
library(xts)
require(zoo)
library(grDevices)
require(grDevices)

#Sorting colours
library(RColorBrewer)
qual_col_pals = brewer.pal.info[brewer.pal.info$category == 'qual',]
col_vector = unlist(mapply(brewer.pal, qual_col_pals$maxcolors, rownames(qual_col_pals)))
DistincColours = function(x){
  sample(col_vector, x)
}



