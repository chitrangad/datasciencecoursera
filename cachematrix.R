## functions to implement Matrix inversion by caching the inverse - Chitrangad Singh

## Function to create a matrix object that can cache its inverse. The function performs following:
# 1. set the value of the matrix
# 2. get the value of the matrix
# 3. set the value of inverse of the matrix
# 4. get the value of inverse of the matrix

makeCacheMatrix <- function(x = matrix()) 
  {
    m <- NULL
    set <- function(y = matrix()) 
      {
        x <<- y
        m <<- NULL
      }
    get <- function() x
    setmatrix <- function(matrix) m <<- matrix
    getmatrix <- function() m
    list(set = set, get = get, setmatrix = setmatrix, getmatrix = getmatrix)

  }


## Function to compute the inverse of the matrix returned by makeCacheMatrix function. 
#The input to the function is an invertible matrix

cacheSolve <- function(x, ...) 
  {
    m <- x$getmatrix()
    if(!is.null(m)) 
      {
        message("getting cached data")
        return(m)
      }
    data <- x$get()
    m <- solve(data)
    x$setmatrix(m)
    m
    ## Return a matrix that is the inverse of 'x'
}
