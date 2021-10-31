# Logistic Regression

# Read Data File
mydata <- read.csv(file.choose(), header = T)
str(mydata)
mydata$admit <- as.factor(mydata$admit)
mydata$rank <- as.factor(mydata$rank)
View(mydata)
# Two-way table of factor variables
xtabs(~admit + rank, data = mydata)

# Partition data - train (80%) and test (20%)
set.seed(1234)
ind <- sample(2, nrow(mydata), replace = T, prob = c(0.8, 0.2))
ind
train <- mydata[ind == 1,]
test<- mydata[ind == 2,]
train
test

# Logistic regression model , glm = general logistic model  
mymodel <- glm(admit ~ gre + gpa + rank, data = train, family = 'binomial')
summary(mymodel)
mymodell <- glm(admit ~ gpa + rank, data = train, family = 'binomial')
summary(mymodell)

# Prediction
p1 <- predict(mymodell, train, type = 'response')
head(p1)
head(train)
p2 <- predict(mymodell, test, type = 'response')
head(p2)
head(test)

# Misclassification error - train data
pred1 <- ifelse(p1>0.5, 1, 0)
pred1
tab1 <- table(Predicted = pred1, Actual = train$admit)
tab1
88/325

# Misclassification error - test data
pred2 <- ifelse(p2>0.5, 1, 0)
pred2
tab2 <- table(Predicted = pred2, Actual = test$admit)
tab2
22/75













