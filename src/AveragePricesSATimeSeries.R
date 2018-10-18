LocationTableTS <- lapply(LocationTable, function(x) ts(x, start = c(1995,1), frequency = 12)) 
class(LocationTableTS [[1]])
