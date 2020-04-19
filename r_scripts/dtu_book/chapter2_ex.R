# 2.5. a) The variance of Hypergeometric distrubution
n <- 3 # draws without replacement
a <- 2 # the number of successes in the large population 
N <- 20 # elements in the large population 
variance <- n * a*(N-a)*(N-n)/N^2/(N-1)
variance
sqrt(variance)
  # P(X=0)
  dhyper(0,2,18,3)  
  dpois(5, 1.6)
  ppois(8, 8)

  
# 2.9. 
  xSeq <- seq(-2,3, by=0.1)
  mean <- 0
  sd <- 1
  probability <- 0.975
  quantile <- qnorm(probability,mean,sd)
  cdfX <- pnorm(xSeq, mean = mean, sd = sd)
  plot(xSeq, cdfX, type="l",xlab="x", ylab="F(x)")
  abline(h=probability, col="red", lty=2)  
  abline(v=quantile, col="red", lty=2)  
  text(-1.8,probability-0.04, probability )
  text(quantile-0.2,0.02, round(quantile, digits=2) )  
  