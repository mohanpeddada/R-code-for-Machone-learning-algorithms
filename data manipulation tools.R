library(dplyr)
?arrange
arrange(flights,desc(month))
?distinct
distinct(flights,month,day,year,carrier)
?group_by
colnames(flights)
head(flights$tailnum)
head(flights$flight)
distinct(flights,flight)
df <- group_by(flights,month)
summarise(df,flights=n())
df <- group_by(flights,month,day)
sum1 <- summarise(group_by(flights,month,day), dep_delay=sum(dep_delay,na.rm=T))
a <- arrange(summarise(group_by(flights,month,day), dep_delay=sum(dep_delay,na.rm=T)),desc(dep_delay))
object.size(a)
?mutate
mutate(select(flights,1:3),paste(month,day,sep='&'))
?sample_n
?sample_frac
?rename
rename(flights,mon=month)
select(flights,1:10,month==5 |month==6 )
