test = function(mat){
  
  ## to use
  ## set.seed(1110201)
  ##mat1 = matrix(r, nrow=1000, ncol=1000)
  ##r = rnorm(1000000)
  ##test(mat1)
  ## @mat: an invertible matrix
  ##
  print('Test Starts');
  temp = makeCacheMatrix(mat)
  
  start.time = Sys.time()
  cacheSolve(temp)
  dur = Sys.time() - start.time
  print(dur)
  
  start.time = Sys.time()
  cacheSolve(temp)
  dur = Sys.time() - start.time
  print(dur)
}