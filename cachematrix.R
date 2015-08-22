## cache solve makes a matrix cache
## that can be checked by
## subsequent computations
##
## make cache matrix makes a cache to be
## compared against
## follows example (make vector) from
## Programming Assignment 2 examples
##

makeCacheMatrix <- function(passed_data = matrix()) {
    inv_passed_data <- NULL ## clear before use
    set <- function(y) {
        passed_data <<- y ## assign outside of function
        inv_passed_data <<- NULL ## clear before use
    }
    get <- function() passed_data
    setinverse<- function(inverse) inv_passed_data <<-inverse
    getinverse <- function() inv_passed_data
    list(set = set, get = get, ## as in demo function
    setinverse = setinverse,
    getinverse = getinverse)
}


## cache solve function
## compares against cache

cacheSolve <- function(passed_data, ...) {
    
    ## Return a matrix that is the inverse of 'x'
    inv_x <- passed_data$getinverse()
    if (!is.null(inv_x)) {
        message("getting cached inverse matrix")
        return(inv_x)
    } else {
        inv_x <- solve(passed_data$get())
        passed_data$setinverse(inv_x)
        return(inv_x)
    }
}





