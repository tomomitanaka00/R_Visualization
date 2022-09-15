#Udemy R Programming A-Z

getwd()
setwd('/Users/ttanaka/Desktop/coursera/R A-Z Udemy')
getwd()
movies<-read.csv("P4-Movie-Ratings.csv")
colnames(movies)<-c("Film","Genre","CriticRating","AudienceRating","BudgetMillions","Year")
movies$Year<-factor(movies$Year)
library(ggplot2)
r<-ggplot(data=movies,aes(x=CriticRating,y=AudienceRating))
r+geom_point()

#add color
#there are two days to add color

#Example 1
#1: mapping (we we have done so far)
r+geom_point(aes(color=Genre))
#2: setting
r+geom_point(color="Red")

#Example 2
#1: mapping
r+geom_point(aes(size=BudgetMillions))

#2: setting
r+geom_point(size=1)
