## The below two functions are designed to be used together so as to calculate the inverse of matrix 

## It is an environment in which the matrix and inverse of matrix's values are stored and provide a list of getter and setter function

makeCacheMatrix <- function(x = matrix()) {
  IM <- NULL
  ##set the matrix and clear the dated matrix at the same time  
  set <- function(new_matrix){
    x <<- new_matrix
    IM <<- NULL
  }
  ## giving out the value of matrix 
  give <- function() x
  
  ## A way to store the inverse of matrix in this function environment 
  Input <- function(z) IM <<- Z 
  
  ## checkout the inverse of matrix
  Output <- function() IM 
  
  list(set=set, give=give,Input=Input, Output=Output)
}


## it is used exclusively by the function makeCacheMatrix to calculate the inverse of matrix 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  ans <- x$Output
  if(!is.null(ans)) {
    message("getting catched data")
    return(ans)
  }
  matrix <- x$give
  ans <- solve(matrix)
  x$Input(ans)
  ans
}







