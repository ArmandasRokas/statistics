n <- 100
x1 <- runif(n)
x2 <- runif(n)
y <- x1 + 2*x2^2 + rnorm(n,sd=0.125)
plot(x1, y, pch=19, cex=0.5)
plot(x2, y, pch=19, cex=0.5)
