#' Defunct functions
#'
#' @name defunct
#' @seealso [Defunct][base::Defunct].
#' @return `.Defunct`.
#'
#' @examples
#' a <- function(...) {
#'     .Defunct("b")
#' }
#'
#' withCallingHandlers(
#'     expr = tryCatch(
#'         expr = a(1L),
#'         error = function(e) {
#'             print(e)
#'             invisible()
#'         }
#'     )
#' )
NULL
