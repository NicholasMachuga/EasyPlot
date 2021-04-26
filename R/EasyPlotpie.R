#' Outputs a simple pie chart
#'
#' Takes in data and labels and outputs a pie chart
#' @param data a set of numeric or character data
#' @param labels the labels associated with the data
#' @param radius OPTIONAL - radius of pie chart
#' @param col OPTIONAL - color pallete of chart
#' @param clockwise OPTIONAL - rotation of pie chart angles
#' @export
easyPlotpie <- function(data, labels, radius = 0.5, col = "blue", clockwise = TRUE)
{
  result <- pie(data, labels = labels, radius = radius, col = col, clockwise = clockwise)
}
