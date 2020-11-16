studentheights <- read.table("playing/studentheights.csv", sep=";", dec=".", header=TRUE)

head(studentheights)
str(studentheights)
summary(studentheights)

boxplot(Height ~ Gender, data=studentheights, col=2:3)

?mtcars

## To make 2 plots
par(mfrow=c(1,2))
## First the default version
plot(mtcars$wt, mtcars$mpg, xlab="wt", ylab="mpg")
## Then a nicer version
plot(mpg ~ wt, xlab="Car Weight (1000lbs)", data=mtcars,
     ylab="Miles pr. Gallon", col=factor(am),
     main="Inverse fuel usage vs. size")
## Add a legend to the plot
legend("topright", c("Automatic transmission","Manual transmission"),
       col=c("black","red"), pch=1, cex=0.7)

## Barplot
barplot(table(studentheights$Gender), col=2:3)
pie(table(studentheights$Gender), cex=1, radius=1)

