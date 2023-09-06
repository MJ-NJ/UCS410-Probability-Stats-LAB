## Q-1
# x <- c(0,1,2,3,4)
# px <- c(0.41, 0.37, 0.16, 0.05, 0.01)
# expected_value <- sum(x * px)
# print(expected_value)

## Q-2
# f <- function(t){t*0.1*exp(-0.1*t)}
# ExpVal <- integrate(f, lower=0, upper = Inf)
# print(ExpVal$value)

## Q-3
# x <- c(0,1,2,3)
# probx <- c(0.1,0.2,0.2,0.5)
# y <- 10*x-12
# proby <- probx
# ExpVal <- sum(y*proby)
# print(ExpVal)

## Q-4
# First Moment
# f1 <- function(t){t*0.5*exp(-abs(t))}
# Moment1 <- integrate(f1, lower=1, upper = 10)
# print(Moment1$value)
# # Second Moment
# f2 <- function(t){t^2*0.5*exp(-abs(t))}
# Moment2 <- integrate(f2, lower=1, upper = 10)
# print(Moment2$value)
# # Mean
# Meanval <- Moment1$value
# print(Meanval)
# # Variance
# f3 <- function(M1, M2){return(M2 - M1*M1)}
# Varval = f3(Moment1$value, Moment2$value)
# print(Varval)

## Q-5
# f <- function(y){(3/4)*(1/4)^(sqrt(y)-1)}
# x<-3
# y = x^2
# p <- f(y)
# print(p)
# #expected value and variance of Y for X = 1,2,3,4,5
# f <- function(y){(3/4)*(1/4)^(sqrt(y)-1)}
# x<- c(1,2,3,4,5)
# y<-x^2
# Exp1 <- sum(y*f(y))
# print(Exp1)
# #
# Exp2<-sum(y*y*f(y))
# Var<-Exp2-(Exp1)^2
# print(Var)