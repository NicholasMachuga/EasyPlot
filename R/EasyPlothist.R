#' prints out a simple histogram
#'
#' takes in data and outputs a histogram
#' @param data a dataset of numeric or character values
#' @param breaks OPTIONAL - the number of breaks
#' @param color OPTIONAL - color of the plot
#' @export
EasyPlothist <- function(data, breaks = 5,color = "orange"){
  result <- hist(data, breaks, col = color)
  print(result)
}
