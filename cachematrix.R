## This function operates for caching the inverse of a matrix in an efficient and fast way
## 

## makeCacheMatrix() takes a matrix as its parameter and returns
## a List of functions for manipulating the matrix and its
## cached inversed, which is set or retrieved by cacheSolve()

makeCacheMatrix <- function(x = matrix()) {
  ## clear cache and create set/get functions
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinv <- function(xinv) inv <<- xinv
  getinv <- function() inv
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
  
}


## cacheSolve() takes a matrix cache (produced by makeCacheMatrix()) and
## returns either a cached inverse or a newly calculated one

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inv <- x$getinv()
  if (!is.null(inv)) {
    message("getting cached inverse")
    return(inv)
  }
  message("calculating inverse")
  mat <- x$get()
  inv <- solve(mat, ...)
  x$setinv(inv)
  inv
}