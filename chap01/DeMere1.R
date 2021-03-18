# Example 1.3
# Part 1

args <- commandArgs(trailingOnly = TRUE)
if (length(args) == 0) {
  n <- 1000
} else {
  n <- as.integer(args[1])
}

trial <- function() {
    sample(6, 4, replace = TRUE)
}

table(replicate(n, any(trial() == 6)))
