## The probability of getting x numbers. P(X=x)

x <- 3 # Number of successes to be obtained
a <- 3 # Total number of successes in the population
N <- 20 # Size of the population
n <- 10 # Number of draws

dhyper(x=x,m=a,n=N-a,k=n)
