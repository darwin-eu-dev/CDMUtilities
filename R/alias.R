# File created using OMOPUtilities::useAlias


#' @rdname exportResults
#' @export
export_results <- function(...,
                           path = here::here(),
                           results_stem = "results",
                           study_id = NULL,
                           zip = TRUE) {
  exportResults(
    ... = ...,
    path = path,
    resultsStem = results_stem,
    studyId = study_id,
    zip = zip
  )
}

#' @rdname listInputCheck
#' @export
list_input_check <- function() {
  listInputCheck()
}

#' @rdname readResults
#' @export
read_results <- function(path) {
  readResults(path = path)
}

#' @rdname toCamelCase
#' @export
to_camel_case <- function(string) {
  toCamelCase(string = string)
}

#' @rdname toSnakeCase
#' @export
to_snake_case <- function(string) {
  toSnakeCase(string = string)
}

#' @rdname useAlias
#' @export
use_alias <- function(original_case = c("camelCase", "snake_case"),
                      new_case = c("camelCase", "snake_case")) {
  useAlias(
    originalCase = original_case,
    newCase = new_case
  )
}

#' @rdname writeLog
#' @export
write_log <- function(message,
                      warn = TRUE) {
  writeLog(
    message = message,
    warn = warn
  )
}
