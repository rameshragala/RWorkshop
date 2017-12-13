#setwd("E:/@@Ramesh Data/@@Winter 2015-2016 @@/Courses/CSE613/@Lab/CSE613Lab-Ours/Presentations/Lab-4")
#getwd()
set.seed(123)
# Two-dimensional data format
df <- rbind(matrix(rnorm(100, sd = 0.3), ncol = 2),
            matrix(rnorm(100, mean = 1, sd = 0.3), ncol = 2))
colnames(df) <- c("x", "y")
head(df)
df
set.seed(123)
kmr <- lapply(1:10, function(i)
{
  kmeans(df,centers = i)
})
#coloring by clusters
cluster.colors <- lapply(kmr, function(x) x$cluster)
library(plyr)
l_ply(cluster.colors, function(colors)
{
  plot(y ~ x, df, col = colors, main = paste(nlevels(factor(colors))), pch = 16)
})
