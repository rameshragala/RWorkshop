#setwd("E:/@@Ramesh Data/@@Winter 2015-2016 @@/Courses/CSE613/@Lab/CSE613Lab-Ours/Presentations/Lab-5")
#getwd()
require(C50)
data("iris")
head(iris)
str(iris)
table(iris)
table(iris$Species)
set.seed(9850)
gen <- runif(nrow(iris))
iris_data <- iris[order(gen),]
library(C50)
model1 <- C5.0(iris_data[1:100,-5], iris_data[1:100,5])
model1
summary(model1)
p1 <- predict(model1, iris_data[101:150,])
p1
table(iris_data[101:150,5],p1)
plot(model1)
