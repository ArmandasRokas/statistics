  x <- c(168, 161, 167, 179, 184, 166, 198, 187, 191, 179)
  y <- c(65.5, 58.3, 68.1, 85.7, 80.5, 63.4, 102.6, 91.4, 86.7, 78.9)
  D <- data.frame("Height"=x, "Weight"=y)
  fitStudents <- lm(weight ~ height, data=D)
  summary(fitStudents)
  fitStudents$residuals
  
  coef(fitStudents)
  beta0 <- coef(fitStudents)[1]
  
  beta0 <- coef(fitStudents)[1]
  beta1 <- coef(fitStudents)[2]
  e <- y - (beta0 + beta1 * x)
  n <- length(e)
sigma <- sqrt(sum(e^2) / (n - 2))
sigma.beta0 <- sqrt(sigma^2 * (1 / n + xbar^2 / Sxx))
sigma.beta1 <- sqrt(sigma^2 / Sxx)
c(sigma, sigma.beta0, sigma.beta1)


# Example 5.7 
n <- 100000; k <- 1000
beta0 <- 10; beta1 <- 3; sigma <- 5
x <- seq(-2, 5, length=n)
y <- matrix(0, ncol=k, nrow=n)
y <- y + beta0 + beta1*x + rnorm(n*k, sd=sigma)


b0 <- numeric(k); b1 <- numeric(k)
for(i in 1:k){
  b <- coef(lm(y[ ,i] ~ x))
  b0[i] <- b[1]
  b1[i] <- b[2]
}
c(mean(b0), mean(b1))
