# Insert

x <- c(10.5, 9.3, 10.7, 10.8, 11.2)
y <- c(8.9, 9.5, 10.2, 9.8, 10.3)

var_x <- var(x)
var_y <- var(y)
n_x <-length(x)
n_y <- length(y)

# Calculate
var_pooled <- ((n_x-1)*var_x+(n_y-1)*var_y) / (n_x+n_y-2)
