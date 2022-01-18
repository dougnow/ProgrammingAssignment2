## This my second programming assigment.
## first it requires coding a R function 
## is able to cache potentially time-consuming computations

makeCacheMatrix <- function(x = matrix()) {

        ## first try to get the value of the inverse, defining variables
        inv <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
     get <- function() x
     setInverse <- function(inverse) inv <<- inverse
     getInverse <- function() inv
     list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse) ##get the value of the inverse
}


## This function describes the way for computing or returning 
## the inverse matrix that is requires.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getInverse()
        if(!is.null(inv)) {
                message("getting cached data")
                return(m)
        }
        matx <- x$get()
        inv <- Inverse(matx, ...)
        x$setInverse(inv)
        inv
}

# finally try to test your function if it run well according what are 
## your expecting
