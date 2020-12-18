# Input
alpha <- 0.1
sd <- 277.789
ME <- 20/2 # Half width of the confidance interval

# Calculate
z <- qnorm(1-alpha/2)
n <- (z*sd/ME)^2
n
