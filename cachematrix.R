## Put comments here that give an overall description of what your
## functions do

        #Caching the inverse of any matrix we input in our 
        #makeCacheMatrix function.

## Write a short comment describing this function

        #also cache the inverse of that matrix.

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
        x <<- y
        m <<- NULL
        get <- function() x
        setinverse <- function(inverse) m <<- inverse
        getinverse <- function() m
        list(set = set, get = get,
                setmean = setmean,
                getmean = getmean)
}

}


## Write a short comment describing this function
        #Refer back to our x matrix and if the cache
        #of that matrix is not empty then retrieve
        #the cache data and return the inverse.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
 m <- x$getinverse()    
        if(!is.null(m)){
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- inverse(data, ...)
        x$setinverse(m)
        m
}
