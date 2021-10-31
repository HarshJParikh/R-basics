#Iris data
View(iris)
?iris
str(iris)
summary(iris)

#Data partition
set.seed(555)
ind <- sample(2, nrow(iris), replace = TRUE, prob = c(0.8,0.2))
ind
train <- iris[ind == 1,]
test <- iris[ind == 2,]
train
test

#Decision tree model
library(party)
tree <- ctree(Species~., data = train)
tree

#Visualization of decision trees
plot(tree)
plot(tree, type = "simple")

#Interpretation
head(train)
tail(train)

#Predict
predict(tree, train)
predict(tree, train, type = 'prob')

#Misclassification error - train data
p1 <- predict(tree, train)
p1
tab1 <- table(predicted = p1, actual = train$Species)
tab1
5/118

#Misclassification error - test data
p2 <- predict(tree, test)
p2
tab2 <- table(predicted = p2, actual = test$Species)
tab2
1/32



