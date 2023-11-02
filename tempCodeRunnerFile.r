n <- 100
df <- n - 1
t_dist <- rt(n,df)
hist(t_dist,main = "Histogram of t-Distribution", xlab = "Random Values", breaks = 20)