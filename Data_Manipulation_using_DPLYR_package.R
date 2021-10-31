library(dplyr)
movies <- read.csv("moviesData.csv")
View(movies)
moviescomedy <- filter(movies, genre=="Comedy")
View(moviescomedy)
moviescomdr <- filter(movies, genre=="Comedy" | genre=="Drama")
View(moviescomdr)
moviescomdr1 <- filter(movies, genre %in% c("Comedy", "Drama"))
View(moviescomdr1)
moviescomim <- filter(movies, genre=="Comedy" & imdb_rating>=7.5)
View(moviescomim)

moviesima <- arrange(movies,imdb_rating)
View(moviesima)
moviesimd <- arrange(movies,desc(imdb_rating))
View(moviesimd)
moviesgenim <- arrange(movies,genre,imdb_rating)
View(moviesgenim)

movies1 <- select(movies,title,genre,imdb_rating)
View(movies1)
moviesTHT <- select(movies,title,starts_with("thtr"))
View(moviesTHT)
movies2 <- select(movies,title:audience_score)
View(movies2)

moviesR <- rename(movies,rel_year="thtr_rel_year")
View(moviesR)

MovieMU <- mutate(movies,critaud = movies$critics_score - movies$audience_score)
View(MovieMU)

movies_SU <- summarise(movies, critics_avg = mean(critics_score))
View(movies_SU)

ID <- c(1,2,3,4,5)
Salary <- c(1000,2000,3000,4000,5000)
D1 <- data.frame(ID,Salary)
View(D1)

ID <- c(1,2,3,4,6)
Bonus <- c(200,300,500,700,800)
D2 <- data.frame(ID,Bonus)
View(D2)

anti_join(D2,D1,by='ID')
anti_join(D1,D2,by='ID')
inner_join(D1,D2,by='ID')









