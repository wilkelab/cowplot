#' Create customizable legend key glyphs
#'
#' These functions create customizable legend key glyphs, such as filled rectangles or
#' circles.
#' @param colour,color Unquoted name of the aesthetic to use for the outline color,
#'   usually `colour`, `color`, or `fill`. Can also be a color constant, e.g. `"red"`.
#' @param fill Unquoted name of the aesthetic to use for the fill color,
#'   usually `colour`, `color`, or `fill`. Can also be a color constant, e.g. `"red"`.
#' @param alpha Unquoted name of the aesthetic to use for alpha,
#'   usually `alpha`. Can also be a numerical constant, e.g. `0.5`.
#' @param size Unquoted name of the aesthetic to use for the line thickness of the
#'   outline, usually `size`. Can also be a numerical constant, e.g. `0.5`.
#' @param linetype Unquoted name of the aesthetic to use for the line type of the
#'   outline, usually `linetype`. Can also be a constant, e.g. `2`.
#' @param padding Unit vector with four elements specifying the top, right, bottom,
#'   and left padding from the edges of the legend key to the edges of the key glyph.
#' @examples
#' library(ggplot2)
#'
#' set.seed(1233)
#' df <- data.frame(
#'   x = sample(letters[1:2], 10, TRUE),
#'   y = rnorm(10)
#' )
#'
#' ggplot(df, aes(x, y, color = x)) +
#'   geom_boxplot(
#'     key_glyph = rectangle_key_glyph(fill = color, padding = margin(3, 3, 3, 3))
#'   )
#'
#' ggplot(df, aes(x, y, color = x)) +
#'   geom_boxplot(
#'     key_glyph = circle_key_glyph(
#'       fill = color,
#'       color = "black", linetype = 3, size = 0.3,
#'       padding = margin(2, 2, 2, 2)
#'     )
#'   )
#' @export
rectangle_key_glyph <- function(colour = NA, fill = fill, alpha = alpha, size = size,
                                linetype = linetype, padding = unit(c(0, 0, 0, 0), "pt"),
                                color) {
  colour_aes <- enquo(colour)
  fill_aes <- enquo(fill)
  alpha_aes <- enquo(alpha)
  size_aes <- enquo(size)
  linetype_aes <- enquo(linetype)

  # enable US spelling
  color <- enquo(color)
  if (!quo_is_missing(color)) {
    colour_aes <- color
  }

  function(data, params, size) {
    if (is.null(data$size)) {
      data$size <- 0.5
    }

    # enable US spelling
    if (is.null(data$color)) {
      data$color <- data$colour
    }

    lwd <- min(eval_tidy(size_aes, data), min(size) / 4)

    col <- eval_default(colour_aes, data, NA)
    fill <- eval_default(fill_aes, data, "grey20")
    alpha <- eval_default(alpha_aes, data, NA)
    lty <- eval_default(linetype_aes, data, 1)

    rectGrob(
      x = unit(0.5, "npc") + 0.5*(padding[4] - padding[2]),
      y = unit(0.5, "npc") + 0.5*(padding[3] - padding[1]),
      width = unit(1, "npc") - unit(lwd, "mm") - padding[2] - padding[4],
      height = unit(1, "npc") - unit(lwd, "mm") - padding[1] - padding[3],
      gp = gpar(
        col = col,
        fill = scales::alpha(fill, alpha),
        lty = lty,
        lwd = lwd * .pt,
        linejoin = params$linejoin %||% "mitre",
        # `lineend` is a workaround for Windows and intentionally kept unexposed
        # as an argument. (c.f. https://github.com/tidyverse/ggplot2/issues/3037#issuecomment-457504667)
        lineend = if (identical(params$linejoin, "round")) "round" else "square"
      )
    )
  }
}

#' @rdname rectangle_key_glyph
#' @export
circle_key_glyph <- function(colour = NA, fill = fill, alpha = alpha, size = size,
                             linetype = linetype, padding = unit(c(0, 0, 0, 0), "pt"),
                             color) {
  colour_aes <- enquo(colour)
  fill_aes <- enquo(fill)
  alpha_aes <- enquo(alpha)
  size_aes <- enquo(size)
  linetype_aes <- enquo(linetype)

  # enable US spelling
  color <- enquo(color)
  if (!quo_is_missing(color)) {
    colour_aes <- color
  }

  function(data, params, size) {
    if (is.null(data$size)) {
      data$size <- 0.5
    }

    # enable US spelling
    if (is.null(data$color)) {
      data$color <- data$colour
    }

    lwd <- min(eval_tidy(size_aes, data), min(size) / 4)
    # use the minimum of width and height as the circle radius
    radius <- min(
      unit(1, "npc") - unit(lwd, "mm") - padding[2] - padding[4],
      unit(1, "npc") - unit(lwd, "mm") - padding[1] - padding[3]
    )

    col <- eval_default(colour_aes, data, NA)
    fill <- eval_default(fill_aes, data, "grey20")
    alpha <- eval_default(alpha_aes, data, NA)
    lty <- eval_default(linetype_aes, data, 1)

    circleGrob(
      x = unit(0.5, "npc") + 0.5*(padding[4] - padding[2]),
      y = unit(0.5, "npc") + 0.5*(padding[3] - padding[1]),
      r = 0.5*radius,
      gp = gpar(
        col = col,
        fill = scales::alpha(fill, alpha),
        lty = lty,
        lwd = lwd * .pt
      )
    )
  }
}


eval_default <- function(x, data, default) {
  force(default)

  suppressWarnings(
    tryCatch(
      error = function(e) default,
      eval_tidy(x, data)
    )
  )
}
