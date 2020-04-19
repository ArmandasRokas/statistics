y <- 3
x <- 2
y + x 

z <- c(168,161,167,179,184,166,198,187,191,179) # Concatenate numbers to a vector
z

q <- 1:10 # A sequence from 1 to 10
q

n <- seq(0,1,by=0.1) # Sequence with specified steps
n

?seq # Help

mean(z) # Mean / average 
median(z) # Median
var(z) # Sample variance
sqrt(var(z)) # Sample standart deviation
sd(z) # Sample standart deviation
quantile(z, type=2) # Sample quariles
quantile(z, probs=seq(0,1, by=0.10), type=2) # Sample quantiles 0%, 10% ...
hist(z) # Histogram
hist(z, prob=TRUE, col="red", nclass=8)

ages <- rep(c(19,20,21,145,147), times = c(3,6,3,1,1)) # rep(c(0, 7), times = c(4,2))
hist(ages, breaks = 10)

hours <- rep(c(1, 2, 4 , 6 , 12), times = c(4300, 6900, 4900,2000,2100)) 

hist(hours, prob=TRUE, col="red",
     breaks = c(0, 1,3,5,10, 24)) # nclass = 8


# Empirical cumulative distribution plot
plot(ecdf(hours), verticals=TRUE) 


heights <- c( 3, 3, 6, 7, 7, 10, 10, 10, 11, 13,15,  30)
boxplot(heights, range=0, col="red", main="Basic box plot") # range=0 makes it "basic"
text(1.3, quantile(heights), c("Minimum","Q1","Median","Q3","Maximum"),
     col="blue")
?hist


