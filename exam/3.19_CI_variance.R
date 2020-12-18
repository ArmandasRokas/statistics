# Insert
n <- 20
var <- 98996.08
alpha <- 0.1

# Calculate
numerator <- (n-1)*var
left_chisq <-qchisq(1-alpha/2, df=n-1)
right_chisq <-qchisq(alpha/2, df=n-1)
CI_var <- c(numerator/left_chisq, numerator/right_chisq)
CI_sd <- sapply(CI_var, FUN=sqrt)

# Results
CI_var
CI_sd
