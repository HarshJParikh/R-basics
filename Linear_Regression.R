library(MASS)
?Boston
View(Boston)
head(Boston)
summary(Boston)

#Splitting data into training and testing sets
set.seed(2)
library(caTools)  #sample.split function is present in this package
split <- sample.split(Boston$medv,SplitRatio = 0.7)
split
training_data <- subset(Boston, split == "TRUE")
testing_data <- subset(Boston, split == "FALSE")
training_data
testing_data

#To view the correlation of variables
plot(Boston$crim, Boston$medv, cex = 0.5, xlab = 'crime rate', ylab = "price")

#Use corrplot to visualize
cr <- cor(Boston)
cr
library(corrplot)
corrplot(cr,type="lower")
corrplot(cr, method="number")

#vif
library(car)
model <- lm(medv~., data = training_data)
vif(model)

#Create model
model <- lm(medv~., data = training_data)

#For description of model
summary(model)

#model creation after removing tax,indus and age
model1 <- lm(medv~ crim+zn+chas+rm+rad+nox+dis+ptratio+black+lstat,data = training_data)
summary(model1)

#use this model to predict the output of test set
predic <- predict(model,testing_data)
predic
predic1 <- predict(model1,testing_data)
predic1

#Compare predicted values and actual values. Use plot
plot(testing_data$medv,type="l",lty=1.8,col="green")
lines(predic,type="l",col="blue")
plot(testing_data$medv,type="l",lty=1.8,col="green")
lines(predic1,type="l",col="blue")

#Creating sample dataset
crim = 0.23899
zn = 13.7
chas = 0
nox = 0.479
rm = 6.9989
dis= 5.976
ptratio = 16.9
black = 390.6
lstat = 6.1
sample_data <- data.frame(crim,zn,chas,nox,rm,dis,ptratio,black,lstat)
View(sample_data)

#use this model to predict the output of sample_data
predic <- predict(model1,sample_data)
predic














