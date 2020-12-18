## Assumptions for Simple Linear Regression

1. **Linearity**: The relationship between X and Y must be linear.

   Check this assumption by examining a scatterplot of x and y.

2. **Independence of errors**: There is not a relationship between the residuals and the Y variable; in other words, Y is independent of errors.

   Check this assumption by examining a scatterplot of “residuals versus fits”; the correlation should be approximately 0. In other words, there should not look like there is a relationship.

3. **Normality of errors** : The residuals must be approximately normally distributed.

   Check this assumption by examining a normal probability plot; the observations should be near the line. You can also examine a histogram of the residuals; it should be approximately normally distributed.

4. **Equal variances** : The variance of the residuals is the same for all values of X.

   Check this assumption by examining the scatterplot of “residuals versus fits”; the variance of the residuals should be the same across all values of the *x*-axis. If the plot shows a pattern (e.g., bowtie or megaphone shape), then variances are not consistent, and this assumption has not been met.