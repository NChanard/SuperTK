#' Two dimension Gaussian kernel.
#'
#' GaussKernel
#' @description Two dimension Gaussian kernel.
#' @name GaussKernel
#' @param sd.num <numeric>: standard deviation parameter of the gaussian. (Default 1)
#' @param kernSize.num <numeric>: size of kernel. If null size is 1+4*sd.num. (Default NULL)
#' @param scale.chr <character>: scaling kind of box. If "1" sum of kernel equal 1. If "int" Minimal value of kernel is 1 and all entry are integer. If "none", kernel is not scale. (Default "1")
#' @param by.num <numerical>: step size for compute Gaussian function in two dimension (Default 0.01).
#' @return numerical matrix.
#' @examples
#' GaussKernel(scale.chr=c("none"))
#' GaussKernel(scale.chr=c("1"))
#' sum(GaussKernel(scale.chr=c("1")))
#' GaussKernel(scale.chr=c("int"))
NULL