## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## According to the assignment, first function creates a list with a function to
## 1) Set matrix value
## 2) Get matrix value
## 3) Set inverse matrix
## 4) Get inverse matrix


## Second function is set up to either bring up the inverse value (if cached)
## or to calculate it, if not found in case


## FIRST FUNCTION

makeCacheMatrix <- function(x = matrix()) {

  
        inv <- NULL
        set <-function(y)
        {
             x <<- y
             inv <<- NULL
        }
        
        
        get <- function() x
        setinverse <- function(inverse) inv <<- inverse
        getinverse <- function() inv
        
        list(set = set,
             get = get,
             setinverse = setinverse,
             getinverse = getinverse)

}


## Write a short comment describing this function

## SECOND FUNCTION

## 'cachesSolve ' is as indicated in assignment, adjusted to consider
## calculation of inverse matrix rather than numeric mean.


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
     inv <- x$getinverse()
     
     if (!is.null(inv))
     {
         message("getting cached data")
         return(inv)
     }
     
     mat <- x$get()
     inv <- solve(mat, ...)
     inv
     
}
