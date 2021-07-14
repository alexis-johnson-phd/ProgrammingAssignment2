## Put comments here that give an overall description of what your
## functions do

## This function sets and gets a matrix and sets (in the cache) and gets the matrix inverse

makeCacheMatrix <- function(x = matrix()) {
      inv <- NULL
      set <- function(y){
            x <<- y
            i <<- NULL
      }
      get <- function(){
            x
      }
      setinv <- function(inv){
            i<<- inv
      }
      getinv <- function(){
            i
      }
      list(set = set, get = get,
           setinv = setinv,
           getinv = getinv)
}


## This function returns a matrix that is the inverse of x.

cacheSolve <- function(x, ...) {
             i <- x$getinv()
      if(!is.null(i)) {
            message("getting cached data")
            return(i)
      }
      data <- x$get()
      i <- solve(data, ...)
      x$setinv(i)
      i
}
