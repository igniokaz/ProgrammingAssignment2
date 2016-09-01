## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Setting up the environment parameters
makeCacheMatrix <- function(x = matrix()) {
    m<-NULL
    set<-function(y){
        x<<- y
        m<<-NULL
    }
    get<-function()x
    solvematrix<-function(solve) m<<-solve
    getmatrix<- function()m
    list(set=set, get=get, solvematrix=solvematrix, getmatrix=getmatrix)
}


## Write a short comment describing this function
## Function returns a matrix that is inverse of x
cacheSolve <- function(x, ...) {
    m <- x$getmatrix()
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$solvematrix(m)
    m
}
