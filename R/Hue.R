#' Create an Hue palette.
#'
#' Hue
#' @description Create an Hue palette.
#' @name Hue
#' @param paletteLength.num <numeric>: color number.
#' @param rotation.num <numeric>: if positive, rotates clockwise in the color space, reversing if the number is negative. If is NULL compute rotation according to hueRange.num parameter. (Default NULL)
#' @param hueRange.num <numeric>: Degree range in color space between 0 and 360. (Default c(0,360))
#' @param saturation.num <numeric>: Saturation value between 0 and 1. (Default 0.65)
#' @param lightness.num <numeric>: Lightness value between 0 and 1. (Default 0.65)
#' @param alpha.num <numeric>: Opacity value between 0 and 1. (Default 1)
#' @param alpha.bln <logical>: whether the alpha layer should be returned. (Default FALSE)
#' @return A vector of color.
#' @examples
#' Hue(paletteLength.num=9)
#' ggPalette(Hue(paletteLength.num=9))
NULL