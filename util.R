reef <- matrix(0, nrow = 5, ncol = 5)
random <- sample(1:25, size = 8)
for (rc in random) {
  rc_row <- (rc - 1) %/% 5 + 1
  rc_col <- (rc - 1) %% 5 + 1
  reef[rc_row, rc_col] <- 1
  print(reef)
}

initialize_reef <- function(coral_number) {
  reef <- matrix(0, nrow = 5, ncol = 5)
  random <- sample(1:25, size = coral_number)
  for (rc in random) {
    rc_row <- (rc - 1) %/% 5 + 1
    rc_col <- (rc - 1) %% 5 + 1
    reef[rc_row, rc_col] <- 1
  }
  return(reef)
}
initialize_reef(10)

growth <- function(coral_outcome) {
  coral_outcome <- sum(sample(1:6, size = 2, replace = TRUE))
        if (coral_outcome <= 3) {
          reed [r, c] <- 0
          print("Coral died")
        } else {
          reef[r, c] <- 1
          print("Coral survived")
        }
  return(reef)
}


