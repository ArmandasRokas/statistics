
### Perform t.test by inputting mean and sd ###

# m1, m2: the sample means
# s1, s2: the sample standard deviations
# n1, n2: the same sizes
# m0: the null value for the difference in means to be tested for. Default is 0. 
# equal.variance: whether or not to assume equal variance. Default is FALSE. 
t.test2 <- function(m1,m2,s1,s2,n1,n2,m0=0,equal.variance=FALSE, conf.int=0.05)
{
  if( equal.variance==FALSE ) 
  {
    se <- sqrt( (s1^2/n1) + (s2^2/n2) )
    # welch-satterthwaite df
    df <- ( (s1^2/n1 + s2^2/n2)^2 )/( (s1^2/n1)^2/(n1-1) + (s2^2/n2)^2/(n2-1) )
  } else
  {
    # pooled standard deviation, scaled by the sample sizes
    se <- sqrt( (1/n1 + 1/n2) * ((n1-1)*s1^2 + (n2-1)*s2^2)/(n1+n2-2) ) 
    df <- n1+n2-2
  }      
  CI <- m1-m2 + c(-1,1)*qt(1-conf.int/2, df)*sqrt(s1^2/n1+s2^2/n2)
  t <- (m1-m2-m0)/se 
  dat <- c(m1-m2,df , se, t, 2*pt(-abs(t),df), CI)    
  names(dat) <- c("Difference of means", "df" , "Std Error", "t", "p-value", "CI low", "CI high")
  
  
  return(dat) 
}
t.test2(m1=1.93, m2=1.49, s1=0.45, s2=0.58, n1=9, n2=9)
