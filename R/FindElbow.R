#' Find the elbow point on a curve.
#'
#' FindElbow
#' @description Find the elbow point on a curve.
#' @name FindElbow
#' @param x.num <numeric>: numeric vector of x coordinates of the curve.
#' @param y.num <numeric>: numeric vector of y coordiantes of the curve.
#' @return Numeric vector of elbow coordinates.
#' @examples
#' x.num = 1:10
#' y.num = 1/sqrt(x.num)
#' elbow = FindElbow(x.num, y.num)
#' elbow
#' plot(y.num~x.num,type='l')
#' points(x=elbow[1],y=elbow[2])
NULL