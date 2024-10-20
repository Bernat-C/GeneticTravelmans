library(TSP)
library(tidyverse) # Data manipulation

ins <- read_TSPLIB("instances/berlin52.tsp")
# print(ins)

# Fitness function for GA: minimize the total distance of the route
fitness_function <- function(tour, ins) {
  distance <- 0
  # Calculate the total distance of the TSP tour
  for (i in 1:(length(tour) - 1)) {
    distance <- distance + ins[tour[i], tour[i+1]]
  }
  # Add distance to return to the starting point
  distance <- distance + ins[tour[length(tour)], tour[1]]
  return(-distance)  # Negative because GA minimizes the function
}

# Parameters - Canviar
# population_size <- 50
# max_generations <- 100
# crossover_prob <- 0.8
# mutation_prob <- 0.1
