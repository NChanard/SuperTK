#' Resize a matrix
#'
#' ResizeMatrix
#' @description Resize a numericam matrix in new dimension.
#' @name ResizeMatrix
#' @param matrice.mtx <matrix>: a numericam matrix to resize.
#' @param newDim.num <integer>: the number of rows and cols in resized matrix.
#' @return resized matrix.
#' @examples
#' matrice.mtx <- matrix(0,11,11)
#' matrice.mtx[which(as.logical(1:(11*11)%%2))] <- 1:ceiling((11*11)/2)
#' matrice.mtx[2,] <- 100
#' matrice.mtx[,7] <- 200
#' matrice.mtx
#' ResizeMatrix(matrice.mtx=matrice.mtx, newDim.num=c(7,7))
#' ResizeMatrix(matrice.mtx=matrice.mtx, newDim.num=c(13,13))
NULL