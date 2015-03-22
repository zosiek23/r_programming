### Caching the Inverse of a Matrix
## Programming Assignment 2

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

cacheSolve <- function(x=matrix(), ...) {
  m<-x$getmatrix()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  matrix <- x$get()
  m<-solve(matrix, ...)
  x$setmatrix(m)
  m
}

## First I stored a function in a variable 
a<-makeCacheMatrix()
## Then I run 
a$set(matrix(1:4,2,2)) ##to store a matrix

## When I run 
cacheSolve(a)