# 3.1
sample <- c(3003, 3005, 2997, 3006, 2999, 2998, 3007, 3005, 3001)
mean <- mean(sample)
mean
sd <- sd(sample)
sd
error <- sd/sqrt(9)
error
var <- var(sample)
var
leftEndpointVar <- sqrt((16-1)*0.0959^2/qchisq(0.995, df=15))
leftEndpointVar
sqrt(leftEndpointVar)
rightEndpointVar <- sqrt((16-1)*0.0959^2/qchisq(0.005, df=15))
rightEndpointVar
sqrt(rightEndpointVar)

# 3.3
t.test(sample, mu=3000)

hist(sample, main = "Histogram of Concrete items", xlab= "Measurements")

qqnorm(sample, ylab="Measurements Quantiles")
qqline(sample)

## Define the plotting function
qqwrap <- function(x, y, ...){
  stdy <- (y-mean(y))/sd(y)
  qqnorm(stdy, main="", ...)
  qqline(stdy)}
## Do the Wally plot
wallyplot(x-mean(x), FUN=qqwrap, ylim=c(-3,3))

# 3.4 Aluminum profile
aluminum <- c(180.02, 180.00, 180.01, 179.97, 179.92, 180.05, 179.94, 180.10,180.24, 180.12, 180.13, 180.22, 179.96, 180.10, 179.96, 180.06)
t.test(aluminum, mu=180)

# 3.7  a)
Pulse_end <- c(173,175,174,183,181,180,170,182,188,178,181,183,185)
Pulse_1min <- c(120,115,122,123,125,140,108,133,134,121,130,126,128)
n <- length(Pulse_end)
mean_end <- mean(Pulse_end)
mean_1min <- mean(Pulse_1min)
sd_end <- sd(Pulse_end)
sd_1min <- sd(Pulse_1min)
sd_diff <- sd(Pulse_end-Pulse_1min)

mean_diff <- mean(Pulse_end) - mean(Pulse_1min)
c(mean_diff - qt(1-0.01/2, df=12)*sd_diff/sqrt(13), mean_diff + qt(1-0.01/2, df=12)*sd_diff/sqrt(13))

# 3.7 b) 

c(sqrt(12*var(Pulse_end)/qchisq(1-0.05/2, df=12)), sqrt(12*var(Pulse_end)/qchisq(0.05/2, df=12))) 


# 3.8 a)
2.508-2.103 - qt(1-0.05/2)*0.9664/sqrt(10)

# 3.8 b) 
((2.508-2.103)-0.35)/(0.09664/sqrt(10))
2*(1-pt(1.799723, df=9))

# 3.9 a)
tobs <- (6.420-7.375)/(sqrt((2.205^2/50)+(1.813^2/24)))
2*(1-pt(1.973387, df=54.38591))

s1 <- 2.205
n1 <- 50
s2 <- 1.813
n2 <- 24
v <- ((s1^2/n1)+(s2^2/n2))^2/
  (((s1^2/n1)^2/(n1-1))+((s2^2/n2)^2/(n2-1)))
v

# 3.9 b)
c(6.420-7.375-qt(1-0.01/2, df=v)*sqrt(2.205^2/50+1.813^2/24), 
  6.420-7.375+qt(1-0.01/2, df=v)*sqrt(2.205^2/50+1.813^2/24))

# 3.9 c)
n <- 24
sd <- 1.813
alpha <- 0.05
c(sqrt((n-1)*sd^2/qchisq(1-alpha/2, df=(n-1))),     
  sqrt((n-1)*sd^2/qchisq(alpha/2, df=(n-1)))) 


t.test(Pulse_end, Pulse_1min, paired = TRUE, conf.level = 0.99)
mean_end-mean_1min + qt(1-(0.01/2), v) * sqrt((sd_end^2/n)+(sd_1min^2/n))
                                            
