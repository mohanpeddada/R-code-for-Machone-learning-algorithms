install.packages('stringr')
install.packages('ggplot2')
library(stringr)
library(ggplot2)
'this is a string'
?str_to_upper
str_to_upper('this is a string')
str_to_lower('This is a string')
str_to_title('this is a string')
?str_replace
str_replace('this is a string','string','@')
var <- 'this is a string and i am changing it to a character!do you think i can change it? yes, you can!'
?grep
?str_split
str_split((grep()))
grep('!',(str_split(var,' ')))
?unlist
unlist(str_split(var,' '))
grep('!',unlist(str_split(var,' ')))
?grepl
grepl('!',unlist(str_split(var,' ')))
sub('!','@',var)
?lapply
var1 <- list(c(1,2,3),c(4,5,6),c(7,8,9))
lapply(var1,mean)
mat <- matrix(1:16,4,4,byrow = 'T')
mat
colSums(mat)
apply(mat,2,sum)
?mapply
vec1 <- 1:10
vec2 <- 10:1
mapply(sum,vec1,vec2)
?tapply
vec3 <- 1:100
?gl <- it will generate levels
fac <- gl(5,20)
tapply(vec3,fac,mean)
?tapply
?apply
