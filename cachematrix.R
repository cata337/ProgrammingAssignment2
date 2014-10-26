## Put comments here that give an overall description of what your
## functions do

## Creeating a "special matrix"


makeCacheMatrix <- function(x = matrix()) {
    k <- NULL
    set <- function(y) {
        x <<- y
        k <<- NULL
    }
    get <- function() x
    setreverse <- function(reverse) k <<- reverse
    getreverse <- function() k
    list(set = set, get = get,
         setreverse = setreverse,
         getreverse = getreverse)
}


## Inversing of the "special matrix"

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    
    g <- x$getreverse()
    if(!is.null(g)) {
        message("getting cached data")
        return(g)
    }
    data <- x$get()
    g <- solve(data)
    x$setreverse(g)
    g
}
