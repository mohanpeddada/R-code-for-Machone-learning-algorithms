library(caTools)
library(ggplot2)
install.packages('car')
library(car)
View(Prestige)
colSums(is.na(Prestige))
Prestige[is.na(Prestige$type), ]
data <- Prestige[,-c(5,6)]

#Prestige[,-c("census", "type")]
write.csv(data,'datset2.csv',row.names = FALSE)
datst <- read.csv('datset2.csv')
set.seed(456)
split <- sample.split(datst$income,SplitRatio = 0.85)
trainn_set <- subset(datst,split==TRUE)
testt_set <- subset(datst,split==FALSE)
reg_model <- lm((income)~.,trainn_set)
yy_predict <- predict(reg_model,testt_set)
summary(reg_model)
ggplot(trainn_set)+geom_point(aes(x=income,y=education),colour='Blue')
ggplot(trainn_set)+geom_point(aes(x=income,y=women),colour='Blue')
ggplot(trainn_set)+geom_point(aes(x=income,y=prestige),colour='Blue')
rmse(testt_set$income,yy_predict)
?step
step(reg_model,direction='backward')
step(reg_model,direction='forward')
##after finding lowest AIC values go with that model
reg_model <- lm(log(income)~women+prestige,trainn_set)
yy_predict <- exp(predict(reg_model,testt_set))
summary(reg_model)
library(Metrics)
rmse(testt_set$income,yy_predict)






