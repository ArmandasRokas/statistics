# 7.1 Passing proportions

n1 <- 108
n2 <- 143
p1 <- 82/n1
p2 <- 104/n2

SEp1 <- sqrt(p1*(1-p1)/n1)
SEp2 <- sqrt(p2*(1-p2)/n2)
SEp1p2 <- sqrt(SEp1^2+SEp2^2)
SEp1p2

(p1-p2) - qnorm(1-0.05/2) * SEp1p2

(p1-p2) + qnorm(1-0.05/2) * SEp1p2

prop.test(x=c(82,104), n=c(n1,n2), correct=FALSE)
?prop.test
qchisq(1-0.01, df=1)

# 7.2
n <- 250
xDK <- 250*0.44 
zobs <- (110 - 250*0.5)/(sqrt(250*0.5*(0.5)))
zobs
pvalue <- 2* (1-pnorm(abs(zobs)))
pvalue

prop.test(x= xDK, n = n, p = 0.5, correct=FALSE)

  qchisq(0.95, df=2)

lighting <- matrix(c(7.2*2.5, 6.4*2.5,28*2.5,34.8*2.5,8.8*2.5,14.8*2.5), ncol = 2, byrow=TRUE)
lighting
help(matrix)
chisq.test(lighting)
?chisq.test
  
# 7.3 
  n <- 740
  x <- 168
  p0 <- 0.295
  zobs <- (x - n*p0)/(sqrt(n*p0*(1-p0)))
zobs
pvalue <- 2 * (1-pnorm(abs(zobs)))
pvalue
sprintf("%.10f", pvalue)
abs(zobs)
qnorm(1-(0.001/2))


p <- 0.227
qnorm(1-0.05/2) * sqrt((p*(1-p))/(n))

prop.test(x=168 , n=740 , p=0.295, correct=FALSE)

# 7.4
pA <- 6/50
pB <- 12/50
p <- 18/100
nA <- 50
nB <- 50
zobs = (pA-pB)/
  (sqrt(p*(1-p)*(1/nA+1/nB)))

zobs
qnorm(1-0.05/2)

prop.test(x=c(6,12), n=c(50,50), correct = FALSE, conf.level = 0.95)
chisq.test(matrix(c(6,12,44,38), ncol = 2), correct = FALSE)


n <- 200
p <- 36/200
z <- qnorm(1-0.01/2)
p - z * sqrt(p*(1-p)/n)
p + z * sqrt(p*(1-p)/n)


?qnorm
# 7.5
pvalue <- 1 - pchisq(10.985, df=4)
pvalue
training <- matrix(c(11,27,15,14,40,30,5,23,35), ncol = 3, byrow = TRUE)
colnames(training)  <- c("Below averga", "Average", "Above average")
rownames(training) <- c("Bad job success", "Average job success", "Good job success")
training
chi <- chisq.test(training, correct = FALSE)
chi

