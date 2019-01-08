## Decision tree regressor with prestige dataset 
data1 <- read.csv('prestige.csv')
indices <- sample(nrow(data1), round(nrow(data1)*0.85))
train_set <- data1[indices,]
test_set <- data1[-indices,]
library(rpart)
reg_model <- rpart(income~., train_set,method = 'annova',)
?rpart
