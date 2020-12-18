# Attention if it gives a result that is not in answers
# then try to change the means around.  

###### Insert ###### 
y_bar_i <- .55
y_bar_j <- .49
MSE <- 0.016351
alpha <- 0.05

n <- 30 # Number of all observations
n_i <- 10
n_j <- 10
k <- 3 # Number of groups

###### Bonferroni ###### 
#M <- k*(k-1)/2
#alpha_bon <- alpha/M 



###### Caluclate ###### 
t <- qt(1-alpha/2, df=n-k)
y_bar_i - y_bar_j + c(-1,1) *(t*sqrt(MSE*(1/n_i+1/n_j)))

