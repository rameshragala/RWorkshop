library(ggplot2)
#setwd("E:/@@Ramesh Data/@@Winter 2015-2016 @@/Courses/CSE613/@Lab/CSE613Lab-Ours/Presentations/Lab-4")
#getwd()
set.seed(123)
# Two-dimensional data format
df <- rbind(matrix(rnorm(100, sd = 0.3), ncol = 2),
            matrix(rnorm(100, mean = 1, sd = 0.3), ncol = 2))
colnames(df) <- c("x", "y")
head(df)
df
data2 <- as.data.frame(df)
#ggplot(data2)+aes(x,y)+geom_point()
set.seed(123)
kmr <- lapply(1:10, function(i)
{
  kmeans(df,centers = i)
})
lapply(kmr, function(x) x$withinss)
withinss <- sapply(kmr, function(x) sum(x$withinss))
plot(1:10,withinss,type="b", xlab="Number of Clusters", ylab="withinss")
ggplot(data.frame(cluster = 1:10, within.ss = withinss), aes(cluster, within.ss)) +
  geom_point() + geom_line() +
  scale_x_continuous(breaks = 0:10)
#coloring by clusters
cluster.colors <- lapply(kmr, function(x) x$cluster)
library(plyr)
l_ply(cluster.colors, function(colors)
{
  plot(y ~ x, df, col = colors, main = paste(nlevels(factor(colors))), pch = 16)
})
l_ply(cluster.colors, function(colors) {
  plot.dat <- cbind(data2, cluster = factor(colors))
  gg.obj <- ggplot(plot.dat, aes(x, y, color = cluster)) +
    geom_point() + labs(title = paste(nlevels(factor(colors))))
  print(gg.obj)
})
