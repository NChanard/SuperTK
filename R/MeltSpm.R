#' Coerce matrix in tibble.
#'
#' MeltSpm
#' @description Coerce a sparse matrix M in tibble where columns: i is row index, j is column index and x the value M[i,j].
#' @name MeltSpm
#' @param mat.spm <dgCMatrix or dgCMatrix coercible>: a matrix.
#' @return A tibble.
#' @examples
#' i=c(1,1,2,2,3,3,4,4,4,4)
#' j=c(1,4,2,5,1,4,2,3,4,5)
#' x=c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
#' mat.spm = Matrix::sparseMatrix(i=i, j=j, x=x, dims=c(5,5))
#' mat.spm
#' meltedMat.tbl <- MeltSpm(mat.spm)
#' meltedMat.tbl[order(meltedMat.tbl$i),]
NULL