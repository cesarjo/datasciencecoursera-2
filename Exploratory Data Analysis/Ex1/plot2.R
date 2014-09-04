source("load.R")

plot2 <- function(data=NULL) {
  if(is.null(data))
    data <- load_dataset()
  #initialize the graphic device device, passing width and height as parameters
  png("plot2.png", width=400, height=400)
  #create the chart
  plot(data$Time, data$Global_active_power,
       type="l",
       xlab="",
       ylab="Global Active Power (kilowatts)")
  #close the device
  dev.off()
}