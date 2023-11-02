# Q.1
# n <- 100
# df <- n - 1
# t_dist <- rt(n, df)
# hist(t_dist)

# Q.2
# df <- c(2,10,25)
# n <- 100
# par(mfrow = c(1,3))
# for (i in df) {
#   chisq_hist <- rchisq(n,i)
#   hist(chisq_hist)
# }

# Q.3
x <- seq(6, -6, length.out = 100)
df_values <- c(1, 4, 10, 30)
pdf_values <- sapply(df_values, function(df) dt(x, df))

plot(x, pdf_values[, 4])