##To read the file downloaded.
##First row of the file contained variables thus header is true
##Glance of the file shows semicolon as separater
data <- read.table("C:/Users/pc/Desktop/Data Science Specialisation Course/Submissions/Course 4/Week 1/household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors = FALSE, dec=".")

##Subset-ing the data as per the dates
##Selecting only those rows which meet the dates criteria and all columns

subData <- data[which(data$Date %in% c("1/2/2007","2/2/2007")),]

##Concatenating Date and Time as character variable
##changing the class of Date and Time variable
datetime <- strptime(paste(subData$Date, subData$Time, sep=" "), "%d/%m/%Y %H:%M:%S")


#opened the png device with a name and suggested dimensions
png("plot2.png", width = 480, height = 480)

#Making a basic line plot
plot(datetime,as.numeric(subData$Global_active_power), type = "l", xlab = "", ylab = "Global Active Power(kilowatts)")

##Closing the PNG device
dev.off()