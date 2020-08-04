#Second Programming assignment 
##Your assignment is to write a pair of functions that cache the inverse of a matrix.

makeCacheMatrix<-function(x=matrix()){
  inv<-NULL
  #Method to set the Matrix
  set<-function(y){
    x<<-y
    inv<<-NULL
  }
  #Method to get the Matrix
  get<-function(){
    #return the Matrix
    x
    }
  
  #Method to set the inverse Matrix
  setinverse<-function(inverse){
    inv<<-inverse
    }
  #Method to get the inverse of the Matrix
  getinverse<-function(){
    #Return the Inverse of the Matrix
    inv
  }
  #Return a list of all methods 
  list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
}

cacheSolve<-function(x,...){
  inv<-x$getinverse()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  matriz<-x$get()
  inv<-solve(matriz,...)
  x$setinverse(inv)
  inv
}

  
  