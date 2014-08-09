pollutantmean <- function(directory, pollutant, id = 1:332) {
	directory=c(getwd())
	ResultData = numeric()
		for (i in rep(id)) {
			RawData = read.csv(paste(directory,"/",sprintf("%03d",i),".csv", sep = ""))
			ResultData = c(ResultData, RawData[[pollutant]])
}
	ResultData=round(mean(ResultData,na.rm=TRUE),digits=3)
	return(ResultData)
}

# Output
# > pollutantmean("specdata","sulfate",1:10)
# [1] 4.064
# > pollutantmean("specdata", "nitrate", 70:72)
# [1] 1.706
# > pollutantmean("specdata", "nitrate", 23)
# [1] 1.281
