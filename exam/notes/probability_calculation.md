## Example 1

**Given:**
$$
Y=U/B\\
U\sim N(\mu=35, \sigma^2=10^2) \\
B \sim N(\mu=50, \sigma^2=10^2)
$$

**What is the probability that $Y$ exceeds 1, i.e. $P(Y>1)$**
$$
P(Y>1) = P(\frac{U}{B}>1) = P(U>B) = P(U-B>0) = 1-P(U-B\leq0) \\
$$

**From Theorem 2.40**
$$
\mu_{U-B} = E(U-B) = E(U) - E(B) = 35-50 = -15 \\
\sigma^2_{U-B} = Var(U-B) = Var(U) + Var(B) = 100+100 = 200 \\
$$




**This gives:**
$$
U-B \sim N(-15, 200)
$$

**So:** 
$$
P(Y>1) = 1-P(U-B \leq 0)
$$

```R
1-pnorm(q=0, mean=-15, sd=sqrt(200))
```

