#Udemy R Programming A-Z

getwd()
setwd('/Users/ttanaka/Desktop/coursera/R A-Z Udemy')
getwd()
movies<-read.csv("P4-Movie-Ratings.csv")
colnames(movies)<-c("Film","Genre","CriticRating","AudienceRating","BudgetMillions","Year")
movies$Year<-factor(movies$Year)
library(ggplot2)
q<-ggplot(data=movies,aes(x=CriticRating,y=AudienceRating, color=Genre,size=BudgetMillions))

#add geom layer
q+geom_point()

#override aes
#example 1
q+geom_point(aes(size=CriticRating))

#example 2
q+geom_point(aes(color=BudgetMillions))

#example 3
q+geom_point(aes(x=BudgetMillions))

#example 4
q+geom_line(size=0.6)+geom_point()

#showiing original (q remains the same)
q+geom_point()

