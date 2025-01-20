#' A short description of your function
#'
#' @param x A matrix
#' @returns An integer
#' @author Zhipei Wang
#' @export
#' @examples
#' library(magrittr)
#' matrix(c(1, 2, 2, 3, 2, 2, 1, 2), ncol=2, byrow=TRUE) %>% cohesion()




cohesion <- function(cluster) {
  centroid <- colMeans(cluster)
  cohesion <- rowSums((cluster - centroid) ^ 2) %>% sum()
  return(cohesion)
}
