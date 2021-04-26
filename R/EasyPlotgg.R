#' Creates simple ggplot line plot using data
#'
#' Takes in dataframe and data points and creates ggplot for you
#' @param data A dataframe
#' @param data1 a list of values
#' @param data2 another list of values
#' @param color OPTIONAL - parameter for color
#' @param lineSize OPTIONAL - parameter for linesize
#' @param pointsize OPTIONAL - parameter for pointSize
#' @export
EasyPlotgg <- function(data,data1, data2, color = "firebrick", linesize = 2, pointsize = 2)
{
  #install required packages if not already installed
  packages = c("ggplot2")
  package.check <- lapply(
    packages,
    FUN = function(x) {
      if (!require(x, character.only = TRUE)) {
        install.packages(x, dependencies = TRUE)
        library(x, character.only = TRUE)
      }
    }
  )
  #develop and output ggplot result
  result <- ggplot(data,aes(x = data1, y= data2, group=1)) +
    geom_line(color = color, size = linesize) + geom_point(size = pointsize)
  print(result)
}

