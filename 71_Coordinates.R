getwd()
setwd('/Users/ttanaka/Desktop/coursera/R A-Z Udemy')
getwd()
movies<-read.csv("P4-Movie-Ratings.csv")
colnames(movies)<-c("Film","Genre","CriticRating","AudienceRating","BudgetMillions","Year")
movies$Year<-factor(movies$Year)
library(ggplot2)
m<-ggplot(data=movies,aes(x=CriticRating,y=AudienceRating,size=BudgetMillions, color=Genre))
m+geom_point()

#limit 
m+geom_point()+xlim(50,100)+ylim(50,100)

#zoom
n<-ggplot(data=movies,aes(x=BudgetMillions))
n+geom_histogram(binwidth=10, aes(fill=Genre),color="Black")

n+geom_histogram(binwidth=10, aes(fill=Genre),color="Black")+coord_cartesian(ylim=c(0,50))

w<-ggplot(data=movies,aes(x=CriticRating,y=AudienceRating,color=Genre))
w+geom_point(aes(size=BudgetMillions))+facet_grid(Genre~Year)+geom_smooth()+coord_cartesian(ylim=c(0,100))


