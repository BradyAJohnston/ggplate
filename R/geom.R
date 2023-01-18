# library(ggplot2)
#
#
# ggplot(data_continuous_12, aes(
#   wellr::well_to_col_num(well),
#   wellr::well_to_row_num(well),
#   fill = Value
# )) +
#   geom_point(size = 10) +
#   scale_fill_viridis_c()
#
# .lerp <- function(x, y, t = 0.5) {}
#
# .point_to_poly_square <- function(x, y, value = 0, group = 1, width = 0.4) {
#   points <- data.frame(
#     x = c(x - width, x + width, x + width, x - width, x - width),
#     y = c(y + width, y + width, y - width, y - width, y - width),
#     group = group,
#     value = value
#   )
#   points
# }
#
# .points_to_poly_squares <- function(x, y, value, group, width = 0.4) {
#
#   points <- lapply(seq_along(x), \(i) {
#     .point_to_poly_square(x[i], y[i], group = group[i], value = value[i], width = width)
#   })
#
#   points <- do.call(rbind, points)
#   points
# }
#
#
# .point_to_poly_circle <- function(x, y, value = 0, group = 1, radius = 0.4) {
#   x <- sin(seq(0, pi * 2, length.out = 100)) * radius + x
#   y <- cos(seq(0, pi * 2, length.out = 100)) * radius + y
#   points <- data.frame(
#     x = x,
#     y = y,
#     group = group,
#     value = value
#   )
#   points
# }
#
# .points_to_poly_circles(1:2, 2:3,c(3.5, 4.5), group = 1:2)
#
# .points_to_poly_circles <- function(x, y, value, group, radius = 0.4) {
#   points <- lapply(seq_along(x), \(i) {
#     .point_to_poly_circle(
#       x = x[i],
#       y =y[i],
#       group = group[i],
#       value = value[i],
#       radius = radius)
#   })
#
#   points <- do.call(rbind, points)
#   points
# }
#
# dat <- .points_to_poly_squares(
#   wellr::well_to_col_num(data_continuous_12$well),
#   wellr::well_to_row_num(data_continuous_12$well),
#   group = seq_along(data_continuous_12$Value),
#   value = data_continuous_12$Value
# )
# dat
#
#
#
# dat <- .points_to_poly_circles(
#   wellr::well_to_col_num(data_continuous_12$well),
#   wellr::well_to_row_num(data_continuous_12$well),
#   group = seq_along(data_continuous_12$Value),
#   value = data_continuous_12$value
# )
#
# ggplot(data_continuous_12, aes(
#   wellr::well_to_col_num(well),
#   wellr::well_to_row_num(well),
#   group = seq_along(Value),
#   fill = Value
# )) +
#   # geom_point(size = 10) +
#   geom_polygon(dat, mapping = aes(x = x, y = y, group = group, fill = value), colour = "black") +
#   scale_fill_viridis_c() +
#   coord_equal()
