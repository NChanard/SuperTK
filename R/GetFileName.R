#' Get file name.
#'
#' GetFileName
#' @description Function as `basename()` with the option to not return the file extension.
#' @name GetFileName
#' @param path.pth <character>: the path to the file.
#' @param ext.bln <logical>: whether the file extension should be returned with the file name. (Default FALSE)
#' @return A character string.
#' @examples
#' filePath.pth ="my/path/to/my/file.txt"
#' GetFileName(path.pth=filePath.pth, ext.bln=FALSE)
#' GetFileName(path.pth=filePath.pth, ext.bln=TRUE)
NULL