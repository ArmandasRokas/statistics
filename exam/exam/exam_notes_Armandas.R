####################### 1 ####################### 
# Method 1.15

####################### 2 ####################### 
prop.test(62+113+37,255+433+153, correct=FALSE)

####################### 3 ####################### 

prop.test(c(62,37),c(255, 153), correct=FALSE)


####################### 4 ####################### 

expected <- 76*129/1268
contribution <- (10-expected)^2/expected
contribution


####################### 5 ####################### 
chiobs <- 29
nrow <- 5
ncol <- 4
p_value <- 1-pchisq(abs(chiobs), df=(nrow-1)*(ncol-1))
p_value

####################### 6 ####################### 
p <- 0.04
ME <- 0.01
n <- p*(1-p)*(qnorm(1-0.05/2)/ME)^2
n
####################### 7 ####################### 

# p-values are 0.481 and 0.165

####################### 8 ####################### 
# Guessed by
# quantile 0.975 and 124 degress of freedom by using information in second model

####################### 9 ####################### 

0.3481/(7.083*10^-3 )


####################### 10 ####################### 

qt(1-0.05/2, df=46)

####################### 11 ####################### 
# Theorem 2.47
# First insert 2015 and than substract results with results by inserting 2010

####################### 12 ####################### 
# By method 4.3
# Derivative with respect to m is 1/V^2
# Derivative with respect to V is m/V^2
# Insert everything in formula and take square root

####################### 13 ####################### 
x <- rnorm(100000)^2 + rnorm(100000)^2 + rnorm(100000)^2
hist(x)
c <- rchisq(100000,df=3)
hist(c)

####################### 14 ####################### 
replicate(10, rexp(1, 2))


####################### 15  ####################### 
# Quantiles 0.005, 0.995
# median is used as a function


####################### 16  ####################### 
# sample function is used
# median 
# Quantiles 0.005, 0.995

####################### 17  ####################### 
x <- 3 
a <- 3
N <- 20 
n <- 10 

dhyper(x=x,m=a,n=N-a,k=n)

####################### 18 ####################### 
mu <- exp(1+(0.7^2/2))
mu
####################### 19 ####################### 
prob_one <- 1-plnorm(10,1, 0.7)
1 - pbinom(2,20,prob_one)

####################### 20 ####################### 
# CLT
# mu is equal to mu calculated by 2.36 uniform distribution
# sigma^2 is equal to sigma^2 calculated by 2.36 and divided by n

####################### 21 ####################### 
# By 2.54:
# 2 disappears and 1/10^2 
####################### 22 ####################### 
n <- 90
mean <- 10.84
low_ci <- 9.346
s <- sqrt(90)*(mean-low_ci)/qt(1-0.05/2, n-1) 

qt <- qt(1-alpha/2, df=n-1)
res <- qt*(s/sqrt(n))
c(mean-res, mean+res)



####################### 23 ####################### 
# Insert
x_bar <- 10.84
sd <- 272.322
alpha <- 0.05
n <-1310


# Calculate
qt <- qt(1-alpha/2, df=n-1)
res <- qt*(sd/sqrt(n))
c(x_bar-res, x_bar+res)


#######################  24 ####################### 

# df=89, so n = 89+1, because 1 degree of freedom

####################### 25 ####################### 

# I think it is not paired, because the samples is taken in different months.

####################### 26 ####################### 
fobs <- qf(1- 0.05, df1=6,df2=357)
fobs
####################### 27 ####################### 
# By Theorem 8.4
# Used MSE
####################### 28 ####################### 
4934/(140016+4934)
####################### 29 ####################### 
x <- c(1.11, 0.94, -2.43, -0.90,
       0.29, -1.41,
       0.38,
       0.99, -0.50)
median(x, type=2)
####################### 30 ####################### 
# CLT , where degree of freedom is n-1 
