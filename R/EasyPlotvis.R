#' Produces a basic ggvis plot
#'
#' Takes in a dataframe and two data lists and outputs a basic ggvis plot
#' @param data a dataframe
#' @param data1 first list of data
#' @param data2 second list of data
#' @export

EasyPlotvis <- function(data, data1, data2){
  #install required packages if not already installed
  packages = c("ggvis", "magrittr")
  package.check <- lapply(
    packages,
    FUN = function(x) {
      if (!require(x, character.only = TRUE)) {
        install.packages(x, dependencies = TRUE)
        library(x, character.only = TRUE)
      }
    }
  )
  result <- data %>% ggvis(~data1, ~data2)
  print(result)
}
