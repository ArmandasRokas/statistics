# Insert
x_bar <- 453.279
sd <- 272.322
alpha <- 0.05
n <-1310


# Calculate
qt <- qt(1-alpha/2, df=n-1)
res <- qt*(sd/sqrt(n))
c(x_bar-res, x_bar+res)

