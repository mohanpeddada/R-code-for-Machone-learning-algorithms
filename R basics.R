vec<-c(1,2,3,4)
a<-vec
sum(a)
vec<-c(6,7,8,9,10)
a<-vec
sum(a,na.rm=T)
max(a,na.rm=T)
min(a,na.rm=T)
which.max(a)
which.min(a)
mean(a,na.rm=T)
sd(vec)
vec1<-c(1,2,4,5)
sqrt(sum((vec-mean(vec))^2)/length(vec))
vec[vec > 7]
vec<-seq(1,100,2)
vec[vec>50&vec<71]
seq(1,100,2)[seq(1,100,2)<50 | seq(1,100,2)>70]
age <- c(22,11,7)
animals <- c('giraffe','lion','dog')
names(age)<-animals
age
age[1:2]
age[c('lion','dog')]
1:4
4:1
paste(1:4,4:1,sep="-")
paste0('helloworld')
(T) & c(T,F)
var=(1)
if(var==1)
{
  var<-var+1
}else{
  var<-var-1
}


my_sum(vec)