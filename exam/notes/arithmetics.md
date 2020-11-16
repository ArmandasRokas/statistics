## Linear function and Linear combination

**Given:**
$$
Y = X+1 \\
X \sim Pois(\lambda=0.4)
$$
**Find mean and variance of 100 randomly selected**
$$
\sum_{i=1}^{100}Y_i
$$
**From Theorem 2.54**
$$
E(Y) = E(X+1) = E(X)+1= \lambda+1= 0.4 +1= 1.4 \\
Var(Y) = Var(X+1) = Var(X) = \lambda = 0.4
$$
**From Theorem 2.56**
$$
\mu=E(\sum_{i=1}^{100}Y_i)=E(Y_1)+E(Y_2)+...+E(Y_{100}) = 100*1.4=140 \\
\sigma^2 = Var(\sum_{i=1}^{100}Y_i)= Var(Y_i) + Var(Y_2) + ... + Var(Y_{100}) = 100 * 0.4 = 40
$$



## Simulation

$$
A = X*Y
$$

Skal bruges simulering, fordi **ikke linær**. Det kunne dog være fint nok med $A=X+Y$

Flere eksampler på "ikke-linær":

$$
Var(a_1X_1+a_2X_2^2 ....) \\
Var(a_1X_1+a_2X_2^{-1} ....)
$$


## Probability calculation

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

