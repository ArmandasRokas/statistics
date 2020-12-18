# One-way test for difference in mean for k groups.

k <- 3
n <- 12
ssTr <- 1696.2
ssE <- 3670.7

msTr <- (ssTr/(k-1))
msE <- (ssE/(n-k))
F <- msTr/msE
pv <- 1-pf(F, df1=k-1, df2=n-k)
