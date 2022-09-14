getwd()
setwd('/Users/ttanaka/Desktop/coursera/R A-Z Udemy')
getwd()
movies<-read.csv("P4-Movie-Ratings.csv")
colnames(movies)<-c("Film","Genre","CriticRating","AudienceRating","BudgetMillions","Year")
movies$Year<-factor(movies$Year)
library(ggplot2)
v<-ggplot(data=movies,aes(x=BudgetMillions))
v+geom_histogram(binwidth=10,aes(fill=Genre),color="Black")
          
#facets
v+geom_histogram(binwidth=10,aes(fill=Genre),color="Black")+facet_grid(Genre~.)

#scatterplots
w<-ggplot(data=movies,aes(x=CriticRating,y=AudienceRating,color=Genre))
w+geom_point(size=3)

#facets
w+geom_point(size=1)+facet_grid(Genre~.)

w+geom_point(size=1)+facet_grid(.~Year)

w+geom_point(size=1)+facet_grid(Genre~Year)

w+geom_point(size=1)+facet_grid(Genre~Year)+geom_smooth()

w+geom_point(aes(size=BudgetMillions))+facet_grid(Genre~Year)+geom_smooth()

