#Udemy R Programming A-Z

getwd()
setwd('/Users/ttanaka/Desktop/coursera/R A-Z Udemy')
getwd()
movies<-read.csv("P4-Movie-Ratings.csv")
colnames(movies)<-c("Film","Genre","CriticRating","AutienceRating","BudgetMillions","Year")
movies$Year<-factor(movies$Year)
library(ggplot2)
p<-ggplot(data=movies,aes(x=CriticRating,y=AutienceRating, color=Genre,size=BudgetMillions))

p+geom_point()