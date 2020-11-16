# Page 77. Use the functions to make a plot of the normal pdf 
# with marks of the 2.5%, 5%, 95%, 97.5% quantiles 
xSeq <- seq(-3, 3, by=0.1)
# pdfX <- 1/(sigmaX*sqrt(2*pi)) * exp(-(xSeq-muX)^2/(2*sigmaX^2))
pdfX <- dnorm(xSeq, mean=0, sd=1)
plot(xSeq, pdfX, type="l", ylab="f(x)")
xAxisQuantiles <- qnorm(c(0.025,0.05,0.95,0.975), mean=0, sd=1)
yAxisQuantiles <- dnorm(qnorm(c(0.025,0.05,0.95,0.975)))
points(xAxisQuantiles,yAxisQuantiles)
text(xAxisQuantiles+0.5,yAxisQuantiles+0.01, labels= c("2.5%","5%","95%","%97.5"), cex= 0.7)
hist(rnorm(n=100, mean=0, sd=1))


# Page 77. Make a plot of the normal pdf and a histogram (empirical pdf) 
# of 100 simulated realizations.
hist(rnorm(n=100, mean=0, sd=1))


