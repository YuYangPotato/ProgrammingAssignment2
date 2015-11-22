## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
        inverse <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setInverse <- function(inv) inverse <<- inv
        getInverse <- function() inverse
        list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}


## Write a short comment describing this function
## The following function calculates the inverse of the matrix created 
## with the above fucntion. 


cacheSolve <- function(x) {
        ## Return a matrix that is the inverse of 'x'
        inverseMatrix <- x$getInverse()
        if(!is.null(inverseMatrix)){
                message("getting matrix inverse")
                return(inverseMatrix)
        }
        data <- x$get()
        inverseMatrix <- solve(data)
        x$setInverse(inverseMatrix)
        inverseMatrix
        
}
