## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

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
        ## Return a matrix that is the inverse of 'x'
}
