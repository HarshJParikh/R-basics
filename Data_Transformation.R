library(nycflights13)
library(tidyverse)
library(dplyr)
flights <- nycflights13::flights
head(flights)
View(flights)

#Q1a
filter(flights, flights$arr_delay>=120)
#Q1b
filter(flights, flights$dest=='IAH' | flights$dest=='HOU')
#Q1c
filter(flights, flights$carrier=='UA' | flights$carrier=='AA' | flights$carrier=='DL')
#Q1d
filter(flights, flights$month==7 | flights$month==8 | flights$month==9)
#Q1e
filter(flights, flights$arr_delay>120,flights$dep_delay<=0)
#Q1f
filter(flights, flights$dep_delay >= 60,(flights$dep_delay - flights$arr_delay) > 30)
#Q1g
filter(flights, flights$dep_time>=2400 | flights$dep_time<=600)

#Q2
filter(flights, is.na(dep_time))

#Q3
arrange(flights, flights$dep_time) %>%
  tail()

#Q4
arrange(flights, desc(flights$dep_delay))

#Q5
fastest_flights <- mutate(flights, mph=(flights$distance/flights$air_time) * 60)
fastest_flights <- select(fastest_flights, mph, distance, air_time, flight, origin, dest, year, month, day)
arrange(fastest_flights, desc(mph))

#Q6
arrange(flights, desc(flights$distance))

#Q7
select(flights, year, month, day, year, year)

#Q8
vars <- c('year', 'month', 'day', 'dep_delay', 'arr_delay')
select(flights, one_of(vars))

#Q9
flights <- mutate(flights,
                  dep_time_mins = dep_time %/% 100 * 60 + dep_time %% 100,
                  sched_dep_time_mins = sched_dep_time %/% 100 * 60 + sched_dep_time %% 100)

select(flights, starts_with('dep_time'), starts_with('sched'))
