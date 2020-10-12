x_bar <- -22.6
mu_0 <- 0
s <- 45.5
n <- 40
alpha <- 0.05


tobs <- (x_bar-mu_0)/(s/sqrt(n))
tobs

p_value <- 2*(1 - pt(abs(tobs) ,df=n-1 ))
p_value

# By p_value
ifelse(p_value<alpha, "Reject H_0", "Accept H_0")

# Basen on the critical values
critical_value <- qt(1-0.05/2, df=n-1)
critical_value

ifelse(abs(tobs)>critical_value, "Reject H_0", "Accept H_0")