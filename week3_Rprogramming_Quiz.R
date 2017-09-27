#1

round(mean(iris[which(iris$Species == "virginica"),]$Sepal.Length))

#2
apply(iris[, 1:4], 2, mean)

#3
sapply(split(mtcars$mpg, mtcars$cyl), mean)

#4
round(mean(mtcars[mtcars$cyl == 4, ]$hp) - mean(mtcars[mtcars$cyl == 8, ]$hp))

#5

