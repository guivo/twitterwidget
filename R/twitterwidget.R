#' Create a widget representing a twitter status
#'
#' The method create a widget able to embed a twitter status within a
#' Rmd page. The main parameter is the status ID, other parameters will
#' be passed to the factory method, according the official documentation:
#' https://developer.twitter.com/en/docs/twitter-for-websites/embedded-tweets/guides/embedded-tweet-parameter-reference
#'
#' @param twid ID of the twitter status, it should be passed as a string
#' @param pars list() containing the optional parameters passed to request
#' the rendering of the embedded tweets.
#' @param width width of the widget
#' @param height height of the widget
#' @param elementId ID of the HTML element
#'
#' @examples
#' twitterwidget('463440424141459456', list(hide_media=T))
#' @import htmlwidgets
#'
#' @export
twitterwidget <- function(twid, pars=NULL, width = NULL, height = NULL, elementId = NULL) {

  # forward options using x
  x = list(
    twid = twid,
    pars = pars
  )

  # create widget
  htmlwidgets::createWidget(
    name = 'twitterwidget',
    x,
    width = width,
    height = height,
    package = 'twitterwidget',
    elementId = elementId
  )
}

#' Shiny bindings for twitterwidget
#'
#' Output and render functions for using twitterwidget within Shiny
#' applications and interactive Rmd documents.
#'
#' @param outputId output variable to read from
#' @param width,height Must be a valid CSS unit (like \code{'100\%'},
#'   \code{'400px'}, \code{'auto'}) or a number, which will be coerced to a
#'   string and have \code{'px'} appended.
#' @param expr An expression that generates a twitterwidget
#' @param env The environment in which to evaluate \code{expr}.
#' @param quoted Is \code{expr} a quoted expression (with \code{quote()})? This
#'   is useful if you want to save an expression in a variable.
#'
#' @name twitterwidget-shiny
#'
#' @export
twitterwidgetOutput <- function(outputId, width = '100%', height = '400px'){
  htmlwidgets::shinyWidgetOutput(outputId, 'twitterwidget', width, height, package = 'twitterwidget')
}

#' @rdname twitterwidget-shiny
#' @export
renderTwitterwidget <- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) { expr <- substitute(expr) } # force quoted
  htmlwidgets::shinyRenderWidget(expr, twitterwidgetOutput, env, quoted = TRUE)
}
