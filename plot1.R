source('loadfilterdata.R')
filterdata  <-  loadFilteredData()       
filterdata$Global_active_power <- as.numeric(as.character(filterdata$Global_active_power))
filterdata$Global_reactive_power <- as.numeric(as.character(filterdata$Global_reactive_power))
filterdata$Voltage <- as.numeric(as.character(filterdata$Voltage))
filterdata$Global_intensity <- as.numeric(as.character(filterdata$Global_intensity))
filterdata$dt <- paste(filterdata$Date, filterdata$Time)
filterdata$dt <- strptime(filterdata$dt, "%d/%m/%Y %H:%M:%S")
png(file = "plot1.png", width = 480, height = 480)
hist(filterdata$Global_active_power, main="Global Active Power", col="red", xlab="Global Active Power (kilowatts)")
dev.off


