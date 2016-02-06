## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	xinv<-NULL
	set <- function(y){
		x <<- y
		xinv <<- NULL
	}								##set the matrix
	get <- function() x					        ##get the matrix
	setinverse <- function(solve) xinv <<- solve			##set the inverse matrix
	getinverse <- function() xinv					##get the inverse of matrix
	list(set=set, get=get,
		setinverse=setinverse,
		getinverse=getinverse)	
}


## Write a short comment describing this function
## function calculate inverse matrix. If it was already calculated, return it from cashe data
cacheSolve <- function(x, ...) {
       xinv <- x$getinverse()
       if (!is.null(xinv)) {
		message("getting cashe data.")
		return(xinv)
	}
       data <- x$get()
       xinv <-solve(data,...)
       x$setinverse(xinv)
       xinv	
}
