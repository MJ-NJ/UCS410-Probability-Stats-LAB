library(reader)
library(ggplot2)

#a
data <- read.csv("Clt-data.csv")

#b
n_rows <- nrow(data)
head(data,10)
summary(data)

#c
p_mean <- mean(data$Wall.Thickness)
hist(data$Wall.Thickness, col = "blue")

#d
abline(v = p_mean, col="red")

s10 = c()
n = 9000
for(i in 1:n){
    s10[i] = mean(sample(data$Wall.Thickness, 10, replace = TRUE))
}
hist(s10, col = "blue",main='Sample Size = 10',xlab='Wall Thickness')
abline(v = mean(s10), col="red")

s50 = c()
s500 = c()
s9000 = c()
for(i in 1:n){
    s50[i] = mean(sample(data$Wall.Thickness, 50, replace = TRUE))
    s500[i] = mean(sample(data$Wall.Thickness, 500, replace = TRUE))
    s9000[i] = mean(sample(data$Wall.Thickness, 9000, replace = TRUE))
}
par(mfrow=c(1,3))
hist(s50, col = "blue",main='Sample Size = 50',xlab='Wall Thickness')
abline(v = mean(s50), col="red")
hist(s500, col = "blue",main='Sample Size = 500',xlab='Wall Thickness')
abline(v = mean(s500), col="red")
hist(s9000, col = "blue",main='Sample Size = 9000',xlab='Wall Thickness')
abline(v = mean(s9000), col="red")

#This can be done in a loop but I am too lazy to do it