# Males
males <- c(2844, 2863, 2963, 3239, 3379, 3449, 3582, 3926, 4151, 4356)
malesMean <- (2844+2863+ 2963+3239+ 3379+ 3449+ 3582+ 3926+ 4151+ 4356)/10
malesVariance <- ((2844-3475.2)^2+(2863-3475.2)^2+ (2963-3475.2)^2+ 
                    (3239-3475.2)^2+ (3379-3475.2)^2+ (3449-3475.2)^2+ 
                    (3582-3475.2)^2+ (3926-3475.2)^2+ (4151-3475.2)^2+ 
                    (4356-3475.2)^2)/9
malesStandartDeviation <- sqrt(malesVariance)
malesCoefficientOfVariantions <- malesStandartDeviation / malesMean

malesVarianceDerivationFormula <- (((2844)^2+(2863)^2+ (2963)^2+ 
                    (3239)^2+ (3379)^2+ (3449)^2+ 
                    (3582)^2+ (3926)^2+ (4151)^2+ 
                    (4356)^2) - ((2844)+(2863)+ (2963)+ 
                                   (3239)+ (3379)+ (3449)+ 
                                   (3582)+ (3926)+ (4151)+ 
                                   (4356))^2/10)/9


# Females
females <- c(2474, 2547, 2830, 3219, 3429, 3448, 3677, 3872, 4001, 4116)
femalesMean <- (2474+2547+2830+3219+3429+3448+3677+3872+4001+4116)/10
femalesVariance <- ((2474-3361.3)^2+(2547-3361.3)^2+
                      (2830-3361.3)^2+(3219-3361.3)^2+
                      (3429-3361.3)^2+(3448-3361.3)^2+
                      (3677-3361.3)^2+(3872-3361.3)^2+
                      (4001-3361.3)^2+(4116-3361.3)^2)/9
femalesStandartDeviation <- sqrt(femalesVariance)
femalesCoefficientOfVariations <- femalesStandartDeviation / femalesMean

boxplot(males,females, names= c("males", "females"),col = 2:3)

# Cholesterol
before <- c(9.1, 8.0, 7.7, 10.0, 9.6, 7.9, 9.0, 7.1, 8.3, 9.6,
            8.2, 9.2, 7.3, 8.5, 9.5)
after <- c(8.2, 6.4, 6.6, 8.5, 8.0, 5.8, 7.8, 7.2, 6.7, 9.8,
           7.1, 7.7, 6.0, 6.6, 8.4)
median(before)
median(after)
standartDeviationBefore  <- sd(before)
standartDeviationAfter <- sd(after)


## Cholesterol covariance
beforeMean <- mean(before)
afterMean <- mean(after)
covariance <- ((9.1- beforeMean)*(8.2- afterMean) + 
  (8.0- beforeMean)*(6.4- afterMean) + (7.7- beforeMean)*(6.6- afterMean) + 
  (10.0- beforeMean)*(8.5- afterMean) + (9.6- beforeMean)*(8.0- afterMean) +
  (7.9- beforeMean)*(5.8- afterMean) + (9.0- beforeMean)*(7.8- afterMean) +
  (7.1- beforeMean)*(7.2- afterMean) + (8.3- beforeMean)*(6.7- afterMean) +
  (9.6- beforeMean)*(9.8- afterMean) + (8.2- beforeMean)*(7.1- afterMean) + 
  (9.2- beforeMean)*(7.7- afterMean) + (7.3- beforeMean)*(6.0- afterMean) +
  (8.5- beforeMean)*(6.6- afterMean) + (9.5- beforeMean)*(8.4- afterMean))/14

## Correlation
correlation <- covariance / (standartDeviationBefore * standartDeviationAfter) 
plot(before, after, xlab="before", ylab="after")

## Diff
diffBeforeAfter <- before - after
mean(diffBeforeAfter)
median(diffBeforeAfter)
var(diffBeforeAfter)
sd(diffBeforeAfter)
quantile(diffBeforeAfter) # precentiles
boxplot(diffBeforeAfter, col = "red")
text(1.3, quantile(diffBeforeAfter), c("Minimum","Q1","Median","Q3","Maximum"),
     col="blue")
  