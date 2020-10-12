data <- c(55,20,57,18)
X <- matrix(data, nrow=2) # Filled by columns 
res <- chisq.test(X, correct = FALSE)
res$expected

# Could be used in order to calculate test-statistics
(X -  res$expected)^2


