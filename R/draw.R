# *************************************************
#                     Drawing code
# *************************************************



#' Draw a line from connected points
#'
#' Provide a sequence of x values and accompanying y values to draw a line on a plot.
#'
#' This is a convenience function, providing a wrapper around ggplot2's \code{geom_path}.
#'
#' @param x Vector of x coordinates.
#' @param y Vector of y coordinates.
#' @param ... geom_path parameters such as \code{colour}, \code{alpha}, \code{size}, etc.
#' @seealso \code{\link{geom_path}}, \code{\link{ggdraw}}
#' @examples
#' ggdraw() + draw_line(x = c(0.2, 0.7, 0.7, 0.3),
#'                      y = c(0.1, 0.3, 0.9, 0.8),
#'                      color = "blue", size = 2)
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
#' For a full list of ... options, see  \code{\link{geom_label}}.
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
#' p = qplot(x = x1, y = y1, geom = c("smooth", "point"), data = anscombe)
#' threeStrings = c("Hello World!", "to be or not to be", "over and out")
#' p + draw_text(threeStrings, x = 8:10, y = 5:7, hjust = 0)
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
#' @param colour Text color
#' @param size Point size of text
#' @param angle Angle at which text is drawn
#' @param lineheight Line height of text
#' @param alpha The alpha value of the text
#' @seealso \code{\link{ggdraw}}
#' @examples
#' # setup plot and a label (regression description)
#' p <- ggplot(mtcars, aes(mpg, disp)) + geom_line(color = "blue") + background_grid(minor = 'none')
#' c <- cor.test(mtcars$mpg, mtcars$disp, method = 'sp')
#' label <- substitute(paste("Spearman ", rho, " = ", estimate, ", P = ", pvalue),
#'                     list(estimate = signif(c$estimate, 2), pvalue = signif(c$p.value, 2)))
#'
#' # Add label to plot, centered on {x,y} (in data coordinates)
#' p + draw_label(label, x = 20, y = 400)
#' # Add label to plot in data coordinates, flush-left at x, baseline at y.
#' p + draw_label(label, x = 20, y = 400, hjust = 0, vjust = 0)
#'
#' # Add label to plot. Data coordinates, drawing rightward
#' # from x, with ascenders of text touching y.
#' p + draw_label(label, x = 20, y = 400, hjust = 0, vjust = 1)
#'
#' # Add labels via ggdraw. Uses ggdraw coordinates.
#' # ggdraw coordinates default to xlim = c(0, 1), ylim = c(0, 1).
#' ggdraw(p) + draw_label("centered on 70% of x, 90% of y height", x = 0.7, y = 0.9)
#' labstr = "bottom left at {0%, 0%} of the SHEET, not the plot!"
#' p = ggdraw(p) + draw_label(labstr, x = 0, y = 0, hjust = 0, vjust = 0)
#' p = p + draw_label("top right at {1,1}", x = 1, y = 1, hjust = 1, vjust = 1)
#' p = p + draw_label("bottom left at {.4,.4}", x = 0.4, y = 0.4, hjust = 0, vjust = 0)
#' p + draw_label("centered on at {.5,.5}", x = 0.5, y = 0.5, hjust = 0.5, vjust = 0.5)
#' @export
draw_label <- function(label, x = 0.5, y = 0.5, hjust = 0.5, vjust = 0.5,
                    fontfamily = "", fontface = "plain", colour = "black", size = 14,
                    angle = 0, lineheight = 0.9, alpha = 1)
{
  text_par <- grid::gpar(col = colour,
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
#' @param colour (optional) Color of the plot labels. If not provided, is taken from the current theme.
#' @param ... Other arguments to be handed to \code{draw_text}.
#' @export
draw_plot_label <- function(label, x = 0, y = 1, hjust = -0.5, vjust = 1.5, size = 16, fontface = 'bold',
                            family = NULL, colour = NULL, ...){
  if (is.null(family)) {
    family <- theme_get()$text$family
  }

  if (is.null(colour)) {
    colour <- theme_get()$text$colour
  }

  draw_text(text = label, x = x, y = y, hjust = hjust, vjust = vjust, size = size, fontface = fontface,
            family = family, colour = colour, ...)
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
#'
#' p1 <- qplot(1:10, 1:10)
#' p2 <- qplot(1:10, (1:10)^2)
#' p3 <- qplot(1:10, (1:10)^3)
#' p4 <- qplot(1:10, (1:10)^4)
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
#' @param x The x location of the lower left corner of the image.
#' @param y The y location of the lower left corner of the image.
#' @param width Width of the image.
#' @param height Height of the image.
#' @param scale Scales the image relative to the rectangle defined by `x`, `y`, `width`, `height`. A setting
#'   of `scale = 1` indicates no scaling.
#' @param clip Set to "on" to clip the image relative to the box into which it is draw (useful for `scale > 1`).
#'   Note that clipping doesn't always work as expected, due to limitations of the grid graphics system.
#' @param interpolate A logical value indicating whether to linearly interpolate the image
#'  (the alternative is to use nearest-neighbour interpolation, which gives a more blocky result).
#' @examples
#' # Use image as plot background
#' p <- ggplot(iris, aes(x = Sepal.Length, fill = Species)) + geom_density(alpha = 0.7)
#' ggdraw() +
#'   draw_image("http://jeroen.github.io/images/tiger.svg") +
#'   draw_plot(p + theme(legend.box.background = element_rect(color = "white")))
#'
#' # Make grid with plot and image
#' p <- ggplot(iris, aes(x = Sepal.Length, fill = Species)) +
#'   geom_density(alpha = 0.7)
#' p2 <- ggdraw() + draw_image("http://jeroen.github.io/images/tiger.svg", scale = 0.9)
#' plot_grid(p, p2, labels = "AUTO")
#'
#' # Manipulate images and draw in plot coordinates
#' if (requireNamespace("magick", quietly = TRUE)){
#'   img <- magick::image_read("http://jeroen.github.io/images/tiger.svg")
#'   img <- magick::image_transparent(img, color = "white")
#'   img2 <- magick::image_negate(img)
#'   ggplot(data.frame(x = 1:3, y = 1:3), aes(x, y)) +
#'     geom_point(size = 3) +
#'     geom_abline(slope = 1, intercept = 0, linetype = 2, color = "blue") +
#'     draw_image(img , x = 1, y = 1, scale = .9) +
#'     draw_image(img2, x = 2, y = 2, scale = .9)
#' }
#' @export
draw_image <- function(image, x = 0, y = 0, width = 1, height = 1, scale = 1, clip = "inherit", interpolate = TRUE) {
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
    g <- grid::rasterGrob(image_data, interpolate = interpolate)
    draw_grob(g, x, y, width, height, scale, clip)
  }
}

#' Draw a (sub)plot.
#'
#' Places a plot somewhere onto the drawing canvas. By default, coordinates run from
#' 0 to 1, and the point (0, 0) is in the lower left corner of the canvas.
#' @param plot The plot to place. Can be a ggplot2 plot, an arbitrary grob or gtable,
#'   or a recorded base-R plot, as in [plot_to_gtable()].
#' @param x The x location of the lower left corner of the plot.
#' @param y The y location of the lower left corner of the plot.
#' @param width Width of the plot.
#' @param height Height of the plot.
#' @param scale Scales the grob relative to the rectangle defined by `x`, `y`, `width`, `height`. A setting
#'   of `scale = 1` indicates no scaling.
#' @examples
#' # make a plot
#' p <- qplot(1:10, 1:10)
#' # draw into the top-right corner of a larger plot area
#' ggdraw() + draw_plot(p, .6, .6, .4, .4)
#' @export
draw_plot <- function(plot, x = 0, y = 0, width = 1, height = 1, scale = 1) {
  if (!methods::is(plot, "grob"))
    plot <- plot_to_gtable(plot) # convert to gtable if necessary
  draw_grob(plot, x, y, width, height, scale)
}

#' Draw a grob.
#'
#' Places an arbitrary grob somewhere onto the drawing canvas. By default, coordinates run from
#' 0 to 1, and the point (0, 0) is in the lower left corner of the canvas.
#' @param grob The grob to place.
#' @param x The x location of the lower left corner of the grob.
#' @param y The y location of the lower left corner of the grob.
#' @param width Width of the grob.
#' @param height Height of the grob.
#' @param scale Scales the grob relative to the rectangle defined by `x`, `y`, `width`, `height`. A setting
#'   of `scale = 1` indicates no scaling.
#' @param clip Set to "on" to clip the grob or "inherit" to not clip. Note that clipping doesn't always work as
#'   expected, due to limitations of the grid graphics system.
#' @examples
#' # A grid grob (here a blue circle)
#' library(grid)
#' g <- circleGrob(gp = gpar(fill = "blue"))
#' # place into the middle of the plotting area, at a scale of 50%
#' ggdraw() + draw_grob(g, scale = 0.5)
#' @export
draw_grob <- function(grob, x = 0, y = 0, width = 1, height = 1, scale = 1, clip = "inherit") {
  layer(
    data = data.frame(x = NA),
    stat = StatIdentity,
    position = PositionIdentity,
    geom = GeomDrawGrob,
    inherit.aes = FALSE,
    params = list(
      grob = grob,
      xmin = x,
      xmax = x + width,
      ymin = y,
      ymax = y + height,
      scale = scale,
      clip = clip
    )
  )
}

#' @rdname draw_grob
#' @format NULL
#' @usage NULL
#' @importFrom ggplot2 ggproto GeomCustomAnn
#' @export
GeomDrawGrob <- ggproto("GeomDrawGrob", GeomCustomAnn,
  draw_panel = function(self, data, panel_params, coord, grob, xmin, xmax, ymin, ymax, scale = 1, clip = "inherit") {
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
    vp_outer <- grid::viewport(x = mean(x_rng), y = mean(y_rng),
                               width = diff(x_rng), height = diff(y_rng),
                               just = c("center", "center"),
                               clip = clip)

    vp_inner <- grid::viewport(width = scale, height = scale,
                               just = c("center", "center"))

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
#'   grob or gtable, or a recorded base-R plot, as in [plot_to_gtable()].
#' @param xlim The x-axis limits for the drawing layer.
#' @param ylim The y-axis limits for the drawing layer.
#' @examples
#' p <- ggplot(mpg, aes(displ, cty)) + geom_point()
#' ggdraw(p) + draw_label("Draft", colour = "grey", size = 120, angle = 45)
#' @export
ggdraw <- function(plot = NULL, xlim = c(0, 1), ylim = c(0, 1)) {
  d <- data.frame(x = 0:1, y = 0:1) # dummy data
  p <- ggplot(d, aes_string(x = "x", y = "y")) + # empty plot
    scale_x_continuous(limits = xlim, expand = c(0, 0)) +
    scale_y_continuous(limits = ylim, expand = c(0, 0)) +
    theme_nothing() + # with empty theme
    labs(x = NULL, y = NULL) # and absolutely no axes

  if (!is.null(plot)){
    p <- p + draw_plot(plot)
  }
  p # return ggplot drawing layer
}

