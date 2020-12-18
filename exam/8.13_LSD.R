# Insert
alpha <- 0.05
MSE <- 74.97
m <-20   # The same number of observations in each treatment group
n <- 60
k <- 3

# Calculate  
M <- k*(k-1)/2
alpha_bonferroni <- alpha/M
LSD <- qt(1-alpha_bonferroni/2, df=n-k)*sqrt(2*MSE/m)

# Results
LSD


# Find differences
means <- c(127,135,136)
matrix <- outer(means,means, '-')
rownames(matrix) <- c("A","B","C")
colnames(matrix) <- c("A","B","C")
matrix
f <- function(a){ifelse(abs(a)>LSD, return("Significant"), ifelse(a==0, return(''), return("Not")))}
apply(matrix, 1:2,f )
