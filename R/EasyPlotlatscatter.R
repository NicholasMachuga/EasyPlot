#' Produces a lattice scatter plot
#'
#' Takes in a dataframe and desired fields and outputs a lattice scatter plot
#' @param data a dataframe
#' @param data1 x-axis data
#' @param data2 y-axis data
#' @export
EasyPlaylatscatter <- function(dataframe, data1, data2){
  #install required packages if not already installed
  packages = c("lattice")
  package.check <- lapply(
    packages,
    FUN = function(x) {
      if (!require(x, character.only = TRUE)) {
        install.packages(x, dependencies = TRUE)
        library(x, character.only = TRUE)
      }
    }
  )
  result <- xyplot(data1~data2, data = diamonds,
                   xlab = data1,
                   ylab = data2)
  print(result)
}

