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
colors <- c("red", "green", "purple")
for (i in 1:3) {
  lines(x, pdf_values[, i], col = colors[i])
}

# Q.4
percentile <- qf(0.95, 10, 20)
percentile

area_0_1.5 <- pf(1.5, 10, 20)
area1.5_infi <- 1 - area_0_1.5
area_0_1.5
area1.5_infi

 qf(0.25, df1 = 10, df2 = 20)
 qf(0.5, df1 = 10, df2 = 20)
 qf(0.75, df1 = 10, df2 = 20)
 qf(0.999, df1 = 10, df2 = 20)

random_val <- rf(1000, df= 10, df2 = 20)
hist(random_val)