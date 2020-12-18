## The probability of getting x numbers. P(X=x)

x <- 1 # Number of successes to be obtained
a <- 2 # Total number of successes in the population
N <- 4 # Size of the population
n <- 2 # Number of draws

dhyper(x=x,m=a,n=N-a,k=n)
