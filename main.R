library(TSP)
library(GA)
library(tidyverse) # Data manipulation

ins <- read_TSPLIB("instances/berlin52.tsp")
print(ins)

dist_matrix <- as.matrix(ins)
print(dist_matrix)

