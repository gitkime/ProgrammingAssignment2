## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#
# There are 4 methode to build this funtion
# 1. set a matrix
# 2. get the matrix
# 3. set the inverse of the matrix
# 4. get the inverse of the cached matrix
#
# a lsit of the function are returned
##########################################
makeCacheMatrix <- function(x = matrix()) {
# set return m is Null
    m <- NULL
# set function of matrix
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
# get function of matrix
    get <- function() x
# setInv function of matrix
    setInv <- function(inverse) m <<- inverse
# get function of matrix
    getInv <- function() m
# return a list of functions
    list(set = set, get = get,
         setInv = setInv,
         getInv = getInv)
}


## Write a short comment describing this function

cacheSolve <- function(x=matrix(), ...) {
## Return a matrix that is the inverse of 'x'
# count the inverse of the matrix returned makeCachematrix    
    m<-x$getInv()
# if tge inverse is counted, get m from cache    
    if(!is.null(m)){
        message("getting cached data")
        return(m)
    }
    m <- solve(x$get())
# set inverse for x in same function
    x$setInv(m)
# return m
    m
}
