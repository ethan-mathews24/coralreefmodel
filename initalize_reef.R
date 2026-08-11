

rm(list = ls()) #re run your code "clear environment"
set.seed(32)

# setting up a grid with a bunch of zeros
reef_init <- matrix(data = 0, nrow = 5, ncol = 5)

# randomly sample coral starting locations
random <- sample(1:25, size = 8, replace = FALSE)

cell_value <- random[1]

# place your coral tokens

#columns
(1:25 - 1) %% 5 + 1 # %% is the remainder

# rows
(1:25 - 1) %/% 5 + 1 # %/% is how many times it can fit wholey

cell_column <- (cell_value - 1) %% 5 + 1
cell_row <- (cell_value - 1) %/% 5 + 1

reef_init[cell_row, cell_column] <- 1
reef_init





