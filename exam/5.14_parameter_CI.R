# Insert
beta_hat <- 5.031*10^3
alpha <- 0.05
s <-9.455*10^2
n <- 10

# Calculate
qt <- qt(1-alpha/2, df=n-2)
beta_hat + 1*c(-1,1)*qt*s