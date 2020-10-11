# 8.1 b)
qf(0.95, df1=2, df2=15)

F <- (7.3884/2)/(4.1060/15)
F<- 3.6942 / 0.274
F

pvalue <- 1-pf(F, df1=2, df2=15)
pvalue


 4.0483 - 5.5517 + c(-1,1) * qt((1-0.1/2), 15) * sqrt(0.274*(1/6+1/6))

# 8.2 a)
 
 nitrogen <- c(5.01, 5.59, 3.02,
               6.23, 5.13, 4.76,
               5.98, 5.33, 3.46,
               5.31, 4.65, 4.12,
               5.13, 5.52, 4.51,
               5.65, 4.92, 4.42)
 year <- factor(rep(c("1998", "2003", "2011"), 6))
 
 
tapply(nitrogen, year, mean)

 tapply(nitrogen, year, var)

 mean(nitrogen)
 
 
 SST <- sum((nitrogen-mean(nitrogen))^2)
SST
  
sum_SSE_each <- function(x){return(sum((x-mean(x))^2))}
SSE <-  sum(tapply(nitrogen, year, sum_SSE_each))
SSE

alpha <- tapply(nitrogen, year, mean) - mean(nitrogen)
SSTr <- 6*sum(alpha^2)
SSTr

# 8.2 b)


SST <- (length(nitrogen)-1)*(var(nitrogen))
SST

# 8.2 c)

anova(lm(nitrogen ~ year))


# 8.2 d)

alpha_bonferroni <- 0.05/3
alpha_bonferroni

LSD <- qt(1-alpha_bonferroni/2, df=length(nitrogen)-length(unique(year)))*sqrt(2*0.2737/ 6)
LSD

plot(year, nitrogen, xlab="Nitrogen", ylab="Year")
text(1:3, c(5.7, 5.4, 4), c("a", "a", "b"), cex=2)

# 8.2 e)

library(MESS)
qqwrap <- function(x, y, ...){
  stdy <- (y-mean(y))/sd(y)
  qqnorm(stdy, main="", ...)
  qqline(stdy)}
wallyplot(lm(nitrogen~year)$residuals, FUN=qqwrap, ylim=c(-3,3))


# 8.3 a)

df1 <- 4
df2 <- 95
SSTr <- 62
SSE <- 362.71

F <- (SSTr/df1)/(SSE/df2)
pv <- 1-pf(F, df1=df1, df2=df2)
pv


# 8.3 b)
df2 <- 95
mean1 <- 31.4
mean4 <- 31.3
MSE <- 362.71/df2
n1 <- 20
n4 <-20


mean1 - mean4 + c(-1,1) * qt((1-0.05/2), df2) * sqrt(MSE*(1/n1+1/n4))


# 8.4 a)

MSE <- 23.983
df2 <- 24
SSE <- MSE * df2
SSE


# 8.4 c)
df2 <- 24
mean1 <- mean(c(82.5,83.7,80.9,95.2,80.8))
mean2 <- mean(c(82.7,81.9,78.9,83.6,78.6))
MSE <- 23.983
n1 <- 5
n2 <-5


mean1 - mean2 + c(-1,1) * qt((1-0.05/2), df2) * sqrt(MSE*(1/n1+1/n2))






