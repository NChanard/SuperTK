#' Normalize data.
#'
#' Normalize
#' @description Normalize data by with square root, cubic root or log2 based on minimal skewness.
#' @name Normalize
#' @param x.num <numeric>: numerical vector
#' @param a.num <numeric>: constant value to add before compute normalisation too avoid negativ number. If null auto dertermine a.num. (Default NULL)
#' @return Normalized vector
#' @examples
#' set.seed(542972)
#' x.num <- rnbinom(1000, 1, 0.01)
#' plot(density(x.num))
#' plot(density(Normalize(x.num)))
NULL