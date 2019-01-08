dataset<- iris
library(caTools)
data_ <- scale(dataset[-5], scale = T, center = T)
dataset$Species <- factor(dataset$Species, labels = c(0,1,2))
model <- prcomp(data_, scale. = TRUE, center = TRUE)
model$x
model$center
model$rotation 
eigen(cov(data_))
ss <- svd(data_)
u1 <- ((eigen((data_) %*% t(data_))$vectors))[,1:4]
v1 <- ((eigen(t(data_) %*%(data_))$vectors))
length(eigen(data_ %*% t(data_)$vectors))

diag(ss$d,4,4)

vv <- u1 %*% diag(ss$d,4,4)
 

summary(model)
model$x
