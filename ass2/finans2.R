setwd("/home/arm/Projects/statistics/r_scripts/ass2")
D <- read.table("finans2_data.csv", header = TRUE, sep = ";")
D_test <- subset(D, ETF %in% c("AGG","VAW","IWN","SPY"))
D_model <- subset(D, !(ETF %in% c("AGG","VAW","IWN","SPY")))

# a)

des <- Hmisc::describe(D)
print(des)

par(mfrow=c(2,1))
plot(D$Geo.mean, D$Volatility, xlab="Geo.mean", ylab="Volatility", main="Geo.mean versus Volatility")
plot(D$Geo.mean, D$maxTuW, xlab="Geo.mean", ylab="maxTuW", main="Geo.mean versus maxTuW")

par(mfrow=c(2,2))
hist(D$Geo.mean, xlab="Geo.mean",main="Geo.mean" , prob=TRUE)
hist(D$Volatility, xlab="Volatility",main="Volatility" , prob=TRUE)
hist(D$maxTuW, xlab="maxTuW",main="maxTuW" , prob=TRUE)

par(mfrow=c(2,2))
boxplot(D$Geo.mean, ylab="Geo.mean", main="Geo.mean")
text(1.3, quantile(D$Geo.mean), c("Min.", "Q1", "Median", "Q3", "Max."))
boxplot(D$Volatility, ylab="Volatility", main="Volatility")
text(1.3, quantile(D$Volatility), c("Min.", "Q1", "Median", "Q3", "Max."))
boxplot(D$maxTuW, ylab="maxTuW", main="maxTuW")
text(1.4, quantile(D$maxTuW), c("Min.", "Q1", "Q3/Median", "", "Max."))

# c) 

fit <- lm(Geo.mean ~ Volatility + maxTuW, data = D_model)
summary(fit)

# d)
qqnorm(fit$residuals, ylab = "Residuals", xlab = "Z-scores",  main = "")
qqline(fit$residuals)

par(mfrow=c(1,2))
plot(fit$fitted.values, fit$residuals, main="Residuals against fitted values",xlab = "Fitted values", ylab = "Residuals")
plot(fit$fitted.values, D_model$Geo.mean, main="Observations against fitted values", xlab = "Fitted values",ylab = "Geom. average rate of return")

par(mfrow=c(1,2))
plot(D_model$Volatility, fit$residuals, 
     xlab = "Volatility", ylab = "Residuals")
plot(D_model$maxTuW, fit$residuals, 
     xlab = "maxTuW", ylab = "Residuals")

# e)
qt(1-0.05/2, df=88)
confint_beta1 <- confint(fit, level = 0.95)

# f)
(-0.0351310-(-0.06))/0.0097229
1-pt(2.557776, df=88)

# g)
fit <- lm(Geo.mean ~ Volatility, data = D_model)
summary(fit)

# h)
pred <- predict(fit, newdata = D_test, interval = "prediction", level = 0.95)
observed_predictions <- cbind(id = D_test$ETF, Geo.mean = D_test$Geo.mean, volatility=D_test$Volatility, pred)
observed_predictions <- cbind(observed_predictions,diff_obs_fit= as.numeric(observed_predictions[,2]) - as.numeric(observed_predictions[,3]) )
observed_predictions

plot(D_test$Volatility, D_test$Geo.mean, pch=19, col=8, xlab="Volatility", ylab="Geo.mean", ylim=c(-0.05,0.35))
points(D_test$Volatility, pred[,"fit"], pch=4, col=8)
lines(D_test$Volatility, pred[,"lwr"], col="grey", lty=2)
lines(D_test$Volatility, pred[,"upr"], col="grey", lty=2)
legend("topright", c("Observed", "Predicted", "Prediction interval"), pch=c(19,4,-1), lty=c(0,0,2), col=c(8,8), cex=0.7)
