install.packages('tidyr')
library(tidyr)
install.packages('tidyverse')
library(tidyr)
library(tidyverse)
company <- c('ABC','DEF','GHI','JKL')
Q1 <- c(100,200,300,400)
Q2 <- c(500,600,700,800)
Q3 <- c(700,600,500,400)
Q4 <- c(300,200,100,50)
shareprice <- c(1000,2000,3000,4000)
?gather
df2 <- data.frame(company,Q1,Q2,Q3,Q4,shareprice)
df2
gather_df <- gather(df2,Quarter,sales,Q1:Q4)
spread(gather_df,Quarter,sales)
paste(df2$company,df2$shareprice,sep='-')
?spread
?unite
df2 <- unite(df2,col='company_shareprice',c('company','shareprice'))
df2
select(df2,c(2,3,4,5,1))     

df2[,c(2,3,4,5,1)]
?separate
separate(df2,col='cp_s',into=c('company','shareprice'),sep="-")


names <- c('honeycomb','icecream','jellybean','kitkat','lollipop')
version <- c(1,2,3,4,5)
df1 <- data.frame(names,version)
names <- c('donut','gingerbread','jellybean','kitkat','lollipop')
year <- c(2008,2010,2013,2014,2018)
df2 <- data.frame(names,year)
library(dplyr)
##full join
merge(df1,df2,by='names',all=TRUE)
##inner join
merge(df1,df2,by='names',all=FALSE)
##left join
merge(df1,df2,by='names',all.x=TRUE)

##right join
merge(df1,df2,by='names',all.y=TRUE)


##pipe operator
flights %>% select(1:10) %>% filter(month==5|month==6) %>% group_by(day) %>% summarise(sum=n()) %>% arrange(desc(sum))
