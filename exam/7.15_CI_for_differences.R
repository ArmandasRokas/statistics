# Insert
n1 <- 68+208
n2 <- 18+74
p1 <- 68/n1
p2 <- 18/n2
alpha <- .05

# Calculate
sigma_differences <- sqrt(p1*(1-p1)/n1+p2*(1-p2)/n2)
p1-p2 + c(-1,1) * qnorm(1-alpha/2)*sigma_differences
