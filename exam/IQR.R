Q1 <- quantile(x, type=2)[2]
Q3 <- quantile(x, type=2)[4]

# OR Insert
Q1 <- 6.20
Q3 <- 28.10

# Calculate 
IQR <- Q3-Q1
c(Q1-IQR*1.5, Q3+IQR*1.5)

