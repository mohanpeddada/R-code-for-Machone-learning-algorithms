
## w.r.t to indian iver patients dataset
dataset1 <- read.csv('ilpd.csv',header=F)
dataset1 <- dataset1[complete.cases(dataset1),]
indices1 <- sample(nrow(dataset1),round(nrow(dataset1)*0.80)) 
trainn_set <-dataset1[indices1,] 
testt_set <- dataset1[-indices1,]


#install.packages('randomForest')
library(randomForest)

regg_model <- randomForest(factor(V11) ~.,trainn_set,ntree=100)

regg_model$forest
  
predictt  <- predict(regg_model,testt_set[,-11])
library(Metrics)
library(caret)

accuracy(factor(testt_set$V11),predictt)
predictt
precision(factor(testt_set$V11),predictt)
recall(factor(testt_set$V11), predictt)
auc(factor(testt_set$V11), predictt)
library(caret)
confusionMatrix(factor(testt_set$V11), predictt)

dataa <- read.csv('prestige')

