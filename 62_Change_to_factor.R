#Udemy R Programming A-Z

getwd()
setwd('/Users/ttanaka/Desktop/coursera/R A-Z Udemy')
getwd()

movies<-read.csv("P4-Movie-Ratings.csv")
head(movies)
colnames(movies)<-c("Film","Genre","CriticRating","AutienceRating","BudgetMillions","Year")
head(movies)
tail(movies)
str(movies)
summary(movies)
factor(movies$Year)
# change Year to category
movies$Year<-factor(movies$Year)
summary(movies)
