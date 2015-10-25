## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        cachematx<-NULL
        set<-function(y){
            x<<-y
            cachematx<<-NULL
        }
        get<-function() x
        setmatrix<-function(solve) cachematx<<- solve
        getinverse<-function() cachematx
        list(set=set, get=get,
             setmatrix=setmatrix,
             getinverse=getinverse)
    }

## Write a short comment describing this function

cacheSolve <- function(x=matrix(), ...) {
        mat<-x$getinverse()
        if(!is.null(mat)){
            message("getting cached data")
            return(mat)
        }
        matrix<-x$get()
        mat<-solve(matrix, ...)
        x$setmatrix(mat)
        return(mat)
    }
