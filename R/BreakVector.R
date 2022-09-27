#' Cut a vector.
#'
#' BreakVector
#' @description Compute the n+1 breaks of a vector in a linear or density based way with the possibility to fix minimal, center and maximal values.
#' @name BreakVector
#' @param x.num <numeric>: numerical vector.
#' @param min.num <numeric>: minimal fixed value.
#' @param center.num <numeric>: center fixed value.
#' @param max.num <numeric>: maximal fixed value.
#' @param n.num <numeric>: number of tile (return n.num+1 breaks).
#' @param method.chr <character>: kind of breaking. "linear" or "density". (Default "linear")
#' @return Numerical vector of breaks.
#' @examples
#' set.seed(31415)
#' x.num <- rnorm(100,50,200)
#' BreakVector(x.num=x.num, n.num=9)
NULL