# Example 1.2

args <- commandArgs(trailingOnly = TRUE)
if (length(args) == 0) {
    n <- 20
} else {
    n <- as.integer(args[1])
}

table(sample(c("H", "T"), n, replace = TRUE))
