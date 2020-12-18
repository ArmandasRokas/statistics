# Insert
y_bar_i <- 127
y_bar_j <- 135
MSE <- 74.97
n_i <-20
n_j <- 20
alpha <- 0.05
n<- 60 # Total n in all groups
k <- 3 # Number of groups

# Calculate
tobs <- (y_bar_i-y_bar_j)/sqrt(MSE*(1/n_i+1/n_j))
p_value <- 2*(1-pt(abs(tobs), df=n-k))

# Results
tobs
p_value
