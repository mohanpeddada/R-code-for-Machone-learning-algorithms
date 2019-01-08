dataset <- read.csv('Balloon.csv')
set.seed(123)

indices <- sample(nrow(dataset), round(nrow(dataset) * 0.85))

train_set <- dataset[indices, ]
test_set <- dataset[-indices, ]

library(rpart)
library(rpart.plot)

reg_model <- rpart(Inflated ~., train_set, parms = list(split = "information"),
                   control = rpart.control(minsplit = 1), method = 'class')
rpart.plot(reg_model)



 



?rpart()

 
reg_model$cptable
reg_model$frame
reg_model$splits
reg_model$parms
  
?predict
predict(reg_model, test_set[, -5], type = "class")

## trees with another dataset
dataset <- read.csv('ilpd.csv',header = F)
set.seed(123)
indices1 <- sample(nrow(dataset),round(nrow(dataset)*0.8))
trainn_set <-dataset[indices1,] 
testt_set <- dataset[-indices1,]
regg_model <- rpart(V11~.,trainn_set, method='class', parms= list(split='information'),control = rpart.control(minsplit = 1))
#(is.na(dataset))
predict(regg_model,testt_set[,-11],type= 'class')
regg_model$cptable
rpart.plot(regg_model)
##from reg_model$cptable select the lowest xerror (dont consider  the 1st xerror )
#and take that value
best_cp <- regg_model$cptable[which.min(regg_model$cptable[2:6,'xerror'])+1,'CP']
best_model <- prune(regg_model, best_cp)

rpart.plot(best_model)                              
best_model$cptable
testt_pred <- predict(best_model,testt_set[,-11],type='class')
install.packages('caret')
library(caret)
?confusionMatrix
confusionMatrix(factor(testt_set$V11),testt_pred)
class(testt_set$V11)
install.packages('e1071')
library(e1071)
confusionMatrix(factor(testt_set$V11),predict(regg_model,testt_set[,-11],type= 'class'))




## random tree w.r.t to CART
dataset <- read.csv('Balloon.csv')
set.seed(123)

indices <- sample(nrow(dataset), round(nrow(dataset) * 0.85))

train_set <- dataset[indices, ]
test_set <- dataset[-indices, ]

library(rpart)
library(rpart.plot)

reg_model <- rpart(Inflated ~., train_set, parms = list(split = "gini"),
                   control = rpart.control(minsplit = 1), method = 'class')
rpart.plot(reg_model)




##example 2
dataset <- read.csv('ilpd.csv',header = F)
set.seed(123)
indices1 <- sample(nrow(dataset),round(nrow(dataset)*0.8))
trainn_set <-dataset[indices1,] 
testt_set <- dataset[-indices1,]
regg_model <- rpart(V11~.,trainn_set, method='class', parms= list(split='gini'),
                    control = rpart.control(minsplit = 1))
#(is.na(dataset))
predict(regg_model,testt_set[,-11],type= 'class')
regg_model$cptable
rpart.plot(regg_model)
##from reg_model$cptable select the lowest xerror (dont consider  the 1st xerror )
#and take that value
best_cp <- regg_model$cptable[which.min(regg_model$cptable[2:5,'xerror'])+1,'CP']
best_model <- prune(regg_model, best_cp)

rpart.plot(best_model)                            
best_model$cptable
testt_pred <- predict(best_model,testt_set[,-11],type='class')
install.packages('caret')
library(caret)
?confusionMatrix
confusionMatrix(factor(testt_set$V11),testt_pred)
class(testt_set$V11)
install.packages('e1071')
library(e1071)
confusionMatrix(factor(testt_set$V11),predict(regg_model,testt_set[,-11],type= 'class'))


install.packages('ipred')








