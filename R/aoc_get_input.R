#' get AoC puzzle input
#'
#' Gets the user specific input for a given Advent of Code day puzzle directly
#' from the adventofcode.com server
#'
#' @param day numeric. Day for which input is required
#' @param year numeric. Year for which input is required
#' @param cookie_path character string. Path to the cookie string stored as a text file.
#' @param encoding character string. Encoding of result. Defaults to "UTF-8".
#' @return Returns user specific puzzle input as returned by the advent of code server.
#' @import dplyr httr
#' @details In chrome, get your cookie details by clicking on the triple dot menu
#' (top right) > More tools > Developer tools > Application > Cookies. You need to copy the long
#' string in the `value` column for row `session`. Save that as a text file.
#' @export
aoc_get_input <- function(day, year = 2017, cookie_path, encoding = "UTF-8"){

    if(!file.exists(cookie_path)){
        stop("no file exists at supplied cookie path, \n please provide valid path")
    }

    # read cookie
    cookie <- readLines(cookie_path)
    # get input
    GET(paste0("https://adventofcode.com/", year,"/day/", day, "/input"),
        set_cookies("session" = cookie)) %>%
        content("text", encoding = encoding) %>% trimws()
}


