k <- 100000
# Input
x <- rnorm(k,4,sqrt(.2))
y <- rnorm(k,2,sqrt(.2))
z <- 1/(1/x+1/y)   #2*y^2+x^3/3

# Calculate
mean(z)
var(z)
sd(z)
