## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
         innv  <- NULL
  set <- function(y) 
  {
    x <<- y
    innv <<- NULL
  }
  get <- function() 
  {
    x
  }
  
  setinverse <- function(inv)
  { 
    innv <<- inv
  }
  getinverse <- function()
  {
    innv
  } 
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
          innv <- x$getinverse()
  
  if(!is.null(innv)) 
  {
    return(innv)
  }
  
  data <- x$get()
  inverse <- solve(data, ...)
  x$setinverse(innv)
  innv
        ## Return a matrix that is the inverse of 'x'
}
