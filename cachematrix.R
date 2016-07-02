## Functions containing matrix logic while caching inverses.

## Create a special matrix which contains its inverse.

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    # if we update the matrix, void our cache
    set <- function(y) {
        x <<- y
        inv <<- NULL
    }
    get <- function() x
    setinverse <- function(newInverse) inv <<- newInverse
    getinverse <- function() inv
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}


## Given a matrix x,
## return its cached inverse or compute it then cache it.

cacheSolve <- function(x, ...) {
        inv <- x$getinverse()
        if(!is.null(inv)) {
            message("getting cached data")
            return(inv)
        }
        data <- x$get()
        inv <- solve(data, ...)
        x$setinverse(inv)
        inv
}