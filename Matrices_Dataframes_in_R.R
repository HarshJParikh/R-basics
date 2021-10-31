empname <- c ("A", "B", "C", "D")
age <- c (25, 28, 36, 41)
salary <- c(30000, 40000, 100000, 150000)
gender <- c ("f", "m", "f", "m")
experience <- c (3, 6, 14, 19)
Employee <- data.frame(empname,age,salary,gender,experience)
View(Employee)
subemployee <- subset(Employee, Employee$age>30, select = c("empname", "salary"))
View(subemployee)
subemployee1 <- Employee[c(2,3,4), c(1,2)]
View(subemployee1)
subemployee_extra1 <- subset(Employee, Employee$salary<100000 & Employee$gender == "f", select = c("empname", "experience"))
View(subemployee_extra1)
subemployee2 <- Employee[c(2,3,5)]
View(subemployee2)
matrixEmp <- as.matrix(subemployee2)
print(matrixEmp)
values <- c (1,2,3,4,5,6,7,8,9,10,11,12)
matrixA <- matrix(values, nrow=4, ncol=3, byrow=TRUE)
print(matrixA)
matrixB <- matrix(values, nrow=4, ncol=3, byrow=FALSE)
print(matrixB)
matrixA + matrixB
matrixA - matrixB
matrixA * matrixB
values1 <- c (1,2,3,4,5,6,7,8,9)
matrixC <- matrix(values, nrow=3, ncol=3, byrow=TRUE)
print(matrixC)
matrixA %*% matrixC
matrixB %*% matrixC
t(matrixA)
det(matrixC)
A <- c (1,2,3)
B <- c (4,5,6)
matD <- rbind(A,B)
print(matD)
matE <- cbind(A,B)
print(matE)
matrixF <- matrix(1:25, byrow = TRUE, nrow = 5)
print(matrixF)
matrixF[2:3, 4:5]

#To add a row in dataframe Employee
Employee <- rbind(Employee,data.frame(empname = "E", age=40, salary = 200000, gender = "f", experience = 18))

#To add a column in dataframe Employee
designation <- c ("developer", "tester", "HR", "sr developer", "accountant")
Employee <- cbind(Employee,designation)
View(Employee)

sum(matrixF[2,])
sum(matrixF[,5])

mean(matrixF)
sd(matrixF)
rowSums(matrixF)
colSums(matrixF)
rowMeans(matrixF)
colMeans(matrixF)
is.matrix(matrixF)

