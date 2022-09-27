#' One dimension Gaussian kernel.
#'
#' GaussBox
#' @description One dimension Gaussian kernel.
#' @name GaussBox
#' @param sd.num <numeric>: standard deviation parameter of the gaussian. (Default 1)
#' @param boxSize.num <numeric>: size of kernel. If NULL size is 1+4*sd.num (Default NULL)
#' @param scale.chr <character>: scaling kind of box. If "1" sum of kernel equal 1. If "int" Minimal value of kernel is 1 and all entry are integer. If "none", kernel is not scale. (Default "1")
#' @return numerical vector.
#' @examples
#' GaussBox( scale.chr="none")
#' GaussBox( scale.chr="1")
#' sum(GaussBox( scale.chr="1"))
#' GaussBox( scale.chr="int")
NULL