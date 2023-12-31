# Q.1
# size <- 12
# prob_success <- 1/6
# lower_bound <- 7
# upper_bound <- 9

# probability <- pbinom(upper_bound, size, prob_success) - pbinom(lower_bound - 1, size, prob_success)

# cat("Probability of getting 7, 8, or 9 sixes:", probability, "\n")

# Q.2
# mean <- 72
# sd <- 15.2
# x = pnorm(84,mean=72,sd=15.2,lower.tail=FALSE)
# print(x)

# Q.3
# c = dpois(0,5)
# print(c)

# d = ppois(50,50) - ppois(47,50)
# print(d)

# Q.4
# e = dhyper(3, m=17, n=233,k=5)
# print(e)

# Q.5
x = seq(0,31) 
pmf = dbinom(x,31,0.447)
plot(x,pmf)
cdf = pbinom(x,31,0.447)
plot(x,cdf)
mean(x)
var(x)
sd(x)