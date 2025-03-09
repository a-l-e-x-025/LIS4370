x <- read.table("C:/Users/alexw/Downloads/Assignment 6 Dataset.txt", header=TRUE, sep=",")
install.packages("pryr")
require(pryr)
require(ISLR)
require(boot)
library(data.table)
library(plyr)
y = ddply(x,"Sex",transform, Grade.Average=mean(Grade))

write.table(y,"Sorted_Average")
write.table(y,"Sorted_Average",sep=",")
newx = subset(x,grepl("[iI]",x$Name))
subset(x, grepl("i", x$Name))

write.table(newx,"DataSubset",sep=",")

