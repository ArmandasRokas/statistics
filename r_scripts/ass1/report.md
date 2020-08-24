

## Descriptive analysis

### a) A short description of the data

- Quantitative data
- Date of first observation: 2006-5-5, Date of the last observation: 2015-5-8
- The number of observations: 454
- There is no missing values. R code used to check this:

```R
> sum(is.na(D))
[1] 0
```



### b) A density histogram of the weekly return from the EFT AGG

<!--But why density? Is it not more clear with frequency?-->

![](images/histogram_agg.png)

- The empirical density is symmetrical, because there are no significant outliers. 
- The returns can be both positive and negative.
- There is not much variation. The observations are distributed around 0.00 and the most of observations lies between -0.02 and 0.02. 

<!-- Skal det begrundes mere? -->



### c) Plots illustrating the weekly return over time

![](images/returns_AGG.png)

![](images/returns_VAW.png)

![](images/return_IWN.png)

![](images/returns_SPY.png)

- The level of return seem to change over time. The most significant different periods are around 2008-2010 and 2011-2012 where level of return is increased. 
-  AGG stands out from others by having a smaller variance. 



### d) A box plot of the weekly returns by ETF

![](images/returns_box.png)

- There seems to be a difference between the distributions in the way that VAW is more skewed than others.  VAW has left-skewed distribution, because the left tail is longer than the right tail. Others EFTs seems to have less skewed distributions.
- Moreover AGG has much narrower IQR  than other ETFs
- The extreme observations (outside a distance of $1.5*\text{IQR}$) here are plotted individually, so yes there are plenty of these. 

<!--  and the mean lies to the left of the median. VAW. Mean is 0.001794 and median 0.004798. So that the mean lies to the left of the median. That means that is left-skewed distribution. -->



### e) Summary statistics

|                             | AGG         | VAW         | IWN         | SPY          |
| --------------------------- | ----------- | ----------- | ----------- | ------------ |
| **Number of obs.** ($n$)    | 454         | 454         | 454         | 454          |
| **Sample mean** ($\bar{x}$) | 0.000265757 | 0.00179379  | 0.001187679 | 0.001360105  |
| **Sample variance** ($s^2$) | 0.00003571  | 0.001301973 | 0.00102499  | 0.0006143463 |
| **Std. dev.** ($s$)         | 0.005975841 | 0.03608286  | 0.03201547  | 0.02478601   |
| **Lower quartile**($Q_1$)   | -0.0029733  | -0.016096   | -0.014305   | -0.011325    |
| **Median**($Q_2$)           | 0.0002374   | 0.004798    | 0.003120    | 0.004216     |
| **Upper quartile**($Q_3$)   | 0.0038932   | 0.019685    | 0.019056    | 0.014498     |

- One could gain information about differences between the means and  the medians, so it is easier to determine if data is skewed. 

### f) Statistical models

- AGG seems to be not Normal. What to do? 
- I am not sure how I should relate CLT to this project. As I understand it should be taken  many samples. But here was taken only one sample, or not? 
- Jeg forstå heller ikke her hvad er population? Dvs. er det fremtiden? CTL siger, hvis vi tager 100 gange sample, så 95% skal indeholde den ægte mean. Men hvordan kan man tage en sample igen i dette tilfælde? 
- Eller at vi kan tage flere gange sample mean og deres mean vil være normally distributed. 
- Men CLT kan vi kun væer
- CLT means that we can be sure only 95% that our calculated Confidence interval will contain the true mean. That is, if we could take 100 samples, only 95 CI of these samples would contain the true mean.  
- When we cannot assume a normal distribution comes CLT to rescue. **OK we trying to find CI for the mean. And if the mean follows normal distribution so that's why we can find CI by using standard normal distribution or now t-distribution, although the distribution of population does not follow normal distribution**

### g) Confidence interval for the mean

```R
> qt(0.975,454-1)
[1] 1.965215
```



- **AGG**

$$
\bar{x}\pm t_{0.975}* \frac{s}{\sqrt{n}} = 0.000265757 \pm 1.965215 * \frac{0.005975841}{\sqrt{454}} = \\= 0.000265757 \pm 0.0005511643 = [-0.0002854073, 0.0008169213 ]
$$

- **VAW**

$$
\bar{x}\pm t_{0.975}* \frac{s}{\sqrt{n}} = 0.00179379 \pm 1.965215
* \frac{0.03608286}{\sqrt{454}} = \\=  0.00179379 \pm  0.003327998 = [-0.001534208,  0.005121788 ]
$$

- **IWN**

$$
\bar{x}\pm t_{0.975}* \frac{s}{\sqrt{n}} =0.001187679 \pm 1.965215* \frac{0.03201547}{\sqrt{454}} = \\= 0.001187679  \pm 0.002952853  = [-0.001765174,  0.004140533 ]
$$

- **SPY**

$$
\bar{x}\pm t_{0.975}* \frac{s}{\sqrt{n}} = 0.001360105 \pm 1.965215* \frac{0.02478601}{\sqrt{454}} = \\= 0.001360105  \pm 0.002286065  = [-0.000925960, 0.003646171]
$$



|      | Lower bound of CI | Upper bound of CI |
| ---- | ----------------- | ----------------- |
| AGG  | -0.0002854073     | 0.0008169213      |
| VAW  | -0.001534208      | 0.005121788       |
| IWN  | -0.001765174      | 0.004140533       |
| SPY  | -0.000925960      | 0.003646171       |



```R
> t.test(D$AGG, conf.level=0.95)$conf.int
[1] -0.0002854073  0.0008169213
> t.test(D$VAW, conf.level=0.95)$conf.int
[1] -0.001534208  0.005121788
> t.test(D$IWN, conf.level=0.95)$conf.int
[1] -0.001765174  0.004140533
> t.test(D$SPY, conf.level=0.95)$conf.int
[1] -0.000925960  0.003646171
```

### h) Hypothesis test



$$
H_0: \mu_{\text{AGG}} = 0 \\
H_1: \mu_{\text{AGG}} \ne 0
$$

- I choose $\alpha=0.05$ significant level (some evidence).


**By using Method 3.36**

**1.**  
$$
t_{obs}= \frac{\bar{x}-\mu_{0}}{s/\sqrt{n}}= \frac{0.000265757}{0.005975841/\sqrt{454}} = 0.2983265
$$

**2.** 
$$
\text{p-value}= 2*P(T>|t_{obs}|) = 0.3438511
$$

```r
> tobsAGG <- (meanAGG)/(sAGG/sqrt(454))
> 2*(1-pt(tobsAGG, df=454-1))
[1] 0.3438511
```

**3.  Conclusion:**

$\text{p-value}$ (0.3438511) is more than $\alpha$ (0.05), so we can accept $H_{0}$.  So the mean weekly return from AGG does not deviate significantly from the return obtained by saving money under the pillow.

 The same conclusion could have been reached using the CI, because it includes 0, which means that 0 is accepted value at 95% significant level. 



### i) Welch t-test for compering AGG and VEW 


$$
H_{0} \ : \ \mu_{AGG}= \mu_{VAW} \equiv \mu_{AGG}-\mu_{VAW}= 0 \\
H_{1}\ : \ \mu_{AGG} \ne \mu_{VAW} \equiv \mu_{AGG}-\mu_{VAW}\ne 0
$$

- I choose $\alpha=0.05$ significant level (some evidence).


**By method 3.51(Welch):**



1. 

$$
t_{obs}= \frac{(\bar{x}_1-\bar{x}_2)-\delta_0}{\sqrt{s_1^2/n_1+s^2_2/n_2}}= -1.973387\\
v = \frac{(\frac{s^2_1}{n_1}+\frac{s^2_2}{n_2})^2}{\frac{(s_1^2/n_1)^2}{n_1-1}+\frac{(s_2^2/n_2)^2}{n_2-1}}= 54.38591
$$



```r
> tobsAGGVAW <- (meanAGG-meanVAW)/(sqrt((sAGG^2/454)+(sVAW^2/454)))
[1] -0.8901926
> vAGGVAW <- ((sAGG^2/454)+(sVAW^2/454))^2/
+   (((sAGG^2/454)^2/(454-1))+((sVAW^2/454)^2/(454-1)))
[1] 477.8312


```



2. 

$$
\text{p-value} = 0.3738104
$$

```R
> 2*(1-pt(abs(tobsAGGVAW), df=vAGGVAW))
[1] 0.3738104
```

3. Conclusion

On a 5% level we cannot conclude a significant difference in the mean weekly return differs, because the calculated $\text{p-value}=0.3738104 > \alpha=0.05$  



```R
> t.test(D$VAW, D$AGG)

	Welch Two Sample t-test

data:  D$VAW and D$AGG
t = 0.89019, df = 477.83, p-value = 0.3738
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -0.001844827  0.004900893
sample estimates:
  mean of x   mean of y 
0.001793790 0.000265757 
```





### j) 

According to Remark 3.59, if CIs do overlap (like in this case), then the same conclusion couldn't be drawn from CIs. So it was necessary to carry out the statistical test.   