getwd()
setwd('/Users/ttanaka/Desktop/coursera/R A-Z Udemy')
getwd()
movies<-read.csv("P4-Movie-Ratings.csv")
colnames(movies)<-c("Film","Genre","CriticRating","AudienceRating","BudgetMillions","Year")
movies$Year<-factor(movies$Year)
library(ggplot2)
s<-ggplot(data=movies,aes(x=BudgetMillions))

#histogram
s+geom_histogram(binwidth = 10)

#add fill color
s+geom_histogram(binwidth = 10, aes(fill=Genre))

#add border color
s+geom_histogram(binwidth = 10, aes(fill=Genre), color="Black")

#density chart
s+geom_density(aes(fill=Genre))
s+geom_density(aes(fill=Genre),position="stack")
