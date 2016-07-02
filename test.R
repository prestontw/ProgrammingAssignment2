## File to test cachematrix file

source("cachematrix.R")

test1 = makeCacheMatrix(matrix(1:4, 2, 2))
identity = makeCacheMatrix(matrix(c(1,0,0,1), 2, 2))

cacheSolve(test1)
cacheSolve(identity)

print(test1$get())
print(test1$getinverse())
print(identity$get())
print(identity$getinverse())