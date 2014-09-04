source("load.R")

plot1 <- function(data=NULL) {
  #check if the parameter is null, load the data from the common function
  if(is.null(data))
    data <- load_dataset()
  #initialize the graphic device device, passing width and height as parameters
  png("plot1.png", width=400, height=400)
  #create the histogram
  hist(data$Global_active_power,main="Global Active Power",col="red",xlab="Global Active Power (kilowatts)",ylab="Frequency")
  #close the device
  dev.off()
}