#' Find threshold for outliers triming based on standard deviation.
#'
#' SdThreshold
#' @description Find threshold for outliers triming based on standard deviation.
#' @name SdThreshold
#' @param x.num <numeric>: numeric vector.
#' @param sdThreshold.num <numeric>: number of standard deviation. (Default 3)
#' @param bounds.chr <character>: bounds to return, "lower", "upper" or "both". (Default "both")
#' @return numerical vector of thresholds values for outliers triming
#' @examples
#' set.seed(1111)
#' x.num <- rnorm(1000)
#' x.num <- sort(x.num)
#' x.num
#' SdThreshold(x.num, sdThreshold.num=2, bounds.chr="lower")
#' SdThreshold(x.num, sdThreshold.num=2, bounds.chr="both")
#' SdThreshold(x.num, sdThreshold.num=2, bounds.chr="upper")
NULL