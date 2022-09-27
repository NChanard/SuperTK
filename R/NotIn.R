#' Binary operator, inverse to \%in\%.
#'
#' NotIn
#' @description Binary operator, inverse to \%in\%.
#' @name NotIn
#' @param lhs <vector or NULL>: values to be compared against rhs
#' @param rhs <vector or NULL>: values to be compared against lhs
#' @return A boolean.
#' @examples
#' "A" |> NotIn(c("A","B","C"))
#' "A" |> NotIn(c("B","C","D"))
#' NotIn("A", c("A","B","C"))
#' NotIn("A", c("B","C","D"))
NULL