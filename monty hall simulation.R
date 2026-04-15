#+ MONTY HALL SIMULATION
#+ SIS 750
#+ Spring 2026
#+ 
#+ Austin Hart

# Setup -----------
library(tidyverse)
library(knitr)

# Simulation ------

## set the stage
doors <- c('A', 'B', 'C')

## keep score
results <- NA

## run the game
for (i in 1:10000){
  car <- sample(doors, 1) # puts car behind 1 door at random
  choice <- sample(doors, 1)
  reveal <- sample(doors[doors != car & doors != choice], 1)
  switch <- sample(doors[doors != choice & doors != reveal], 1)
  results[i] <- if_else(car == choice, "Paul wins", "Marilyn wins")
}

table(results)

