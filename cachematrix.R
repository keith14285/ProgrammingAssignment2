## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## this is taken from the "mean" function example, but I have edited it
## so now it calculates inverse instead.

makeCacheMatrix <- function(x = matrix()) {
  ## Initialisation
  inv <- NULL
  ## Set matrix
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  ## Get matrix
  get <- function() x
  ## Set inverse of matrix
  setinverse <- function(inverse) inv <<- inverse
  ## Get inverse of matrix
  getinverse <- function() inv
  ## This is a list of the methods
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function

# This is taken from the "mean" example, but I have edited it so it references
# the inverse calculation

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getinverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  ## Calculate inverse
  inv <- solve(data, ...)
  ## Set inverse
  x$setinverse(inv)
  ## Return matrix
  inv
}
