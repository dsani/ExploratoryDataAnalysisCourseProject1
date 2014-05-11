loadFilteredData  <-  function() {
  dataset <- read.csv("household_power_consumption.txt", sep=";")
  is.na(dataset) <- dataset=="?"
  filterdata <- dataset[which(dataset$Date=="1/2/2007" | dataset$Date=="2/2/2007"),] 
}

