#' Modify a color
#'
#' MutateColorParameter
#' @description Modify a color parameter as saturation, light or alpha parameter.
#' @name MutateColorParameter
#' @param color.col <character or numeric>: color in any format.
#' @param parameter.str <character>: the parameter that will be modify (one of "saturation", "light", "alpha").
#' @param prctMutation.num <numeric>: the percentage of modification. Must be between [0-1]. (Default 0.2)
#' @param operation.str <character>: must be one of "=", "+", "-", "*", "/", "\%*\%" or "\%/\%".
#' \itemize{
#' \item "=" put the choosen parameter at the prctMutation value; e.g if parameter=0.6 and prctMutation.num=0.2 returned parameter=0.2
#' \item "+" add at the choosen parameter the prctMutation value; e.g if parameter = 0.6 prctMutation.num=0.2 returned parameter=0.8 (0.6+0.2)
#' \item "-" subtract at the choosen parameter the prctMutation value; e.g if parameter = 0.6 and prctMutation.num = 0.2 returned parameter=0.4 (0.6-0.2)
#' \item "*" increases the choosen parameter of the prctMutation value; e.g if parameter = 0.6 and prctMutation.num = 0.2 returned parameter=0.72 (0.6 + 0.6*0.2)
#' \item "/" decreases the choosen parameter of the prctMutation value; e.g if parameter = 0.6 and prctMutation.num = 0.2 returned parameter=0.48 (0.6 - 0.6*0.2)
#' \item "\%*\%" increases the choosen parameter of the prctMutation value of the rest; e.g if parameter = 0.4 and prctMutation.num = 0.2 returned parameter=0.68 (0.6 + 0.4*0.2)
#' \item "\%/\%" decreases the choosen parameter of the prctMutation value of the rest; e.g if parameter = 0.4 and prctMutation.num = 0.2 returned parameter=0.32 (0.6 - 0.4*0.2)
#' }
#' @param alpha.bln <logical>: whether the alpha layer should be returned. (Default FALSE)
#' @return The mutated color.
#' @examples
#' MutateColorParameter(
#' color.col="#ebb0107f",
#' operation.str="+",
#' parameter.str="light",
#' alpha.bln=TRUE,
#' prctMutation.num=0.2
#' )
NULL