#' Create a YlGnBu palette
#'
#' YlGnBu
#' @description Create a YlGnBu palette.
#' @name YlGnBu
#' @param paletteLength.num <numeric>: color number.
#' @param space.chr <numeric>: a character string; interpolation in RGB or CIE Lab color spaces. See ?grDevices::colorRamp for more details. (Default "rgb")
#' @param interpolate.chr <numeric>: use spline or linear interpolation. See ?grDevices::colorRamp for more details. (Default "linear")
#' @param bias.num <numeric>: a positive number. Higher values give more widely spaced colors at the high end. See ?grDevices::colorRamp for more details. (Default 1)
#' @return A vector of color.
#' @examples
#' YlGnBu(9)
#' ggPalette(YlGnBu(255))
NULL