# 3.5 Trasnport times

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


# 3.5 c
power.t.test(n=9, delta=0.4, sd=0.5, sig.level=0.05)

# 3.5 d
power.t.test(n=9, sd=0.5, sig.level=0.05, power=0.8)

# 3.5 e
power.t.test(sd=0.5, sig.level=0.05, power=0.9, delta=0.4)

# 3.10 a

(qnorm(1-0.1/2)*3/1)^2

# 3.10 d
power.t.test(sd=3, n = 25, sig.level=0.05, delta = 1:3, type="one.sample")
ds = seq(0, 3, 0.1)
powers25 <- power.t.test(n = 25, delta = ds, sd = 3, sig.level = 0.05,
                         type = c("one.sample"))$power
plot(ds, powers25, type = "l")

# 3.10 e
power.t.test(sd=3, n = 60, sig.level=0.05, delta = 1:3, type="one.sample")
ds = seq(0, 3, 0.1)
powers60 <- power.t.test(n = 60, delta = ds, sd = 3, sig.level = 0.05,
                         type = c("one.sample"))$power
plot(ds, powers60, type = "l")
lines(ds, powers25, col="red")
legend(2,0.6,c("n=60", "n=25"), col=c("black", "red") , lty=c(1,1))
# 3.10 f
power.t.test(sd=3, sig.level=0.05, power=0.80,delta =0.5, type="one.sample")

# 3.10 g
power.t.test(sd=3, n = 50, sig.level=0.05, power=0.80, type="one.sample")

# 7.3 c
p <- 0.3
ME <- 0.01
alpha <- 0.01
p*(1-p)*(qnorm(1-alpha/2)/(ME/2))^2

# 7.4 c

p <- 0.2
alpha <- 0.05
n <- 1537
ME <- sqrt(p*(1-p)*qnorm(1-alpha/2)^2/n)
ME


