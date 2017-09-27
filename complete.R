setwd( "C:/Users/Bushra/Desktop/coursera")

complete <- function(directory, id = 1:332) {
  files <- list.files(directory, full.names=TRUE)
  dat <- data.frame()
  
   nobs = numeric()
   for(i in id)
  {
    dat <- rbind(read.csv(files[i]))
    nobs =c(nobs, sum(complete.cases(dat)))
    
  }
  
  dat_res <- data.frame(id,nobs=nobs)
  return(dat_res)

}