dataset <- read.csv('Prestige.csv')
set.seed(123)

indices <- sample(nrow(dataset), round(nrow(dataset) * 0.8))

train_set <- dataset[indices, ]
test_set <- dataset[-indices, ]

library(rpart)
library(rpart.plot)
?rpart
reg_model <- rpart(income~., train_set, parms = list(split = "information"), method = 'anova',control=  rpart.control(minsplit = 5))
rpart.plot(reg_model)
reg_model$cptable
best_cp <- reg_model$cptable[which.min(reg_model$cptable[2:6,'xerror']),'CP']
best_model <- prune(reg_model, best_cp)

rpart.plot(best_model)                              
best_model$cptable
test_pred <- predict(best_model,test_set[,-2])
##install.packages('caret')
library(Metrics)
library(caret)
rmse(test_set$income,test_pred)




## bagging


dataset1 <- read.csv('ilpd.csv',header=F)
indices1 <- sample(nrow(dataset1),round(nrow(dataset1)*0.80)) 
trainn_set <-dataset1[indices1,] 
testt_set <- dataset1[-indices1,]

class(trainn_set$V11)

regg_model <- bagging(factor(V11) ~.,trainn_set,coob=TRUE)
regg_model$mtrees
regg_model$err
predictt  <- predict(regg_model,testt_set[,-11])
library(Metrics)
library(caret)


