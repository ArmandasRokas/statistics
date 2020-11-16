# 5.2 a)

t <-c(10,20,30,40,50,60,70,80,90)
y <-c(420,365,285,220,176,117,69,34,5)
tbar <- mean(t)
ybar <- mean(y)
 
# Find parameter estimates
Sxx <- sum((t-tbar)^2)
beta1hat <- sum((t-tbar)*(y-ybar))/Sxx
beta0hat <- ybar - beta1hat*tbar

# Find the error variance estimate
e <- y - (beta0hat + beta1hat*t)
sigmahat <- sqrt(sum(e^2)/(length(t)-2)) 

# Find the standart error for the slope
sigmabeta1 <- sqrt(sigmahat^2/Sxx)
sigmabeta1
# Find CI for the slope (Method 5.15)
c( beta1hat - qt((1-0.05/2), df=length(t)-2)*sigmabeta1, 
beta1hat + qt((1-0.05/2), df=length(t)-2)*sigmabeta1
)





# 5.2 b)
tobsbeta1 <- beta1hat/sigmabeta1
pvalue1 <- 2*(1 - pt(abs(tobsbeta1), df=length(t)-2 ))


# 5.3 a)

x <- c(0,25,50,75,100)
y <- c(14,38,54,76,95)
fit <- lm( y ~ x)

alpha <- 0.05
xnew <- 80
# By method 5.18
fitvalue <- coef(fit)[1]+ coef(fit)[2]*xnew 
range <- qt((1-alpha/2),df=length(x)-2)*sigma(fit)*sqrt(1/length(x)+(xnew-mean(x))^2/sum((x-mean(x))^2))

c(fitvalue-range, fitvalue+range)

# By using predict function
predict(fit, newdata=data.frame(x=xnew), interval="confidence",
        level=1-alpha)


# 5.3 c)
sort(fit$residuals)[4]

# 5.4 a)
x <- c(15,25,35,40)
y <- c(42.1,36.0,31.8,28.7)
xbar <- 28.75
ybar <- 34.65
Sxx <- 368.75
fit <- lm(y~x)
out <- summary(fit)
beta1hat <- coef(fit)[2]
sigmabeta1 <- out$coefficients[2, 2]
c( beta1hat - qt((1-0.05/2), df=length(x)-2)*sigmabeta1, 
   beta1hat + qt((1-0.05/2), df=length(x)-2)*sigmabeta1
)

# 5.4 b)
pvalue1 <- out$coefficients[2,4]
pvalue1

pvalue1 > 0.05

# 5.4 c)
alpha <- 0.05
c(qt(alpha/2, df=2),qt(1-alpha/2, df=2))


# 5.5 a)
distances <-c(2,4,6,8,10)
concentrations <- c(11.5, 10.2, 10.3, 9.68, 9.32)
fit <- lm(concentrations ~ distances)
out <- summary(fit)
beta0hat <- coef(fit)[1]
beta1hat <- coef(fit)[2]
sigmahat <- sigma(fit)
alpha <- 0.05
dnew <- 7
predict(fit, newdata=data.frame(distances=dnew), interval="confidence", level=1-alpha)

# 5.6 a)

D <- data.frame(
  pressure=c(1.02,2.08,2.89,4.01,5.32,5.83,7.26,7.96,9.11,9.99),
  flux=c(1.15,0.85,1.56,1.72,4.32,5.07,5.00,5.31,6.17,7.04)
)

fit <- lm(flux ~ pressure, data=D)
out <- summary(fit)
sqrt(out$r.squared)
cor(D$pressure, D$flux)

# 5.6 b)
alpha <- 0.1
beta1hat <- coef(fit)[2]
sigmabeta1 <- out$coefficients[2, 2]
c( beta1hat - qt((1-alpha/2), df=out$df[2])*sigmabeta1, 
   beta1hat + qt((1-alpha/2), df=out$df[2])*sigmabeta1
)
0.7225-1.860* 0.0706
out

# 5.6 c)
beta0hat <- coef(fit)[1]
beta1hat <- coef(fit)[2]
varNotExplained <-sum((D$flux - (beta0hat + beta1hat*D$pressure))^2) /  sum((D$flux-mean(D$flux))^2)
varNotExplained

1 - cor(D$pressure, D$flux)^2

# 5.6 d)
pvalue0 <- out$coefficients[1,4]
pvalue0

# 5.6 e)
alpha <- 0.05
xnews <- c(3.5,5.0, 9.5)

CIs <- predict(fit, newdata=data.frame(pressure=xnews), interval="confidence", level=1-alpha)
constants <- numeric(3)

for (i in 1:3){
  constants[i] <- CIs[i,3]-CIs[i,1]  
}
constants
