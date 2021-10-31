#Libraries
library(naivebayes)
library(dplyr)
library(ggplot2)
library(psych)

#Data
data <- read.csv(file.choose(), header = T)
str(data)
data$rank <- as.factor(data$rank)
data$admit <- as.factor(data$admit)

#Visualization
pairs.panels(data[-1])
data %>%
          ggplot(aes(x = admit, y = gpa, fill = admit)) + 
          geom_boxplot() + 
          ggtitle("Box_Plot")

data %>%
          ggplot(aes(x = gpa, fill = admit)) + 
          geom_density(alpha = 0.8, color = 'black') + 
          ggtitle("Density_Plot")

#Data Partition
set.seed(1234)
ind <- sample(2, nrow(data), replace = T, prob = c(0.8, 0.2))
ind
train <- data[ind == 1,]
test <- data[ind == 2,]
train
test
#Naive Bayes Model
model <- naive_bayes(admit ~.,  data = train)
model

plot(model)

#Predict
p <- predict(model, train, type = 'prob')
head(cbind(p,train))
tail(cbind(p,train))

#Confusion Matrix - train data
p1<- predict(model, train)
tab1 <- table(p1, train$admit)
tab1
96/325

#Confusion Matrix - test data
p2<- predict(model, test)
tab2 <- table(p2, test$admit)
tab2
24/75

