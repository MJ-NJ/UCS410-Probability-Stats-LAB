# Q.1
# coins <- c(rep("gold", 20), rep("silver", 30), rep("bronze", 50))
# sample_spaces <- t(replicate(10000, sample(coins, 10, replace = FALSE)))

# head(sample_spaces)

# X <- c("success","FAILURE")
# sample(X, 10, replace=T, prob=c(0.9,0.1))

# Q2
# num_simulations <- 100
# results <- numeric(num_simulations)

# has_birthday_match <- function(n) {
#     birthdays <- sample(1:365, n, replace = TRUE)
#     has_match <- length(birthdays) != length(unique(birthdays))
#     return(has_match)
# }
# for (n in 1:100) {
#     matches <- replicate(num_simulations, has_birthday_match(n))
#     prob_match <- mean(matches)
#     results[n] <- prob_match
# }
# plot(1:100, results, type = "l", xlab = "Number of People (n)", ylab = "Probability of a Birthday Match")

# num_simulations <- 100
# smallest_n <- NULL

# has_birthday_match <- function(n) {
#     birthdays <- sample(1:365, n, replace = TRUE)
#     has_match <- length(birthdays) != length(unique(birthdays))
#     return(has_match)
# }

# n <- 1
# while (is.null(smallest_n)) {
#     matches <- replicate(num_simulations, has_birthday_match(n))
#     prob_match <- mean(matches)
#     if (prob_match >= 0.5) {
#         smallest_n <- n
#     }
#     n <- n + 1
# }
# cat("The smallest value of n with a match probability > 0.5 is:", smallest_n, "\n")

# Q3
# cond_prob <- function(p_a,p_b,p_b_given_a,p_b_given_not_a){
# return((p_a * p_b_given_a) / ((p_a * p_b_given_a) + ((1 - p_a) * p_b_given_not_a)))
# }
# cloudy <- 0.4
# rain_given_cloudy <- 0.85
# rain_given_not_cloudy <- 0.2
# result <- cond_prob(cloudy, 0.6,rain_given_cloudy, rain_given_not_cloudy)
# print(result)

# Q4
# data(iris)
# print(head(iris)) # HEAD - first 6
# str(iris) # STRUCTURE
# range_sepal_length <- range(iris$Sepal.Length)
# print(range_sepal_length)

# mean_sepal_length <- mean(iris$Sepal.Length)
# print(mean_sepal_length)

# median_sepal_length <- median(iris$Sepal.Length)
# print(median_sepal_length)

# quartiles1 <- quantile(iris$Sepal.Length, probs = c(0.25, 0.75))
# iqr1 <- quartiles1[2] - quartiles1[1]
# print(quartiles1)
# print(iqr1)

# std_dev1 <- sd(iris$Sepal.Length)
# variance1 <- var(iris$Sepal.Length)
# print(std_dev1)
# print(variance1)

# ### WIDTH of SEPAL
# range_sepal_Width <- range(iris$Sepal.Width)
# print(range_sepal_Width)

# mean_sepal_Width <- mean(iris$Sepal.Width)
# print(mean_sepal_Width)

# median_sepal_Width <- median(iris$Sepal.Width)
# print(median_sepal_Width)

# quartiles2 <- quantile(iris$Sepal.Width, probs = c(0.25, 0.75))
# iqr2 <- quartiles2[2] - quartiles2[1]
# print(quartiles2)
# print(iqr2)

# std_dev2 <- sd(iris$Sepal.Width)
# variance2 <- var(iris$Sepal.Width)
# print(std_dev2)
# print(variance2)

# ### LENGTH OF PETAL
# range_Petal_length <- range(iris$Petal.Length)
# print(range_Petal_length)

# mean_Petal_length <- mean(iris$Petal.Length)
# print(mean_Petal_length)

# median_Petal_length <- median(iris$Petal.Length)
# print(median_Petal_length)

# quartiles3 <- quantile(iris$Petal.Length, probs = c(0.25, 0.75))
# iqr3 <- quartiles3[2] - quartiles3[1]
# print(quartiles3)
# print(iqr3)

# std_dev3 <- sd(iris$Petal.Length)
# variance3 <- var(iris$Petal.Length)
# print(std_dev3)
# print(variance3)

# ### WIDTH OF PETAL
# range_Petal_Width <- range(iris$Petal.Width)
# print(range_Petal_Width)

# mean_Petal_Width <- mean(iris$Petal.Width)
# print(mean_Petal_Width)

# median_Petal_Width <- median(iris$Petal.Width)
# print(median_Petal_Width)

# quartiles4 <- quantile(iris$Petal.Width, probs = c(0.25, 0.75))
# iqr4 <- quartiles4[2] - quartiles4[1]
# print(quartiles4)
# print(iqr4)

# std_dev4 <- sd(iris$Petal.Width)
# variance4 <- var(iris$Petal.Width)
# print(std_dev4)
# print(variance4)

# summary(iris)

# calculate_mode <- function(x) {
#     tbl <- table(x)
#     mode_value <- as.numeric(names(tbl)[which.max(tbl)])
#     return(mode_value)
# }
# data <- c(1, 2, 3, 2, 4, 4, 5, 6, 6, 6)
# mode_result <- calculate_mode(data)
# print(mode_result)