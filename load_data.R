# To load the dataset.

file <- "~/Desktop/Exploratory Data Analysis/Projects/1/Data/household_power_consumption.txt"
data <- read.table(file,
                   header = TRUE,
                   sep = ";",
                   colClasses = c("character", "character", rep("numeric",7)),
                   na = "?")
dim(data) 
attach(data)

# To get the data of 2 days.

subsetting <- Date == "1/2/2007" | Date == "2/2/2007"
NewDat <- data[subsetting, ]
attach(NewDat)
x <- paste(Date, Time)
NewDat$DateTime <- strptime(x, "%d/%m/%Y %H:%M:%S")
rownames(NewDat) <- 1:nrow(NewDat)
dim(NewDat) # 2880   10
attach(NewDat)
