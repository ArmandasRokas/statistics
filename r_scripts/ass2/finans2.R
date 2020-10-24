setwd("/home/arm/Projects/statistics/r_scripts/ass2")
D <- read.table("finans2_data.csv", header = TRUE, sep = ";")
D_test <- subset(D, ETF %in% c("AGG","VAW","IWN","SPY"))
D_model <- subset(D, !(ETF %in% c("AGG","VAW","IWN","SPY")))

# a)

des <- Hmisc::describe(D)
print(des)

# c) 

fit <- lm(Geo.mean ~ Volatility + maxTuW, data = D_model)
summary(fit)


# e)
qt(1-0.05/2, df=88)


# f)
(-0.0351310-(-0.06))/0.0097229
1-pt(2.557776, df=88)

