data(women)
View(women)
library(ggplot2)
ggplot(women,aes(x=height,y=weight))+geom_point(colour='blue')
?sample
write.csv(women,"dataset.csv",row.names = FALSE)
getwd()
set.seed(123)
dataset <- read.csv('dataset.csv', header = FALSE)
indices <- sample(nrow(dataset), round(nrow(dataset)*0.8))
train_set <- dataset[indices,]
View(train_indices)
test_set <- dataset[-indices,]
View(test_set)

?lm
reg_model<- lm(weight~height,data=train_set)

reg_model$residuals
summary(reg_model)
res_sum <-sum((train_set$weight- reg_model$fitted.values)^2)/(sum)

library(dplyr)
sample_frac(women,0.85)
?lm
sd_pop <- sd(c(1,2,3,4))
?pt
pt(-15.17,11)*2
##multiply by 2 b'coz 
?predict
predict(reg_model,test_set)
ggplot(train_set)+geom_point(aes(x = height, y = weight),colour='blue')+geom_line(aes(x=height,y=predict(reg_model,train_set)),colour='red')
