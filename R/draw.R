# *************************************************
#                     Drawing code
# *************************************************



#' Draw a line from connected points
#'
#' Provide a sequence of x values and accompanying y values to draw a line on a plot.
#'
#' This is a convenience function, providing a wrapper around [ggplot2::geom_path()].
#'
#' @param x Vector of x coordinates.
#' @param y Vector of y coordinates.
#' @param ... geom_path parameters such as \code{colour}, \code{alpha}, \code{size}, etc.
#' @examples
#' ggdraw() +
#'   draw_line(
#'     x = c(0.2, 0.7, 0.7, 0.3),
#'     y = c(0.1, 0.3, 0.9, 0.8),
#'     color = "blue", size = 2
#'   )
#' @export
draw_line <- function(x, y, ...){
  geom_path(data = data.frame(x, y),
            aes(x = x, y = y),
            inherit.aes = FALSE,
            ...)
}

#' Draw multiple text-strings in one go.
#'
#' This is a convenience function to plot multiple pieces of text at the same time. It cannot
#' handle mathematical expressions, though. For those, use \code{draw_label}.
#'
#' Note that font sizes are scaled by a factor of 2.85, so sizes agree with those of
#' the theme. This is different from \code{geom_text} in ggplot2.
#'
#' By default, the x and y coordinates specify the center of the text box. Set \code{hjust = 0, vjust = 0} to specify
#' the lower left corner, and other values of \code{hjust} and \code{vjust} for any other relative location you want to
#' specify.
#'
#' For a full list of ... options, see [ggplot2::geom_label()].
#'
#' @param text A vector of Character (not expressions) specifying the string(s) to be written.
#' @param x Vector of x coordinates.
#' @param y Vector of y coordinates.
#' @param hjust (default = 0.5)
#' @param vjust (default = 0.5)
#' @param size Font size of the text to be drawn.
#' @param ... Style parameters, such as \code{colour}, \code{alpha}, \code{angle}, \code{size}, etc.
#' @seealso \code{\link{draw_label}}
#' @examples
#' # Draw onto a 1*1 drawing surface
#' ggdraw() + draw_text("Hello World!", x = 0.5, y = 0.5)
#' #
#' # Adorn a plot from the Anscombe data set of "identical" data.
#' library(ggplot2)
#'
#' p <- ggplot(anscombe, aes(x1, y1)) + geom_point() + geom_smooth()
#' three_strings <- c("Hello World!", "to be or not to be", "over and out")
#' p + draw_text(three_strings, x = 8:10, y = 5:7, hjust = 0)
#' @export
draw_text <- function(text, x = 0.5, y = 0.5, size = 14, hjust = 0.5, vjust = 0.5, ...){
  geom_text(data = data.frame(text, x, y),
            aes(x = x, y = y, label = text),
            size = (size / .pt), # scale font size to match size in theme definition
            inherit.aes = FALSE,
			hjust = hjust,
			vjust = vjust,
            ...)
}


#' Draw a text label or mathematical expression.
#'
#' This function can draw either a character string or mathematical expression at the given
#' coordinates. It works both on top of \code{ggdraw} and directly with \code{ggplot}, depending
#' on which coordinate system is desired (see examples).
#'
#' By default, the x and y coordinates specify the center of the text box. Set \code{hjust = 0, vjust = 0} to specify
#' the lower left corner, and other values of \code{hjust} and \code{vjust} for any other relative location you want to
#' specify.
#' @param label String or plotmath expression to be drawn.
#' @param x The x location (origin) of the label.
#' @param y The y location (origin) of the label.
#' @param hjust Horizontal justification. Default = 0.5 (centered on x). 0 = flush-left at x, 1 = flush-right.
#' @param vjust Vertical justification. Default = 0.5 (centered on y). 0 = baseline at y, 1 = ascender at y.
#' @param fontfamily The font family
#' @param fontface The font face ("plain", "bold", etc.)
#' @param color,colour Text color
#' @param size Point size of text
#' @param angle Angle at which text is drawn
#' @param lineheight Line height of text
#' @param alpha The alpha value of the text
#' @seealso \code{\link{ggdraw}}
#' @examples
#' library(ggplot2)
#'
#' # setup plot and a label (regression description)
#' p <- ggplot(mtcars, aes(disp, mpg)) +
#'   geom_line(color = "blue") +
#'   theme_half_open() +
#'   background_grid(minor = 'none')
#' out <- cor.test(mtcars$disp, mtcars$mpg, method = 'sp', exact = FALSE)
#' label <- substitute(
#'   paste("Spearman ", rho, " = ", estimate, ", P = ", pvalue),
#'   list(estimate = signif(out$estimate, 2), pvalue = signif(out$p.value, 2))
#' )
#'
#' # Add label to plot, centered on {x,y} (in data coordinates)
#' p + draw_label(label, x = 300, y = 32)
#' # Add label to plot in data coordinates, flush-left at x, baseline at y.
#' p + draw_label(label, x = 100, y = 30, hjust = 0, vjust = 0)
#'
#' # Add labels via ggdraw. Uses ggdraw coordinates.
#' # ggdraw coordinates default to xlim = c(0, 1), ylim = c(0, 1).
#' ggdraw(p) +
#'   draw_label("centered on 70% of x range,\n90% of y range", x = 0.7, y = 0.9)
#'
#' ggdraw(p) +
#'   draw_label("bottom left at (0, 0)", x = 0, y = 0, hjust = 0, vjust = 0) +
#'   draw_label("top right at (1, 1)", x = 1, y = 1, hjust = 1, vjust = 1) +
#'   draw_label("centered on (0.5, 0.5)", x = 0.5, y = 0.5, hjust = 0.5, vjust = 0.5)
#' @export
draw_label <- function(label, x = 0.5, y = 0.5, hjust = 0.5, vjust = 0.5,
                    fontfamily = "", fontface = "plain", color = "black", size = 14,
                    angle = 0, lineheight = 0.9, alpha = 1, colour)
{
  if (!missing(colour)) {
    color <- colour
  }

  text_par <- grid::gpar(col = color,
                         fontsize = size,
                         fontfamily = fontfamily,
                         fontface = fontface,
                         lineheight = lineheight,
                         alpha = alpha)

  # render the label
  text.grob <- grid::textGrob(label, x = grid::unit(0.5, "npc"), y = grid::unit(0.5, "npc"),
                             hjust = hjust, vjust = vjust, rot = angle, gp = text_par)
  annotation_custom(text.grob, xmin = x, xmax = x, ymin = y, ymax = y)
}


#' Add a label to a plot
#'
#' This function adds a plot label to the upper left corner of a graph (or an arbitrarily specified position). It takes all the same parameters
#' as \code{draw_text}, but has defaults that make it convenient to label graphs with letters A, B, C, etc. Just like \code{draw_text()},
#' it can handle vectors of labels with associated coordinates.
#' @param label String (or vector of strings) to be drawn as the label.
#' @param x The x position (or vector thereof) of the label(s).
#' @param y The y position (or vector thereof) of the label(s).
#' @param hjust Horizontal adjustment.
#' @param vjust Vertical adjustment.
#' @param size Font size of the label to be drawn.
#' @param fontface Font face of the label to be drawn.
#' @param family (optional) Font family of the plot labels. If not provided, is taken from the current theme.
#' @param color,colour (optional) Color of the plot labels. If not provided, is taken from the current theme.
#' @param ... Other arguments to be handed to \code{draw_text}.
#' @export
draw_plot_label <- function(label, x = 0, y = 1, hjust = -0.5, vjust = 1.5, size = 16, fontface = 'bold',
                            family = NULL, color = NULL, colour, ...){
  if (is.null(family)) {
    family <- theme_get()$text$family
  }

  if (!missing(colour)) {
    color <- colour
  }

  if (is.null(color)) {
    color <- theme_get()$text$colour
  }

  draw_text(text = label, x = x, y = y, hjust = hjust, vjust = vjust, size = size, fontface = fontface,
            family = family, color = color, ...)
}


#' Add a label to a figure
#'
#' The main purpose of this function is to add labels specifying extra information about
#' the figure, such as "Figure 1", or "A" - often useful in cowplots with more than
#' one pane. The function is similar to \code{draw_plot_label}.
#' @param label Label to be drawn
#' @param position Position of the label, can be one of "top.left", "top", "top.right", "bottom.left", "bottom", "bottom.right". Default is "top.left"
#' @param size (optional) Size of the label to be drawn. Default is the text size of the current theme
#' @param fontface (optional) Font face of the label to be drawn. Default is the font face of the current theme
#' @param ... other arguments passed to \code{draw_plot_label}
#' @seealso \code{\link{draw_plot_label}}
#' @examples
#' library(ggplot2)
#' df <- data.frame(
#'   x = 1:10, y1 = 1:10, y2 = (1:10)^2, y3 = (1:10)^3, y4 = (1:10)^4
#' )
#'
#' p1 <- ggplot(df, aes(x, y1)) + geom_point()
#' p2 <- ggplot(df, aes(x, y2)) + geom_point()
#' p3 <- ggplot(df, aes(x, y3)) + geom_point()
#' p4 <- ggplot(df, aes(x, y4)) + geom_point()
#'
#' # Create a simple grid
#' p <- plot_grid(p1, p2, p3, p4, align = 'hv')
#'
#' # Default font size and position
#' p + draw_figure_label(label = "Figure 1")
#'
#' # Different position and font size
#' p + draw_figure_label(label = "Figure 1", position = "bottom.right", size = 10)
#'
#' # Using bold font face
#' p + draw_figure_label(label = "Figure 1", fontface = "bold")
#'
#' # Making the label red and slanted
#' p + draw_figure_label(label = "Figure 1", angle = -45, colour = "red")
#'
#' # Labeling an individual plot
#' ggdraw(p2) + draw_figure_label(label = "Figure 1", position = "bottom.right", size = 10)
#'
#' @author Ulrik Stervbo (ulrik.stervbo @ gmail.com)
#' @export
draw_figure_label <- function(label, position = c("top.left", "top", "top.right", "bottom.left", "bottom", "bottom.right"), size, fontface, ...){
  # Get the position
  position <- match.arg(position)

  # Set default font size and face from the theme
  if(missing(size)){
    size <- theme_get()$text$size
  }
  if(missing(fontface)){
    fontface <- theme_get()$text$face
  }

  # Call draw_plot_label() with appropriate label positions
  switch(position,
         top.left     = draw_plot_label(label, x = 0,   y = 1, hjust = -0.1, vjust = 1.1,  size = size, fontface = fontface, ...),
         top          = draw_plot_label(label, x = 0.5, y = 1, hjust = 0,    vjust = 1.1,  size = size, fontface = fontface, ...),
         top.right    = draw_plot_label(label, x = 1,   y = 1, hjust = 1.1,  vjust = 1.1,  size = size, fontface = fontface, ...),
         bottom.left  = draw_plot_label(label, x = 0,   y = 0, hjust = -0.1, vjust = -0.1, size = size, fontface = fontface, ...),
         bottom       = draw_plot_label(label, x = 0.5, y = 0, hjust = 0,    vjust = -0.1, size = size, fontface = fontface, ...),
         bottom.right = draw_plot_label(label, x = 1,   y = 0, hjust = 1.1,  vjust = -0.1, size = size, fontface = fontface, ...)
  )
}

#' Draw an image
#'
#' Places an image somewhere onto the drawing canvas. By default, coordinates run from
#' 0 to 1, and the point (0, 0) is in the lower left corner of the canvas. Requires the `magick`
#' package to work, and fails gracefully if that package is not installed.
#' @param image The image to place. Can be a file path, a URL, or a raw vector with image data,
#'  as in `magick::image_read()`. Can also be an image previously created by `magick::image_read()` and
#'  related functions.
#' @param x The x location of the image. (Left side if `hjust = 0`.)
#' @param y The y location of the image. (Bottom side if `vjust = 0`.)
#' @param hjust,vjust Horizontal and vertical justification relative to x.
#' @param halign,valign Horizontal and vertical justification of the image inside
#'   the box.
#' @param width Width of the image.
#' @param height Height of the image.
#' @param scale Scales the image relative to the rectangle defined by `x`, `y`, `width`, `height`. A setting
#'   of `scale = 1` indicates no scaling.
#' @param clip Set to "on" to clip the image relative to the box into which it is draw (useful for `scale > 1`).
#'   Note that clipping doesn't always work as expected, due to limitations of the grid graphics system.
#' @param interpolate A logical value indicating whether to linearly interpolate the image
#'  (the alternative is to use nearest-neighbour interpolation, which gives a more blocky result).
#' @examples
#' library(ggplot2)
#'
#' # Use image as plot background
#' p <- ggplot(iris, aes(x = Sepal.Length, fill = Species)) +
#'   geom_density(alpha = 0.7) +
#'   scale_y_continuous(expand = expansion(mult = c(0, 0.05))) +
#'   theme_half_open(12)
#'
#' logo_file <- system.file("extdata", "logo.png", package = "cowplot")
#' ggdraw() +
#'   draw_image(
#'     logo_file, scale = .7
#'   ) +
#'   draw_plot(p)
#'
#' # Place in lower right corner
#' ggdraw() +
#'   draw_image(
#'     logo_file, scale = .3, x = 1,
#'     hjust = 1, halign = 1, valign = 0
#'   ) +
#'   draw_plot(p)
#'
#' \dontrun{
#'
#' # Make grid with plot and image
#' cow_file <- system.file("extdata", "cow.jpg", package = "cowplot")
#' p2 <- ggdraw() + draw_image(cow_file, scale = 0.9)
#' plot_grid(
#'   p + theme(legend.position = c(1, 1), legend.justification = c(1, 1)),
#'   p2,
#'   labels = "AUTO"
#' )
#'
#' # Manipulate images and draw in plot coordinates
#' if (requireNamespace("magick", quietly = TRUE)){
#'   img <- magick::image_transparent(
#'     magick::image_read(logo_file),
#'     color = "white"
#'   )
#'   img2 <- magick::image_negate(img)
#'   ggplot(data.frame(x = 1:3, y = 1:3), aes(x, y)) +
#'     geom_point(size = 3) +
#'     geom_abline(slope = 1, intercept = 0, linetype = 2, color = "blue") +
#'     draw_image(img , x = 1, y = 1, scale = .9) +
#'     draw_image(img2, x = 2, y = 2, scale = .9)
#' }
#' }
#' @export
draw_image <- function(image, x = 0, y = 0, width = 1, height = 1, scale = 1, clip = "inherit",
                       interpolate = TRUE, hjust = 0, vjust = 0, halign = 0.5, valign = 0.5) {
  if (!requireNamespace("magick", quietly = TRUE)){
    warning("Package `magick` is required to draw images. Image not drawn.", call. = FALSE)
    draw_grob(grid::nullGrob(), x, y, width, height)
  }
  else {
    # if we're given an image, we just use it
    if (methods::is(image, "magick-image")) {
      image_data <- image
    }
    # otherwise we read it in with image_read()
    else {
      image_data <- magick::image_read(image)
    }
    g <- grid::rasterGrob(
      image_data,
      x = halign, y = valign, hjust = halign, vjust = valign,
      interpolate = interpolate
    )
    draw_grob(
      g, x = x, y = y, width = width, height = height,
      hjust = hjust, vjust = vjust, scale = scale,
      clip = clip, halign = halign, valign = valign
    )
  }
}

#' Draw a (sub)plot.
#'
#' Places a plot somewhere onto the drawing canvas. By default, coordinates run from
#' 0 to 1, and the point (0, 0) is in the lower left corner of the canvas.
#' @param plot The plot to place. Can be a ggplot2 plot, an arbitrary grob or gtable,
#'   or a recorded base-R plot, as in [as_grob()].
#' @param x The x location of the plot. (Left side if `hjust = 0`.)
#' @param y The y location of the plot. (Bottom side if `vjust = 0`.)
#' @param hjust,vjust Horizontal and vertical justification relative to x.
#' @param halign,valign Horizontal and vertical justification of the plot inside
#'   the box.
#' @param width Width of the plot.
#' @param height Height of the plot.
#' @param scale Scales the grob relative to the rectangle defined by `x`, `y`, `width`, `height`. A setting
#'   of `scale = 1` indicates no scaling.
#' @examples
#' library(ggplot2)
#'
#' # make a plot
#' p <- ggplot(data.frame(x = 1:3, y = 1:3), aes(x, y)) +
#'     geom_point()
#' # draw into the top-right corner of a larger plot area
#' ggdraw() + draw_plot(p, .6, .6, .4, .4)
#' @export
draw_plot <- function(plot, x = 0, y = 0, width = 1, height = 1, scale = 1,
                      hjust = 0, vjust = 0, halign = 0.5, valign = 0.5) {
  plot <- as_grob(plot) # convert to grob if necessary
  draw_grob(
    plot, x = x, y = y, width = width, height = height,
    scale = scale, hjust = hjust, vjust = vjust,
    halign = halign, valign = valign
  )
}

#' Draw a grob.
#'
#' Places an arbitrary grob somewhere onto the drawing canvas. By default, coordinates run from
#' 0 to 1, and the point (0, 0) is in the lower left corner of the canvas.
#' @param grob The grob to place.
#' @param x The x location of the grob. (Left side if `hjust = 0`.)
#' @param y The y location of the grob. (Bottom side if `vjust = 0`.)
#' @param hjust,vjust Horizontal and vertical justification relative to x.
#' @param halign,valign Horizontal and vertical justification of the grob inside
#'   the box.
#' @param width Width of the grob.
#' @param height Height of the grob.
#' @param scale Scales the grob relative to the rectangle defined by `x`, `y`, `width`, `height`. A setting
#'   of `scale = 1` indicates no scaling.
#' @param clip Set to "on" to clip the grob or "inherit" to not clip. Note that clipping doesn't always work as
#'   expected, due to limitations of the grid graphics system.
#' @examples
#' # A grid grob (here a blue circle)
#' g <- grid::circleGrob(gp = grid::gpar(fill = "blue"))
#' # place into the middle of the plotting area, at a scale of 50%
#' ggdraw() + draw_grob(g, scale = 0.5)
#' @export
draw_grob <- function(grob, x = 0, y = 0, width = 1, height = 1, scale = 1, clip = "inherit",
                      hjust = 0, vjust = 0, halign = 0.5, valign = 0.5) {
  layer(
    data = data.frame(x = NA),
    stat = StatIdentity,
    position = PositionIdentity,
    geom = GeomDrawGrob,
    inherit.aes = FALSE,
    params = list(
      grob = grob,
      xmin = x - hjust*width,
      xmax = x + (1-hjust)*width,
      ymin = y - vjust*height,
      ymax = y + (1-vjust)*height,
      scale = scale,
      clip = clip,
      halign = halign,
      valign = valign
    )
  )
}

#' @rdname draw_grob
#' @format NULL
#' @usage NULL
#' @importFrom ggplot2 ggproto GeomCustomAnn
#' @export
GeomDrawGrob <- ggproto("GeomDrawGrob", GeomCustomAnn,
  draw_panel = function(self, data, panel_params, coord, grob, xmin, xmax, ymin, ymax, scale = 1, clip = "inherit",
                        halign = 0.5, valign = 0.5) {
    if (!inherits(coord, "CoordCartesian")) {
      stop("draw_grob only works with Cartesian coordinates",
           call. = FALSE)
    }
    corners <- data.frame(x = c(xmin, xmax), y = c(ymin, ymax))
    data <- coord$transform(corners, panel_params)

    x_rng <- range(data$x, na.rm = TRUE)
    y_rng <- range(data$y, na.rm = TRUE)

    # set up inner and outer viewport for clipping. Unfortunately,
    # clipping doesn't work properly most of the time, due to
    # grid limitations
    vp_outer <- grid::viewport(x = min(x_rng) + halign*diff(x_rng),
                               y = min(y_rng) + valign*diff(y_rng),
                               width = diff(x_rng), height = diff(y_rng),
                               just = c(halign, valign),
                               clip = clip)

    vp_inner <- grid::viewport(x = halign, y = valign,
                               width = scale, height = scale,
                               just = c(halign, valign))

    id <- annotation_id()
    inner_grob <- grid::grobTree(grob, vp = vp_inner, name = paste(grob$name, id))
    grid::grobTree(inner_grob, vp = vp_outer, name = paste("GeomDrawGrob", id))
  }
)

annotation_id <- local({
  i <- 1
  function() {
    i <<- i + 1
    i
  }
})


#' Set up a drawing layer on top of a ggplot
#'
#' Set up a drawing layer on top of a ggplot.
#' @param plot The plot to use as a starting point. Can be a ggplot2 plot, an arbitrary
#'   grob or gtable, or a recorded base-R plot, as in [as_grob()].
#' @param xlim The x-axis limits for the drawing layer.
#' @param ylim The y-axis limits for the drawing layer.
#' @param clip Should drawing be clipped to the set limits? The default is no ("off").
#' @examples
#' library(ggplot2)
#'
#' p <- ggplot(mpg, aes(displ, cty)) +
#'   geom_point() +
#'   theme_minimal_grid()
#' ggdraw(p) + draw_label("Draft", colour = "#80404080", size = 120, angle = 45)
#' @export
ggdraw <- function(plot = NULL, xlim = c(0, 1), ylim = c(0, 1), clip = "off") {
  p <- ggplot() + # empty plot
    coord_cartesian(xlim = xlim, ylim = ylim, expand = FALSE, clip = clip) +
    scale_x_continuous(name = NULL) +
    scale_y_continuous(name = NULL) +
    theme_nothing() # with empty theme

  if (!is.null(plot)){
    p <- p + draw_plot(plot)
  }
  p # return ggplot drawing layer
}

