library(lubridate)

## Download and unzip data if necessary.
if (!file.exists("household_power_consumption.txt")) {
  download.file(url="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",
  destfile="household_power_consumption.zip")
  unzip(zipfile="household_power_consumption.zip")
}

## Read table. Name columns. Combine date and time.
data <- read.table("household_power_consumption.txt", sep=";",
  comment.char="", stringsAsFactors=FALSE, na.strings=c("?"), skip=66637, nrows=2880)
names(data) <- names(read.table("household_power_consumption.txt", sep=";", header=T, nrows=1))
data$DateTime <- dmy_hms(paste0(data[,1], " ", data[,2]))