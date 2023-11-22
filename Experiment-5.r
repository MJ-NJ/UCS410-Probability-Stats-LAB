# QUESTION-1
# print(punif(45,0,60,lower.tail=FALSE))
# print(punif(30,0,60)-punif(20,0,60))

# QUESTION-2
# lambda = 0.5
# x = 3
# print(dexp(x,lambda))

x_values <- seq(0, 5, by = 0.1)
# densities <- dexp(x_values, rate = lambda)
# plot(x_values, densities, type = "l", xlab = "x", ylab = "Density", main = "Exponential Probability Density")

# print(pexp(3, rate = lambda))

cumprob <- pexp(x_values, rate = 0.5)
plot(x_values, cumprob, type = "l", xlab = "x", ylab = "Cumulative Probability", main = "Exponential Cumulative Probability")

# data <- rexp(1000, rate = lambda)
# plot(density(data), main = "Exponential Density Estimate")

# QUESTION-3
alpha <- 2
beta <- 1/3
# c <- 1
# print(1 - pgamma(c, shape = alpha, rate = beta))

desired <- 0.70
print(qgamma(desired,shape=alpha,rate=beta))