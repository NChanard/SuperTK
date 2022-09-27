#' Explicit zeros in sparse matrix.
#'
#' Rise0
#' @description Explicit some implicit zeros in sparse matrix.
#' @name Rise0
#' @param mat.spm <dgCMatrix or dgCMatrix coercible>: a sparse matrix.
#' @param which.ndx <numeric> vector of positions of the zeros to be explicits (column driven). If NULL and coord.dtf NULL all zeros are explicits. (Default NULL)
#' @param coord.dtf <data.frame> a coordinate data frame for zeros to explicit Row index in fisrt column, columns index in second columns. If NULL the which.ndx parameter is used (Default NULL)
#' @return Sparse matrix with some explicit zeros.
#' @examples
#' set.seed(123)
#' mat.spm = as(matrix(floor(runif(7*13,0,2)),7,13), "dgCMatrix")
#' mat.spm
#' Rise0(mat.spm=mat.spm, which.ndx=c(1,3,6,10,12))
#' Rise0(mat.spm=mat.spm, coord.dtf=data.frame(i=c(1,5,3), j=c(1,2,3) ) )
#' Rise0(mat.spm=mat.spm)
NULL