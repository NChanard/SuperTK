#' Find threshold for outliers triming based on inter quartile range.
#'
#' IqrThreshold
#' @description Find threshold for outliers triming based on inter quartile range.
#' @name IqrThreshold
#' @param x.num <numeric>: numeric vector.
#' @param iqrFactor.num <numeric>: inter quartile range factor. (Default 1.5)
#' @param bounds.chr <character>: bounds to return, "lower", "upper" or "both". (Default "both")
#' @return numerical vector of minmal and/or maximal thresholds values for outliers triming.
#' @examples
#' set.seed(1111)
#' x.num <- rnorm(1000)
#' x.num <- sort(x.num)
#' x.num
#' IqrThreshold(x.num, bounds.chr="lower")
#' IqrThreshold(x.num, bounds.chr="both")
#' IqrThreshold(x.num, bounds.chr="upper")
NULL