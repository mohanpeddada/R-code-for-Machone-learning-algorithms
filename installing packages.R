install.packages('nycflights13')
library(nycflights13)
flights
dim(flights)
head(flights)
object.size(flights)
summary(flights) 
colnames(flights)
flights['year':'dep_delay'] 
select(flights,1:10,-c(1,3,5))
select(flights,1:6,-5)
##without usong indexing
select(flights,colnames(flights)[1]:colnames(flights)[6],c(-colnames(flights)[5]))

library(dplyr)
filter(flights,month==8|day==25)
filter(flights,carrier=='US'&month!=6)
filter(select(flights,1:15),(month==5|month==6|month==7)&(day==1|day==2|day==3)&carrier=='AA')dim
 dim(flights)      
 