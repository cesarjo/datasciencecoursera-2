# common source file to load the data file
date_time <- function(date, time) {
  return (strptime(paste(date, time), "%d/%m/%Y %H:%M:%S"))
}

load_dataset <- function() {
  filename <- "household_power_consumption.txt"
  df <- read.table(filename,
                   header=TRUE,
                   sep=";",
                   colClasses=c("character", "character", rep("numeric",7)),
                   na="?")
  # convert date and time variables to Date/Time class
  
  df$Time <- strptime(paste(df$Date, df$Time), "%d/%m/%Y %H:%M:%S")
  df$Date <- as.Date(df$Date, "%d/%m/%Y")
  #filter for dates between 2007-02-01 and 2007-02-02
  filter <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")
  df <- subset(df, Date %in% filter)
  
  return(df)
  
}