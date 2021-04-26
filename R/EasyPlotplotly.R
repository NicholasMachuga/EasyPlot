#' outputs a 3d plotly graph
#'
#' Takes in a dataframe and 3 datasets and outputs a 3d graph using plotly
#' @param data a dataframe
#' @param x x the x-axis data
#' @param y the y-axis data
#' @param z the z-axis data
#' @export
EasyPlotplotly <- function(data, x, y, z){
  #install required packages if not already installed
  packages = c("plotly", "magrittr")
  package.check <- lapply(
    packages,
    FUN = function(x) {
      if (!require(x, character.only = TRUE)) {
        install.packages(x, dependencies = TRUE)
        library(x, character.only = TRUE)
      }
    }
  )
  result<- plot_ly(data, x = ~x, y = ~y, z = ~z) %>%
    add_markers(color = ~x)
  print(result)
}
