#' Create pseudo documentation.
#'
#' GetHelper
#' @description Help developpers to create a documentation directly in a function. Usefull when the function is in a source script.
#' @name GetHelper
#' @param x.fun <function or call>: a function (or a call of) with the Helper header.
#' @return A character string ready to use in 'cat' function.
#' @examples
#' my_fun = function(x,y,z, help.bln=F){
#' # Helper
#' #Na. my_fun
#' #De. A function that do the mean
#' #Us. my_fun(x,y,z)
#' #Ar. x (numeric, integer)
#' #Ar. y (numeric, integer)
#' #Ar. z (numeric, integer)
#' #Va. the mean of x, y and z
#' #Ex. my_fun(1,3,5)
#' if(help.bln){return(cat(GetHelper(sys.call())))}
#' # Run
#' return(mean(c(x,y,z)))
#' }
#' my_fun(help.bln=TRUE)
NULL