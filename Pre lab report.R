# Loading packages  --------------------------------------------------------------

library(tidyverse)
library(auk)                          # load the auk package

# Reading Data ----------------------------------------------------------



# Looking at the data -----------------------------------------------------



# unique count  attempts  -------------------------------------------------
count(birds, order)

select(birds,order)

?select

summarise(.data=birds, unique(order))

n_distinct(order)

summarise(.data=birds, n_distinct(order))


# Attempt at making bird graph by order -----------------------------------

ggplot(data=birds)
ggplot(data=birds)+
  geom_bar(mapping = aes(x =order))

ggplot(data=birds)+
geom_bar(mapping = aes(x = fct_infreq(order)))

#cleaning up the graph 
labs(x="order")

