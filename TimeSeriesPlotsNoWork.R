par(las = 1)
par(mar = c(4.0, 5.5, 3.0, 1.0), mgp = c(4, 1, 0))
ts.plot(
  LocationTableTS$England,
  LocationTableTS$Wales,
  LocationTableTS$London,
  LocationTableTS$`North East`,
  LocationTableTS$`West Midlands Region`,
  LocationTableTS$`East Midlands`,
  LocationTableTS$`South East`,
  LocationTableTS$`South West`,
  LocationTableTS$`East of England`,
  LocationTableTS$`North West`,
  LocationTableTS$`Yorkshire and the Humber`,
  LocationTableTS$`England and Wales`,
        gpars=list(main = "Average Prices in 12 regions of the UK", xlab="", ylab="", col=1:12), las = 1)
legend("topleft", legend = regions, col = 1:12, lty = 1, cex=0.8,
       box.lty=0)
title(xlab="Time in years", line=2, cex.lab=1.2)
title(ylab="Average Prices (Seasonally Asjusted)", line=4, cex.lab=1.2)



