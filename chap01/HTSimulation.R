# Example 1.4

game <- function(x) {
    winnings <- 0
    for (v in x) {
        if (v == "H") {
            winnings <- winnings + 1
        } else {
            winnings <- winnings - 1
        }
    }
    winnings
}
