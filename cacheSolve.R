cacheSolve <- function(x, ...) {

  CacheMatrix = x$getInverse()
  

  if (!is.null(CacheMatrix)) {
    message("getting cached data")
    return(CacheMatrix)
  }
  
 
  matrix = x$get()
  

  tryCatch( {
   
    CacheMatrix = solve(matrix, ...)
  },
  error = function(e) {
    message("Error:")
    message(e)
    
    return(NA)
  },
  warning = function(e) {
    message("Warning:")
    message(e)
    
    return(NA)
  },
  finally = {
    x$setMatrix(cache)
  } )
  return (cache)
}
