# 4.1 a)

k <- 10000
xA <- rexp(k, 1/2)
xB <- rexp(k, 1/3)
xC <- rexp(k, 1/5)
x <- cbind(xA, xB, xC)
lifetimes <- apply(x,1, min) # 1 means that there should be used rows (NOT columns) for finding the minimum value
x
lifetimes
hist(lifetimes, col = "blue", nclass = 30) 

# 4.1 b)
mean(lifetimes)

# 4.1 c)
sd(lifetimes)

# 4.1 d)
mean(lifetimes<1)

# 4.1 e) 
median(lifetimes)

# 4.3 a)
k <- 10000
x <- c(38.43, 38.43, 38.39, 38.83, 38.45, 38.35,
       38.43, 38.31, 38.32, 38.48, 38.50)
simSamples <- replicate(k, sample(x, replace=TRUE))
simMeans <-   apply(simSamples,2, mean)
hist(simMeans)
quantile(simMeans, c(0.025, 0.975))

# 4.3 b)
xBar <- mean(x)
sBar <- sd(x)
simSamples <- replicate(k,rnorm(length(x),xBar, sBar))
simMean <- apply(simSamples, 2, mean)
quantile(simMean, c(0.025,0.975))

c(xBar - qt(0.975, df=length(x)-1)*sBar/sqrt(length(x)),
  xBar + qt(0.975, df=length(x)-1)*sBar/sqrt(length(x)))
t.test(x)

# 4.3 c)
logx <-log(x)
logxMean <- mean(logx) 
logxSd <- sd(logx)
sim_logx <- replicate(k, rlnorm(length(logx), logxMean, logxSd))
sim_mean <- apply(sim_logx, 2, mean)
quantile(sim_mean, c(0.025, 0.975))
sim_mean

# 4.3 d)

Q1 <- function(x) {quantile(x, 0.25)}
xBar <- mean(x)
sBar <- sd(x)
simSamples <- replicate(k,rnorm(length(x),xBar, sBar))
simQ1 <- apply(simSamples, 2, Q1)
quantile(simQ1, c(0.025,0.975))

# 4.3 e)
simSamples <- replicate(k, sample(x, replace=TRUE))
simQ1_nonparametric <-apply(simSamples,2, Q1)
quantile(simQ1_nonparametric, c(0.025, 0.975))
  
# 4.4 a)
tv1 <- c(1,2,1,3,2,1,2,3,1,1)
tv2 <- c(3,4,2,4,2,3,2,4,3,2)

k <- 100000
sim_tv1 <- replicate(k, sample(tv1, replace=TRUE))
sim_tv2 <- replicate(k, sample(tv2, replace=TRUE))
means_sim_tv1 <- apply(sim_tv1, 2, mean)
means_sim_tv2 <- apply(sim_tv2, 2, mean) 
sim_dif <- means_sim_tv1 - means_sim_tv2
quantile(sim_dif, c(0.025,0.975))

t.test(tv1, tv2)

# 4.4 c)
tv1 <- c(1,2,1,3,2,1,2,3,1,1)
tv2 <- c(3,4,2,4,2,3,2,4,3,2)

k <- 100000
n <- length(tv1)
sim_norm_tv1 <- replicate(k, rnorm(n, mean=mean(tv1),sd=sd(tv1) ))
sim_norm_tv2 <- replicate(k, rnorm(n, mean=mean(tv2),sd=sd(tv2) ))
means_sim_tv1 <- apply(sim_norm_tv1, 2, mean)
means_sim_tv2 <- apply(sim_norm_tv2, 2, mean) 
sim_norm_dif <- means_sim_tv1 - means_sim_tv2
quantile(sim_norm_dif, c(0.025,0.975))


# 4.5 d)
set.seed(28973)
n <- 10000
Ts <- rnorm(n, mean= 289.12, sd = 0.02 )
Vs <- rnorm(n, mean= 9.987, sd = 0.002)
p <- 8.31*Ts/Vs
mean(p)
sd(p)


