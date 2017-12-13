#setwd("E:/@@Ramesh Data/@@Winter 2015-2016 @@/Courses/CSE613/@Lab/CSE613Lab-Ours/Presentations/Lab-5")
#getwd()
View(iris)
data("iris")
str(iris)
table(iris$Species)
head(iris)
iris
set.seed(9850)
gp <- runif(nrow(iris))
gp
iris2 <- iris[order(gp),]
str(iris2)
head(iris2)
head(iris2,10)
summary(iris2[,c(1:4)])

normalize <- function(x)
{
  return((x-min(x))/((max(x)-min(x))))
}

iris2_norm <- as.data.frame(lapply(iris2[,c(1:4)], normalize))

str(iris2_norm)
summary(iris2_norm)

iris2_train <- iris2_norm[1:129,]
iris2_test <- iris2_norm[130:150,]
iris2_train_target <- iris2[1:129,5]
iris2_test_target <- iris2[130:150,5]
library(class)
require(class)
model1 <- knn(train=iris2_train,test = iris2_test, cl = iris2_train_target, k=13)
model1
table(iris2_test_target,model1)
