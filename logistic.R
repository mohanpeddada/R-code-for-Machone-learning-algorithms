dataset <- read.csv('ilpd.csv',header=F)
indices <- sample(nrow(dataset),round(nrow(dataset)*0.8))
train_set <- dataset[indices,]
test_set <- dataset[-indices,]
test_set$V11 <- factor(test_set$V11, labels = c(0, 1)) 
reg_model <- glm(V11~.,data= train_set, family ='binomial')
 class(train_set$V11)
 train_set$V11
 test_set$V11
 
 test_set$V11 <- factor(test_set$V11, labels=c(0,1))
 predictt <- predict(reg_model, test_set[,-11],type = "response")
  predictt <- ifelse(predictt > 0.5, 1, 0)
  summary(reg_model)
 
 library(caret)
 library(Metrics)
 confusionMatrix((test_set$V11), factor(predictt))
 accuracy()
 
 class(train_set$V11)

?factor
