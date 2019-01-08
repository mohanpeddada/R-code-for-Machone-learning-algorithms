##dimensionality reduction
#i) principal component analysis

library(rpart)



dataset <- iris
library(caTools)
dataset <- scale(dataset[-5])
?prcomp()
model <- prcomp(dataset,retx = TRUE, center = TRUE, scale. = TRUE)
model$sdev
var <- (model$sdev)^2
var
 var1 <-var[1]/sum(var) *100
var2 <- var[2]/sum(var)*100
var1+var2

model$rotation
m

mean(dataset[,1])
##model$center gives the mean values
model$center
##model$cscale gives the standard deviation values
model$scale
## firt 2 variables eplaining 95% varaince 
final_dataset <- model$x[,1:2]
new_data <- cbind(final_dataset, factor(iris$Species,labels = c(0,1,2)))
indices <- sample(nrow(new_data), round(nrow(new_data)*0.85))
train_set <- data.frame(new_data[indices,])
test_set <- data.frame(new_data[-indices,])
reg_model <- rpart(V3~. , data = train_set, method =  'class',
                   parms = list(split = "information"),
                   control = rpart.control(minsplit = 1))
pred <- predict(reg_model, test_set[, -3],  type = "class")
reg_model$cptable
library(e1071)
library(caret)
library(Metrics)
confusionMatrix(factor(test_set$Species),pred)

library(ggplot2)


