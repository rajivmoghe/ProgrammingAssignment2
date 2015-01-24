## Put comments here that give an overall description of what your
## functions do
## makeCacheMatrix is a function that returns a list of functions
## Its puspose is to store a martix and a cached value of the inverse of the
## matrix. Contains the following functions:
## * setMatrix set the value of a matrix
## * getMatrix get the value of a matrix
## * cacheInverse get the cahced value (inverse of the matrix)
## * getInverse get the cahced value (inverse of the matrix)


## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

    cache <- NULL

    setMatrix <- function(newValue) {
        x <<- newValue
        cache <<- NULL
    }

    getMatrix <- function(){
        x
    }

    cacheInverse <- function(solve) {
        cache <<- solve
    }

    getInverse <- function() {
        cache
    }

    list(setMatrix = setMatrix, getMatrix = getMatrix, cacheInverse = cacheInverse, getInverse = getInverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

    inverse <- x$getInverse()

    if(!is.null(inverse)) {
        message("getting cached data")
        return(inverse)
    }

    data <- x$getMatrix()
    inverse <- solve(data)
    x$cacheInverse(inverse)

    inverse
}
