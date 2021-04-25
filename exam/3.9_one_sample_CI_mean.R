# Insert
x_bar <- 10.84
sd <- 7.133105
alpha <- 0.01
n <-90


# Calculate
qt <- qt(1-alpha/2, df=n-1)
res <- qt*(sd/sqrt(n))
c(x_bar-res, x_bar+res)

