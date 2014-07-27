## These functions combined cache a matrix's inverse.

##mackeCacheMatrix creates a matrix that sets the value of the matrix, 
##gets the value of the inverse, sets the value of the inverse, 
##and gets the value of the inverse.

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setsolve<- function(solve) m <<- solve
        getsolve <- function() m
        list(set = set, get = get,
             setsolve = setsolve,
             getsolve = getsolve)
}


##cacheSolve calculates the value of the inverse of the matrix above
##after checking to see if it has already been calculated

cacheSolve <- function(x, ...) {
        m <- x$getsolve()
        if(!is.null(m)) {
                message("retrieving cached data")
                return(m)
        } else {
                m <- x$get()
                m <- solve(data, ...)
                x$setsolve(m)
                return(m) 
        }
        
}
