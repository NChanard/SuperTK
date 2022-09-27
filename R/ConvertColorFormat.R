#' Convert a color format.
#'
#' ConvertColorFormat
#' @description Convert a color in a desired format.
#' @name ConvertColorFormat
#' @param color.col <charcater>: a color in any format.
#' @param alpha.bln <logical>: whether the alpha layer should be returned. (Default FALSE)
#' @param format.str <character>: a character (case insensitive) that give the format you want ("Hex", "Hsl", "Rgb"). (Default "Hex")
#' @return An integer vector of the color's rgb code.
#' @examples
#' ConvertColorFormat("#ebb0107f", alpha.bln=TRUE, format.str="Rgb")
#' ConvertColorFormat("#ebb0107f", alpha.bln=TRUE, format.str="Hsl")
#' ConvertColorFormat(c(235,176,16,127), alpha.bln=TRUE, format.str="Hex")
#' ConvertColorFormat(c(235,176,16,127), alpha.bln=TRUE, format.str="Hsl")
#' ConvertColorFormat(c(43.8,0.873,0.492,0.498), alpha.bln=TRUE, format.str="Rgb")
#' ConvertColorFormat(c(43.8,0.873,0.492,0.498), alpha.bln=TRUE, format.str="Hex")
NULL