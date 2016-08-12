

#' Zoomable Circle Packing
#'
#' @param data
#' @param settings
#' @param diameter
#'
#' @return
#' @import htmlwidgets
#' @export
#'
#' @examples
#' require(d3circle)
#' require(jsonlite)
#'
#' data <- fromJSON(system.file("data/flare.json",package='d3circle'),
#'                  simplifyDataFrame = FALSE)
#'
#' d3circle(data = data,diameter=900)
d3circle <- function(data,
                     settings=NULL,
                     diameter=500
                     ) {

  x <- list(
    data = data,
    settings = settings
  )

  # create the widget
  htmlwidgets::createWidget("d3circle", x,diameter)
}

#' @export
d3circleOutput <- function(outputId, width = "100%", height = "400px") {
  shinyWidgetOutput(outputId, "d3circle", diameter, package = "d3circle")
}

#' @export
renderd3circle <- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) { expr <- substitute(expr) } # force quoted
  shinyRenderWidget(expr, d3circleOutput, env, quoted = TRUE)
}
