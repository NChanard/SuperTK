#' Create a OrRd palette
#'
#' OrRd
#' @description Create a OrRd palette.
#' @name OrRd
#' @param paletteLength.num <numeric>: color number.
#' @param space.chr <numeric>: a character string; interpolation in RGB or CIE Lab color spaces. See ?grDevices::colorRamp for more details. (Default "rgb")
#' @param interpolate.chr <numeric>: use spline or linear interpolation. See ?grDevices::colorRamp for more details. (Default "linear")
#' @param bias.num <numeric>: a positive number. Higher values give more widely spaced colors at the high end. See ?grDevices::colorRamp for more details. (Default 1)
#' @return A vector of color.
#' @examples
#' OrRd(9)
#' ggPalette(OrRd(255))
NULL