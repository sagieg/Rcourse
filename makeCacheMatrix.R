makeCacheMatrix <- function(x = matrix()) {
  CacheMatrix = NULL
  

  set = function(y) {
    x <<- y
    CacheMatrix <<- NULL
  }
  

  get = function() x

  setMatrix = function(inverse) CacheMatrix <<- inverse

  getInverse = function() CacheMatrix
  
  list(set = set, get = get,
       setMatrix = setMatrix,
       getInverse = getInverse)
}
