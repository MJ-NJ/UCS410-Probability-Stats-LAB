f <- function(x, y) {
  if (0 <= x && x <= 1 && 0 <= y && y <= 1) {
    return(2 * (2 * x + 3 * y) / 5)
  } else {
    return(0)
  }
}
integral_result <- integral2(f, 0, 1, 0, 1)
if (abs(integral_result - 1) < 1e-6) {
  print("It is a valid joint density function.")
} else {
  print("It is not a valid joint density function.")
}
