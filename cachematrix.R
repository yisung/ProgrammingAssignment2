## Put comments here that give an overall description of what your
## functions do

#These two functions generates inverse matrix of the input and store it to 
#a temporary storage m.  Therefore, the same inverse matrix can be retrieved from m
#immediately without re-calculating

## Write a short comment describing this function
# This function creates a list of three functions:
# 1. Get the matrix 
# 2. Assign inverse matrix to m 
# 3.Get the inverse matrix from m
# m is to store result

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL                             #initiating the storage m

  get <- function() x                  
  set_inverse <- function(inverse) m <<- inverse  
  get_inverse <- function() m               
  
  list(
    get = get,
    set_inverse = set_inverse,
    get_inverse = get_inverse)

}


## Write a short comment describing this function
# This function checks if m has the inverse matrix
# If not, it calculates the result and store it in m

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$get_inverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$set_inverse(m)
  m
}
