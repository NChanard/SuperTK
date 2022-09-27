#' Apply a function over two RLE
#'
#' ReduceRun
#' @description Apply a function on the values over two RLE and return one RLE.
#' @name ReduceRun
#' @param first.rle <rle or Rle>: first rle.
#' @param second.rle <rle or Rle>>: second rle.
#' @param reduceFun.chr <character>: name of a function to apply e.g paste, sum, mean.
#' @param ... <...>: Other parameter for the reduce function.
#' @return reduced Rle
#' @examples
#' first.rle = rle(c("A","A","B"))
#' second.rle = rle(c("A","B","B"))
#' ReduceRun(first.rle=first.rle, second.rle=second.rle, reduceFun.chr="paste", sep="_" )
#' first.rle = S4Vectors::Rle(c(1,2,3))
#' second.rle = S4Vectors::Rle(c(5,5,5))
#' ReduceRun(first.rle=first.rle, second.rle=second.rle, reduceFun.chr="sum")
NULL