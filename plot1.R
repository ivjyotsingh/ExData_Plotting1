
##To read the file downloaded.
##First row of the file contained variables thus header is true
##Glance of the file shows semicolon as separater
data <- read.table("C:/Users/pc/Desktop/Data Science Specialisation Course/Submissions/Course 4/Week 1/household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors = FALSE, dec=".")

##Subsetting the data as per the dates
##Selecting only those rows which meet the dates criteria and all columns

subData <- data[which(data$Date %in% c("1/2/2007","2/2/2007")),]

#opened the png device with a name and suggested dimensions
png("plot1.png", width = 480, height = 480)

##Subset the data of Global Active power
##Convert it into numeric
##Plot a histogram with suggested attributes
hist(as.numeric(subData$Global_active_power), main = "Global Active Power", col = "red" , xlab ="Global Active Power(kilowatts)")


##Closing the PNG device
dev.off()