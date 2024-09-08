# This function saves your session information with custom name prefix and
# today's date.
#' Save session information to file
#'
#' @description
#' Save `sink()` session information to a text file in the working directory.
#'
#'
#' @param additional_filename_text User-specified text to be included in the
#'   saved file name.
#' @param include_date Boolean. Default=TRUE. If TRUE, include today's date in
#'   the saved file name in format %Y-%m-%d.
#'
#' @returns Saves a text file with `sessionInfo()` to the current directory.
#'
#' @examples
#' sink_session_info(additional_filename_text = my_R_project,
#'                   include_date = FALSE)
#'
#' @export
sink_session_info <- function(additional_filename_text = "", include_date = TRUE) {

  if (include_date) {
    sink(paste(Sys.Date(), "_", additional_filename_text, "_sessionInfo.txt", sep = ""))
  } else {
    sink(paste(additional_filename_text, "_sessionInfo.txt", sep = ""))
  }

  print(date)
  print(sessionInfo())
  sink()
}
