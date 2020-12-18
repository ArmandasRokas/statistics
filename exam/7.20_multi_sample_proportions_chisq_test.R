# Create matrix
matrix <- matrix(c(60,78,40,40,85,55), ncol=3,byrow=TRUE)
colnames(matrix) <- c("A","B","None")
rownames(matrix) <- c("Men", "Women")
matrix

# Chi sq test
chi <- chisq.test(matrix, correct=FALSE)
chi

chi$expected
