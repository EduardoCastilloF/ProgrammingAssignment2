## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

    i <- NULL

    # Setting the matrix object and assigning it a value in a different environment
    set <- function(y) {
        x <<- y
        i <<- NULL
    }
    
    # Get the matrix
    get <- function() x
    
    # Setting the inverse and assigning it a value in a different environment
    seti <- function(solve) i <<- solve
    
    # getting the inverse
    geti <- function() i
    
    # Creates the object of the matrix
    list(set = set, get = get,
         seti = seti,
         geti = geti)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
    print(x)
    i <- x$geti()
    
    if(!is.null(i)) {
      
        message("getting cached data")
        return(i)
      
    }
    
    data <- x$get()
    
    i <- solve(data, ...)
    
    x$seti(i)
    
    i
    
}
