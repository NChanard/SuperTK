#' Convert a color in HSL to RGB.
#'
#' Hsl2Rgb
#' @description Convert a color in HSl (Hue,Saturation,Light) format to RGB format.
#' @name Hsl2Rgb
#' @param hsl.col <charcater>: a vector of the color's HSL code.
#' @param alpha.bln <logical>: whether the alpha layer should be returned. (Default FALSE)
#' @return An integer vector of the color's RGB code.
#' @examples
#' Hsl2Rgb(c(43.8,0.873,0.492,0.498),alpha.bln=TRUE)
NULL