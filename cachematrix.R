## Put comments here that give an overall description of what your
## These function take in a matrix and calculate its inverse. The inverse is
## stored to memory, so that next time you need the inverse, you don`t need to
## calculate it, you can simply retrieve

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
    message("Storing matrix")
  }
  
  get <- function()
    {
    message("Return matrix")
    x     
  }
  
  setsolve <- function(solve){
    message("Setting matrix inversion to repository")
    m <<- solve
  } 
  
  getsolve <- function()
    {
    message("Checking for existing matrix inversion")
    m
  }
  
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m<-x$getsolve()
  if(!is.null(m)) {
    message("Cache data found!!")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setsolve(m)
  m
}
