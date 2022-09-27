#' Blur a matrix.
#'
#' BoxBlur
#' @description Blur a matrix with a one dimensional kernel.
#' @name BoxBlur
#' @param mat.mtx <matrix>: numerical matrix.
#' @param box.num <numeric>: the numerical vector for kernel. If NULL apply a GaussBox (see 'GaussBox' function) (Default NULL)
#' @param boxSize.num <numeric>: if box.num is NULL, size of kernel for 'GaussBox' function. (Default NULL)
#' @param sd.num <numeric>: if box.num is NULL, standard deviation parameter for 'GaussBox' function. (Default NULL)
#' @return Blurred matrix.
#' @examples
#' set.seed(981643)
#' mat.mtx <- rnorm(10000,50,10)**3 |> matrix(100,100)
#' heatmap(mat.mtx,Rowv=NA,Colv=NA)
#' heatmap(BoxBlur(mat.mtx),Rowv=NA,Colv=NA)
NULL