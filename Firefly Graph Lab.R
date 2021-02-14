# Loading packages  --------------------------------------------------------------

library(tidyverse)

# Reading Data ----------------------------------------------------------

fire_data <- read_csv("https://whitlockschluter.zoology.ubc.ca/wp-content/data/chapter02/chap02q19FireflySpermatophoreMass.csv")
fire_data #making sure data was loaded correctly 

# First plot --------------------------------------------------------------

ggplot(data=fire_data) # Make a blank graph
ggplot(data = fire_data) + # Histogram addition
  geom_histogram(mapping = aes(x = spermatophoreMass))


# Cleaning up the graph ----------------------------------------------------

ggplot(data = fire_data) +
  geom_histogram(mapping = aes(x = spermatophoreMass), binwidth = 0.02) +
  labs(x = "spermatophoreMass", y = "Count (Number of Males)")




