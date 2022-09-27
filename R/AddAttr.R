#' Add list as attributes.
#'
#' AddAttr
#' @description Add list as attributes to any object with or without overwrite.
#' @name AddAttr
#' @param var.any <any>: an object to which attributes are to be added.
#' @param attribute.lst <list>: a named list of new attributes.
#' @param overwrite.bln <logical>: whether an overwrite is required on attributes with the same name.(Default FALSE)
#' @return the object with new attributes.
#' @examples
#' x <- 1:10
#' x
#' attribute.lst = list(dim=c(2,5))
#' x <- AddAttr(x,attribute.lst)
#' x
#' attribute.lst = list(dim=c(5,2))
#' x <- AddAttr(x,attribute.lst)
#' x
#' x <- AddAttr(x,attribute.lst,overwrite.bln=TRUE)
#' x
NULL