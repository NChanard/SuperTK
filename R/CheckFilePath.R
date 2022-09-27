#' Check if a file path is valid.
#'
#' CheckFilePath
#' @description Check if a file path is valid. If a file not exist, complete or create the file path with the name and extension given to the function.
#' @name CheckFilePath
#' @param path.pth <character>: the file path to check and complete if not complete.
#' @param fileName.chr <character>: the name of the file to complete if not in `path.pth`.
#' @param format.chr <character>: the extension format of the file to complete if not in `path.pth`.
#' @return A character string.
#' @examples
#' CheckFilePath(path.pth="my/path/to/my/file.txt")
#' CheckFilePath(path.pth=NULL,fileName.chr="file", format.chr="txt")
NULL