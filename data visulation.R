library(ggplot2)
mtcars
View(mtcars)
ggplot(mtcars,aes(x=mpg,y=hp))+geom_point(colour='blue')+ ggtitle('mpg vs hp')+ xlab('miles per gallon')+ ylab('horse power')
ggplot(mtcars,aes(x=cyl,y=mpg))+geom_bar(stat='identity')
ggplot(mtcars,aes(x=factor(cyl),y=mpg))+geom_boxplot(colour='blue')
class(mtcars$cyl)
ggplot(mtcars,aes(x=cyl,y=mpg))+geom_line(colour='blue')
?qplot
qplot(mtcars$hp, geom='histogram',bins=10)
