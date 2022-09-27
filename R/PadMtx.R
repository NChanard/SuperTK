#' Add a value around a matrix.
#'
#' PadMtx
#' @description Add a value around a matrix.
#' @name PadMtx
#' @param mat.mtx <matrix>: numerical matrix.
#' @param padSize.num <numeric>: number of columns or rows to add. (Default 1)
#' @param value.num <numeric>: value to add. If Null create mirror of choosen sides. (Default 0)
#' @param side.chr <character>: side to pad, must be one or some of 'top','bot','right' or 'left'. (Default c('top','bot','right','left') )
#' @return a matrix.
#' @examples
#' mat.mtx = matrix(1:25,5,5)
#' PadMtx(mat.mtx=mat.mtx, padSize.num=1, value.num=0, side.chr=c('top','bot','right','left') )
#' PadMtx(mat.mtx=mat.mtx, padSize.num=1, value.num=NULL, side.chr=c('top','bot','right','left') )
#' PadMtx(mat.mtx=mat.mtx, padSize.num=1, value.num=0, side.chr=c('right','left') )
#' PadMtx(mat.mtx=mat.mtx, padSize.num=1, value.num=0, side.chr=c('top') )
NULL