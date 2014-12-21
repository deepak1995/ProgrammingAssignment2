## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# this function works like a class, it creates a list
# that contains 4 member functions: set, get, setInv
# and getInv.
makeCacheMatrix <- function(x = matrix()) {
      xinv <- NULL
      set <- function(y) {
	  x <<- y
	  xinv <<- NULL 
      }

      get <- function() x # return the input matrix
      setInv <- function(inv) xinv <<- inv # set the inversed matrix
      getInv <- function() xinv # return the inversed matrix

      list(set = set, get = get,
	       setInv = setInv,
	       getInv = getInv)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
      m <- x$getInv() 
      if(!is.null(m)) { 
	  message("getting cached data")
	  return(m)
      }
      data <- x$get() 
      m <- solve(data)
      x$setInv(m)
      m
}
