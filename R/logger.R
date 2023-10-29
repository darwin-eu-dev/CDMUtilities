# Copyright 2023 DARWIN EU (C)
#
# This file is part of OMOPUtilities
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#' Write message to a log file.
#'
#' @param message Message to record in the logger.
#' @param warn Weather to throw a warning if the logger does not exist.
#'
#' @export
#'
#' @return Invisible cdm object
#'
writeLog <- function(message, warn = TRUE) {
  logger <- getOption("logger")

  if (!is.null(logger)) {
    # initial checks
    checkInput(message = message, warn = warn, logger = logger)

    # add line break
    message <- paste0("[", Sys.time(), "]  ", message, "\n")

    # write message
    if (file.exists(logger)) {
      message <- c(readLines(con = logger), message)
    }
    writeLines(text = message, con = logger)
  } else if (isTRUE(warn)) {
    cli::cli_warn(c(
      "Logger not found. Message couldn't be written.",
      "To create a logger: options(logger = \"path\")"
    ))
  }

  invisible(TRUE)
}
