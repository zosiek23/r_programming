## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function


## This function, makeCacheMatrix, creates a special "matrix" object that can cache its inverse 

## set the value of the matrix
## get the value of the matrix

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<-function(y){
    x<<-y
    m<<-NULL
  }
  get<-function() x
  setmatrix<-function(solve) m<<- solve
  getmatrix<-function() m
  list(set=set, get=get,
       setmatrix=setmatrix,
       getmatrix=getmatrix)
}

## Write a short comment describing this function
## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
## If the inverse has already been calculated (and the matrix has not changed), 
## then cacheSolve should retrieve the inverse from the cache.

cacheSolve <- function(x=matrix(), ...) {
  m<-x$getmatrix()
  if(!is.null(m)){
    message("getting cached data")
    return(m) ## Return a matrix that is the inverse of 'x'
  }
  matrix <- x$get()
  m<-solve(matrix, ...)
  x$setmatrix(m)
  m
}


## Calling function --> example to run the function
## new<-makeCacheMatrix()
## new$set(matrix(1:4,2,2)
## cacheSolve(new)

##https://github.com/davidchuey/ProgrammingAssignment2/blob/master/cachematrix.R 
## https://github.com/andrewplumb/ProgrammingAssignment2/blob/master/cachematrix.R
##