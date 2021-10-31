#1
stock.prices <- c (23,27,23,21,34)

#2
mean(stock.prices)
sd(stock.prices)
sum(stock.prices)

#3
Stock.prices <- c (Monday = 23, Tuesday = 27, Wednesday = 23, Thursday = 21, Friday = 34)
Stock.prices

#4
over.23 <- Stock.prices > 23
Stock.prices[over.23]

#5
max(stock.prices)

#6
var = "Welcome"

#7
typeof(var)
data.class(var)

#8
Name <- c ("Sam","Frank","Amy","Lena")
Age <- c (22,25,26,24)
Weight <- c (50,60,53,58)
Sex <- c ("M","M","F","F")
info <- data.frame(Name,Age,Weight,Sex)
View(info)

#9
mean(info$Weight)

#10
info[(info$Name == "Frank" | info$Name == "Amy"),]

#11
info[(info$Age == 24),]

#12
info[c("Name","Age")]

#13
info[info$Name=="Frank",][c("Name","Weight")]

info[info$Name=="Frank",3]
