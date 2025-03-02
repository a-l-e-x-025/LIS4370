#1
data(iris)

#2
head(iris)
list(iris)
summary(iris)
print(iris)
plot(iris)

#3
class(iris)
isS4(iris)

s3iris <- iris
class(s3iris) <- "IrisData"
print.IrisData <- function(x) {
  cat("S3 class print for Iris\n")
  print(head(x,3))
}

print(s3iris)

setClass("IrisS4",
         slots = list(
           Sepal.Length = "numeric",
           Sepal.Width = "numeric",
           Petal.Length = "numeric",
           Petal.Width = "numeric",
           Species = "factor"
         ))

iris_s4 <- new("IrisS4",
               Sepal.Length = iris$Sepal.Length,
               Sepal.Width = iris$Sepal.Width,
               Petal.Length = iris$Petal.Length,
               Petal.Width = iris$Petal.Width,
               Species = as.factor(iris$Species))

isS4(iris_s4)