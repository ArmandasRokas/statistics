
D <- read.table("finans1_data.csv", header=TRUE, sep=";", as.is=TRUE)
D <- D[ ,c("t","AGG","VAW","IWN","SPY")]

# a) 
D$t <- as.Date(D$t)
summary(D$t)
nrow(D)
sum(is.na(D))

# b)
hist(D$AGG, xlab="Return (AGG)", prob=TRUE)

# c) 
D$t <- as.Date(x=D$t, format="%Y-%m-%d")
ylim <- c(-0.2,0.2)
plot(D$t, D$AGG, type="l", ylim=ylim, xlab="Date", ylab="Return AGG")
plot(D$t, D$VAW, type="l", ylim=ylim, xlab="Date", ylab="Return VAW")
plot(D$t, D$IWN, type="l", ylim=ylim, xlab="Date", ylab="Return IWN")
plot(D$t, D$SPY, type="l", ylim=ylim, xlab="Date", ylab="Return SPY")

# d)
boxplot(D$AGG, D$VAW, D$IWN, D$SPY, names=c("AGG", "VAW", "IWN", "SPY"),
        xlab="ETF", ylab="Return")
text(4.54, quantile(D$SPY), c("Min", "Q1", "Median", "Q3", "Max"), cex= 0.6)

# e) 

library(Hmisc)
des <- Hmisc::describe(D)
print(des)

varAGG <- var(D$AGG, na.rm=TRUE)
varVAW <- var(D$VAW, na.rm=TRUE)
varIWN <- var(D$IWN, na.rm=TRUE)
varSPY <- var(D$SPY, na.rm=TRUE)
sAGG <- sqrt(varAGG)
sVAW <- sqrt(varVAW)
sIWN <- sqrt(varIWN)
sSPY <- sqrt(varSPY)

# f)
library(MESS)
qqwrap <- function(x, y, ...){
  stdy <- (y-mean(y))/sd(y)
  qqnorm(stdy, main="", ...)
  qqline(stdy)}

wallyplot(D$AGG, FUN=qqwrap, ylim=c(-3,3))
wallyplot(D$VAW, FUN=qqwrap, ylim=c(-3,3))
wallyplot(D$IWN, FUN=qqwrap, ylim=c(-3,3))
wallyplot(D$SPY, FUN=qqwrap, ylim=c(-3,3))


# g)
qt(0.975,454-1)
t.test(D$AGG, conf.level=0.95)$conf.int
t.test(D$VAW, conf.level=0.95)$conf.int
t.test(D$IWN, conf.level=0.95)$conf.int
t.test(D$SPY, conf.level=0.95)$conf.int

# h) 
tobsAGG <- (mean(D$AGG))/(sAGG/sqrt(454))
2*(1-pt(tobsAGG, df=454-1))

# i)	
tobsAGGVAW <- (mean(D$AGG)-mean(D$VAW))/(sqrt((sAGG^2/454)+(sVAW^2/454)))
vAGGVAW <- ((sAGG^2/454)+(sVAW^2/454))^2/(((sAGG^2/454)^2/(454-1))+((sVAW^2/454)^2/(454-1)))
2*(1-pt(abs(tobsAGGVAW), df=vAGGVAW))

# k)
attach(D)
  covVAW_IWN <- sum((VAW-mean(VAW))*(IWN-mean(IWN)))/453  
  corrVAW_IWN <-covVAW_IWN / (sqrt(varVAW)*sqrt(varIWN))
detach(D)

plot(D$VAW, D$IWN, xlab="VAW", ylab="IWN")



