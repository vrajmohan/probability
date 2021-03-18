# Example 1.3
# Part 2

args <- commandArgs(trailingOnly = TRUE)
if (length(args) == 0) {
  n <- 1000
} else {
  n <- as.integer(args[1])
}

trial <- function() {
    matrix(sample(6, 2 * 24, replace = TRUE), ncol = 2)
}

all6s <- function(x) {
    all(x == 6)
}

# apply(X, MARGIN, FUN) applies the function FUN to margin MARGIN
# of matrix (or array) X
table(replicate(n, any(apply(trial(), 1, all6s))))
