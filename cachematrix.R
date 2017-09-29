# makeCacheMatrix takes a matrix

makeCacheMatrix <- function(x = matrix()) {
  
  # initialize the m to NULL during the first call to makeCacheMatrix
  # this is needed because getinv() is called immediately after
  # the makeCacheMatrix funciton is constructed, without a call to setinv()
  # we know we must first calculate the inverse in cacheSolve.  
  m <- NULL
  set <- function(y) {
    # use the <<- operator to set the value of x
    x <<- y  
    # reset m to NULL since we are modifying the underlying
    # matrix and the cached value is no longer the valid 
    m <<- NULL 
  }
  # define function to get the value of the matrix
  get <- function() x
  
  # set the inverse of a matrix call by cacheSolve
  # << operator is used because value of m will be modified
  setinv <- function(inverse) m <<- inverse
  
  # get the inverse
  getinv <- function() m
  
  # return a list with four functions
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  
  # get the inverse of the matrix defined inside x.
  m <- x$getinv()
  # if we've already computed the inverse and stored it via setinv(),
  # and have not invalidated the cache by calling set(), return the cached
  # version of x
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  # else cache was empty. We need to calculate it, cache it, and then return it.
  data <- x$get()
  # m<-as.matrix((1/ det(data)) * solve(data))
  # claculate the inverse of a matrix
  m <- as.matrix(solve(data))
  
  # cache the result 
  x$setinv(m)
  #return the result 
  m
}
