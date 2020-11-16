## Read the data
x <- c(32.6, 1.6, 42.1, 29.2, 53.4, 79.3, 2.3 , 4.7, 13.6, 2.0)
n <- length(x)
## Set the number of simulations
k <- 3
## 1. Simulate 10 exponentials with the right mean k times
set.seed(9876)
simsamples <- replicate(k, rexp(10,1/26.08))
## 2. Compute the mean of the 10 simulated observations k times
simmeans <- apply(simsamples, 2, mean)
## 3. Find the two relevant quantiles of the k simulated means
quantile(simmeans, c(0.025, 0.975))
simsamples


