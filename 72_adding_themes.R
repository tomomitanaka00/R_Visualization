#Udemy R Programming A-Z

getwd()
setwd('/Users/ttanaka/Desktop/coursera/R A-Z Udemy')
getwd()
movies<-read.csv("P4-Movie-Ratings.csv")
colnames(movies)<-c("Film","Genre","CriticRating","AudienceRating","BudgetMillions","Year")
movies$Year<-factor(movies$Year)
library(ggplot2)

o<-ggplot(data=movies,aes(x=BudgetMillions))
h<-o+geom_histogram(binwidth=10, aes(fill=Genre),color="Black")

#label formatting
h+xlab("Money Axis")+ylab("Number of Movies")+theme(axis.title.x=element_text(color="DarkGreen",size=10),axis.title.y=element_text(color="Red",size=10))

#tick mark formatting
h+xlab("Money Axis")+ylab("Number of Movies")+theme(axis.title.x=element_text(color="DarkGreen",size=20),axis.title.y=element_text(color="Red",size=20),axis.text.x=element_text(size=8),axis.text.y=element_text(size=8))


#legend formatting
h+xlab("Money Axis")+ylab("Number of Movies")+theme(axis.title.x=element_text(color="DarkGreen",size=20),axis.title.y=element_text(color="Red",size=20),axis.text.x=element_text(size=8),axis.text.y=element_text(size=8),legend.text = element_text(size=10),legend.title = element_text(size=15),legend.position = c(1,1),legend.justification = c(1,1))

#add title
h+ggtitle("Movie Budget Distribution")+xlab("Money Axis")+ylab("Number of Movies")+theme(axis.title.x=element_text(color="DarkGreen",size=20),axis.title.y=element_text(color="Red",size=20),axis.text.x=element_text(size=8),axis.text.y=element_text(size=8),legend.text = element_text(size=10),legend.title = element_text(size=15),legend.position = c(1,1),legend.justification = c(1,1),plot.title=element_text(color="DarkBlue",size=25))
