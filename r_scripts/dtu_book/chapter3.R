# Example 3.15 
xSeq <- seq(-0.5, 1.5, by=0.0001)
dunif <- dunif(xSeq)
plot(xSeq, dunif, type="l", ylab="f(x)")
dunif(-0.0)


# Example 3.16
k <- 10
ThousandCIs <- replicate(k, t.test(rnorm(n=5000, mean=1, sd=1))$conf.int)
ThousandCIs
## Count how often 1 is covered
sum(ThousandCIs[1,] < 1 & 1 < ThousandCIs[2,])


# Example 3.44
radon <- c(2.4, 4.2, 1.8, 2.5, 5.4, 2.2, 4.0, 1.1, 1.5, 5.4, 6.3,
           1.9, 1.7, 1.1, 6.6, 3.1, 2.3, 1.4, 2.9, 2.9)
par(mfrow = c(1,2))
hist(radon)
qqnorm(radon, ylab = "Sample quantiles", xlab = "Normal quantiles")
qqline(radon)
?qqnorm
q