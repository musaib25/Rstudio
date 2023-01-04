#ans 1 linear regression
getwd()
setwd("C:/Users/musai/OneDrive/Desktop/DATA SCIENCE PRACTICALS")
Computer_data=read.csv("Computer_data.csv")
cor(Computer_data$price,Computer_data$speed)
cor(Computer_data$price,Computer_data$hd)
anov=aov(price~(ram),data=Computer_data)
summary(anov)
anov=aov(price~(cd),data=Computer_data)
summary(anov)
boxplot(Computer_data$price)
Computer_data=Computer_data[-c(1,8,9,10,11)]
sample=sample.split(Computer_data$price,SplitRatio=0.70)
trainingset=subset(Computer_data,sample=TRUE)
testset=subset(Computer_data,sample=FALSE)
model=lm(price~.,data = trainingset)
testset$predicted_price=predict(model,testset)
cor(testset$price,testset$predicted_price)

#ans 2 Rename screen column as screen_size
library(dplyr)
a1=rename(Computer_data,screen_size=screen)
View(a1)

#ans 3 Mean and median
mean(Computer_data$price)
mean(Computer_data$hd)
median(Computer_data$price)
median(Computer_data$hd)

#ans 4 
select(Computer_data,-starts_with("m"))


