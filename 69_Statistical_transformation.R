getwd()
setwd('/Users/ttanaka/Desktop/coursera/R A-Z Udemy')
getwd()
movies<-read.csv("P4-Movie-Ratings.csv")
colnames(movies)<-c("Film","Genre","CriticRating","AudienceRating","BudgetMillions","Year")
movies$Year<-factor(movies$Year)
library(ggplot2)
u<-ggplot(data=movies,aes(x=CriticRating, y=AudienceRating,color=Genre))
u+geom_point()+geom_smooth(fill=NA)

#boxplot
uu<-ggplot(data=movies,aes(x=Genre, y=AudienceRating,color=Genre))
uu+geom_boxplot(size=1.2)

uu+geom_boxplot(size=1.2)+geom_point()
uu+geom_boxplot(size=1.2)+geom_jitter()

uu+geom_jitter()+geom_boxplot(size=1.2,alpha=0.5)

