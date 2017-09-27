setwd( "C:/Users/Bushra/Desktop/coursera")

corr <- function(directory, threshold = 0) {
  
  files <- list.files(directory, full.names=TRUE)
  dat <- data.frame()
  id = 1:332
  
  corr_res = numeric()
  nobs = numeric()
  j <- 1
   for(i in id)
  {
    dat <- rbind(read.csv(files[i]))
    dat <- dat[complete.cases(dat), ]
    nobs = sum(complete.cases(dat))
    if (nobs > threshold){
      corr_res_temp <- cor(dat[,c("nitrate", "sulfate")])
      corr_res[j] <-  corr_res_temp[1, 2]
      j <- j+1
    }
    
  }
  #print(dat)
  #dat_corr <- data.frame(corr)
  return(corr_res)
  
}