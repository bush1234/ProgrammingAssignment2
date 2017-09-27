getwd()
setwd( "C:/Users/Bushra/Desktop/coursera")



pollutantmean <- function( directory, pollutant, id = 1:332 ){
  
  filenames <- list.files(directory, pattern="*.csv", full.names=TRUE)
#  ldf <- lapply(filenames, read.csv)
  complete_data <- data.frame()
  for (i in id)
  {
    dataset <- rbind(complete_data, read.csv(filenames[i]))
  }
  
  m <- mean(dataset[, pollutant], na.rm = TRUE)
  print(m)
}

pollutantmean <- function(directory, pollutant, id = 1:332) {
  files <- list.files(directory, full.names=TRUE)
  dat <- data.frame()
  
  for(i in id)
  {
    dat <- rbind(dat, read.csv(files[i]))
  }
  
  mean_data <- mean(dat[,pollutant], na.rm = TRUE)
  round(mean_data, digits=3)
}

