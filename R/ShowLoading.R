#' Show the loading of a looping operation.
#'
#' ShowLoading
#' @description Show the loading of a looping operation.
#' @name ShowLoading
#' @param start.tim <POSIXct POSIXt>: A time obtain with 'Sys.time()'.
#' @param operation.ndx <numerical>: The index number of the operation.
#' @param operation.num <numerical>: The total number of operation.
#' @examples
#' start.tim <- Sys.time()
#' for(i in seq_len(10000)){
#' ShowLoading(start.tim, i , 10000)
#' }
NULL