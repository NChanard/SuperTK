#' Find threshold for outliers triming based on quantiles.
#'
#' QtlThreshold
#' @description Find threshold for outliers triming based on quantiles.
#' @name QtlThreshold
#' @param x.num <numeric>: numeric vector.
#' @param prct.num <numeric>: percentage (0-100) threshold. (Default 5)
#' @param bounds.chr <character>: bounds to return, "lower", "upper" or "both". (Default "both")
#' @return numerical vector of thresholds values for outliers triming.
#' @examples
#' set.seed(1111)
#' x.num <- 0:100
#' x.num <- sort(x.num)
#' x.num
#' QtlThreshold(x.num, prct.num=5, bounds.chr="lower")
#' QtlThreshold(x.num, prct.num=5, bounds.chr="both")
#' QtlThreshold(x.num, prct.num=5, bounds.chr="upper")
NULL