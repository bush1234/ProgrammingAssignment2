setwd( "C:/Users/Bushra/Desktop/coursera")

A <- matrix( c(0, -3, -2,
                1,-4, -2,
               -3, 4,  1), nrow=3, byrow=TRUE)

#det_res <- 1/ det(A)
#  det_res * solve(A)
#matrix_inv<-as.matrix(det_res * solve(A))

# matrix inverse formula (1/ det(A)) * solve(A)
matrix_inv<-as.matrix((1/ det(A)) * solve(A))

#function for calculating matrix inverse 
matrix_inv <- function(matrix){
  
  matrix_inv<-as.matrix((1/ det(A)) * solve(A))
  return(matrix_inv)
}

