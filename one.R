#setwd("E:/@@Ramesh Data/@@Winter 2015-2016 @@/Courses/Extra")
#getwd()
licence()
var1 <- sqrt(81)
var1
class(var1)
class(x=class)

x =c(1,2,3,4,5,6,NA)
x
mean(x)
mean(x,na.rm = TRUE)
typeof(var1)
typeof(x)

#variable assignment in R
var10 = 25
var10
is.integer(var10)
typeof(var10)

# variable assignemt in R another variation
var11 <- 29
var11

var22 <- c(1,2,3,4)
mean(var22)
var(var22)

var34 <- as.integer(999) #10.28, give your name
var34
is.integer(var34)
typeof(var34)
class(var34)


as.integer(TRUE)
as.integer(FALSE)
x = 1
y = 2
z = x>y
z
class(z)
class(x)

z = 1+2i
z
class(z)
sqrt(-1)
sqrt(as.complex(-1))

c(10,20,40)
c(TRUE,FALSE,TRUE)
c("VIT","Chennai", "campus1")
c("Vit", 600126)
c(600126, "VIT pincode")
class(c(600123,"vit"))
length(c(600123,"vit"))

var25 = c(1,4,7)
var26 = c("vit", "university")
var27 = c(var25, var26)
var27

var28 = c(2, 4, 6, 8)
var29 = c(2, 4, 6, 8)
var28*var29
var28 + var29
var30 = c(2,4)
var28 + var30
var31 = c('a','b')
var32 = c('a','b')
var32 + var31
var28 + var31

var33 = c("vit", "chennai", "vellore", "campus")
var33[1]
k <- var33[2]
k
var33[-2]

var33[c(3,4)]
var33[c(3,4,4)]

names(var33) = c("one","two","three","four")
var33
var33["two"]

A = matrix(c(2,4,1,3,5,7),nrow=2,ncol=3,byrow=TRUE)
A
A[2,3]
A[2,]
A[,3]
A[,c(1,3)]
dimnames(A) = list( c("r1" ,"r2"), c("c1","c2","c3") )
A
K <- t(A)
B <- matrix(c(10,20,30),nrow=3,ncol=1)
K1 <- cbind(K,B)
K1
c(K1)

A = matrix(c(2,4,1,3,5,7),nrow=2,ncol=3,byrow=FALSE)
A

 n=c(2,3,5)
s=c("aa","bb","cc","dd","ee")
b=c(TRUE,FALSE,TRUE,FALSE,FALSE)
x=list(n,s,b,3)
x
x[2]
x[c(2,4)]
x[[2]]
v = list(bob=c(2, 3, 5), john=c("aa", "bb")) 
v
v["bob"]
v[c("john", "bob")] 

mtcars
mtcars[1,2]
head(mtcars)
tail(mtcars)
dim(mtcars)
help("mtcars")