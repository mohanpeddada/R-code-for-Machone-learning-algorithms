##bagging for decision trees
library(ipred)
install.packages('ipred')
?bagging
dataset <- read.csv('Balloon.csv')
set.seed(123)

indices <- sample(nrow(dataset), round(nrow(dataset) * 0.85))

train_set <- dataset[indices, ]
test_set <- dataset[-indices, ]
reg_model <- bagging(factor(Inflated )~.,train_set,coob=TRUE)


## w.r.t to indian iver patients dataset
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
accuracy(factor(testt_set$V11),predictt)
predictt
precision(factor(testt_set$V11),predictt)
recall(factor(testt_set$V11), predictt)
auc(factor(testt_set$V11), predictt)
library(caret)
confusionMatrix(factor(testt_set$V11), predictt)
