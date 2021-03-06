#' Check parameters
#'
#' This functions checks if the parameters of a given function
#' belong to the pre-defined parameter list.
#' @param fun_name \code{character} string; the name of the function.
#' @param parameters \code{character} vector; acceptable parameter names.
#' @export
#' @examples
#' f1 <- function(x = 1)
#'   x
#'
#' check_params("f1", "x")

check_params <- function(fun_name, parameters) {
  res <- all(setdiff(names(as.list(args(fun_name))), "") %in% parameters)
  if(!res)
    stop(paste0("Wrong parameter name in the ", fun_name, " function."))
  res
}



