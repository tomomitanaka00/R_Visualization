getwd()
setwd('/Users/ttanaka/Desktop/coursera/R A-Z Udemy')
getwd()
movies<-read.csv("P4-Movie-Ratings.csv")
colnames(movies)<-c("Film","Genre","CriticRating","AudienceRating","BudgetMillions","Year")
movies$Year<-factor(movies$Year)
library(ggplot2)
t<-ggplot(data=movies,aes(x=AudienceRating))
t+geom_histogram(binwidth=10,fill="White",color="Blue")

#another way to create the same graph
t<-ggplot(data=movies)
t+geom_histogram(binwidth=10,fill="White",color="Blue",aes(x=AudienceRating))
