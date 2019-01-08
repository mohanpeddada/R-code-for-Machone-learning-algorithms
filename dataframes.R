vec <- c(1,2,3,4,5)
my_avg <- function(vec){
  avg=0
  for(i in vec)
  {
    avg=avg+i
  }
  avg=avg/length(vec)
  return(avg)
  my_avg(vec)
  
  name <-c('abc','def','ghi')

  age <- c(NA,20,30)
  
  gender <- c('M',NA,'M')
  df <- data.frame(name,age,gender)
  df
  df[1,]
  class(df)
df[,1]  
class(df)
df$name
class(df)
df
rownames(df)<-c('row1','row2','row3')
df[2]
class(df)
df[,c('name','age')]
class(df)
df['row2','gender']
class(name)
class(gender)
df$gender <- factor(df$gender,levels=c('M','F'),labels=c(0,1))
df
class(df$gender)
data(iris)
iris
head(iris)
tail(iris)
nrow(iris)
ncol(iris)
dim(iris)
str(iris)
summary(iris)
summary(df)
is.na(df)
colSums(is.na(df))
which(is.na(df$gender))
any(is.na(df))
all(df)
any(iris)
is.na(iris)
colSums(is.na(iris))
which(is.na(iris))
df[which(is.na(df$age)),2]<- mean(df$age,na.rm=T)
df
unique(df$gender)
?unique
df[which(is.na(df$gender)),3]<- unique(df$gender)[1]
df
rank <- c(1,2,3)
df<-cbind(df,rank)
df
df$rank<-c(1,2,3)
df[2]
df[,-2]
df[-3, -1]



