data <- c(62,
          255,
          113,
          433,
          37,
          153)
X <- matrix(data, nrow =2, byrow=FALSE) # Filled by columns 
X
res <- chisq.test(X, correct = FALSE)
res
res$expected

# p-value
df <- res$parameter
p_value <- 1-pchisq(res$statistic, df=df)
p_value
# Could be used in order to calculate test-statistics
(X -  res$expected)^2

