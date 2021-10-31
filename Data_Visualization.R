x <- seq(-pi,pi,0.1)
y <- sin(x)
plot(x,y)
plot(x,y,main='plotting a sine curve', ylab='sin(x)', type='l',col='blue')
plot(x,sin(x),
     main = 'two graphs in one plot',
     ylab = '',
     type = 'l',
     col = 'blue')
     lines(x,cos(x),
           col = 'red')
     legend('topleft',
            c('sin(x)', 'cos(x)'),
                         fill = c('blue', 'red'))
     
#Declare a variable to read and store moviesdata
movies <- read.csv('moviesData.csv')
View(movies)
library('ggplot2')
ggplot(data=movies,
       mapping = aes(x = critics_score,
                                   y = audience_score))+
  geom_point()
ggsave('scatter_plot.png')

ggplot(data = movies,
       mapping = aes(x = critics_score,
                     y = audience_score,
                     color = genre))+
  geom_point()

str(movies$mpaa_rating)
levels(movies$mpaa_rating)
mpaa_rating1 <- as.factor(movies$mpaa_rating)
str(mpaa_rating1)
levels(mpaa_rating1)

ggplot(data = movies,
       mapping = aes(x = mpaa_rating1))+
  geom_bar()
  labs(y = 'rating count',
       title = 'count of mpaa rating')
  
ggplot(data = movies,
       mapping = aes(x = mpaa_rating1,
                     fill = genre))+
  geom_bar()+
  labs(y = 'rating count',
       title = 'count of mpaa rating')

ggplot(data = movies,
       mapping = aes(x = runtime,
                     fill = genre))+
  geom_histogram()+
  labs(x = 'Run time of movies',
       title = 'Distribution of run time')

genrecount <- table(movies$genre)
View(genrecount)

pie(genrecount)
pie(genrecount,
    main = 'Proportion of movies genre',
    border = 'blue',
    col = 'orange')

   