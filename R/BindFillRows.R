#' Bind data frames after filling missing columns.
#'
#' BindFillRows
#' @description Bind data frames by rows after filling missing columns with NA.
#' @name BindFillRows
#' @param data.lst_df <data.frames or list[data.frame]>: data frames to bind or list of data.frames. If is a data.frame create a list with arguments `data.lst_df` and `...`, else `...` are ignored.
#' @param ... <data.frames or list[data.frame]>: data frames to bind or list of data.frames.
#' @return The binded data frame
#' @examples
#' df1 <- data.frame(a = c(1:5), b = c(6:10))
#' df2 <- data.frame(a = c(11:15), b = c(16:20), c = LETTERS[1:5])
#' BindFillRows(df1,df2)
#' BindFillRows(list(df1,df2))
NULL