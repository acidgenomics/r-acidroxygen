#' Deprecated functions
#'
#' @name deprecated
#' @inheritParams params
#' @seealso [Deprecated][base::Deprecated].
#' @return `.Deprecated`.
#'
#' @examples
#' a <- function(...) {
#'     .Deprecated("b")
#'     b(...)
#' }
#'
#' b <- function(x) {
#'     x + 1L
#' }
#'
#' withCallingHandlers(
#'     expr = a(1L),
#'     warning = function(w) {
#'         print(w)
#'         invokeRestart("muffleWarning")
#'     }
#' )
NULL
