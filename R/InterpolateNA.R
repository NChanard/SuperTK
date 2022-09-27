#' Interpolate NA values in a vector.
#'
#' InterpolateNA
#' @description Interpolation of NA in a linear or spline way.
#' @name InterpolateNA
#' @param x.num <numeric>: numerical vector with NA.
#' @param method.chr <character>: Kind of interpolation "linear" or "spline". (Default "spline")
#' @param ... <...>: suplemantary parameters for smooth.spline function.
#' @return a numerical vector.
#' @examples
#' set.seed(20071)
#' n <- 100
#' y.num <- sin(seq(0, 5*pi, length.out = n)) + rnorm(n=n, mean = 0, sd=0.1)
#' y.num[sample(1:n,round(0.5*n))] <- NA
#' plot(y.num)
#' plot(InterpolateNA(y.num,"spline"))
#' plot(InterpolateNA(y.num,"linear"))
NULL