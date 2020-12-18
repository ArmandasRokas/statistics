# Define statistics (optional)
q90 <- function(x){quantile(x,prob=0.9, type=2)}

# Sample
x <- c(1.6, 2, 3.4, 4, 2.1, 0.6, 0.4, 0.4, 6, 0.4, 4.9, 2, 2, 4.6, 0.5,
       3.4, 7.2, 10.5, 3.2, 1.3, 5.7, 1.9, 2.6, 2.5, 4.4, 1.8, 3.9, 6, 0.9)

# Calculate
simsamples <- replicate(10000, sample(x, replace = TRUE))
simmeans <- apply(simsamples, 2, q90) # q90 can be to be replaced with mean or sd
quantile(simmeans, c(0.025, 0.975))
