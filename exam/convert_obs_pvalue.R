######## T-distribution ########
# From Tobs to p_value
tobs <- 2.38
n <- 20
p_value <- 2*(1-pt(abs(tobs),df=n-1))
p_value

# From p_value to Tobs
p_value <-  0.001
n <- 20
tobs <- qt(1-p_value/2 ,df=n-1)
tobs

######## Z-distribution ########
# From Zobs to p_value
zobs <- -3.47
p_value <- 2*(1-pnorm(abs(zobs)))
p_value

# From p_value to Zobs
p_value <-  0.00052
zobs <- qnorm(1-p_value/2)
zobs


######## F-distribution ########
# From Fobs to p_value
fobs <- 4.30
k <- 5 # Number of groups
n <- 30 # Number of all observations
p_value <- 1-pf(abs(fobs),df1=k-1,df2=n-k)  
p_value

# From p_value to Fobs
p_value <- 0.05
k <- 6 # Number of groups
n <- 357 # Number of all observations
fobs <- qf(1-p_value, df1=k-1,df2=n-k)
fobs


######## ChiSq-distribution ########
# From chiobs to p_value
chiobs <- 29
nrow <- 5
ncol <- 4
p_value <- 1-pchisq(abs(chiobs), df=(nrow-1)*(ncol-1))
p_value

# From p_value to chiobs
p_value <- 0.01
nrow <- 2
ncol <- 4
chiobs <- qchisq(1-p_value,df=(nrow-1)*(ncol-1) )
chiobs



