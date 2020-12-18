# Simulate log-normal distribution
l <- rlnorm(1000,mean=0, sd=1)
qqnorm(l)
qqline(l)

# Chi squared
c <- rchisq(1000,df=12)
hist(c)


# Exponential
e <- rexp(1000, rate=1)
hist(e)


# F distribution
f <- rf(1000, df1=1, df2=2)
hist(f, xlim =c(-1,10), breaks=1000)


# t distribution
t <- rt(10000, df=1)
hist(t, xlim =c(-10,10), breaks=10000)


# Uniform distribution
u <- runif(1000, min=-9,max=11)
hist(u)
