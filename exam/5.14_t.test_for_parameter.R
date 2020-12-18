# Insert
x_bar <- 1.019*10^8
mu_0 <- 1.005*10^8
s <- 5.867*10^4
n <- 10
alpha <- 0.05

# Calculate
tobs <- (x_bar-mu_0)/(s)
tobs

p_value <- 2*(1 - pt(abs(tobs) ,df=n-2 ))
p_value
