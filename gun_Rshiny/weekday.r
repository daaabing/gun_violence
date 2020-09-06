trace1 <- list(
  name = "n_killed", 
  text = "", 
  type = "bar", 
  xsrc = "a906842455:6:3cfe07", 
  x = c("Friday", "Monday", "Saturday", "Sunday", "Thursday", "Tueday", "Wednesday"), 
  ysrc = "a906842455:6:9476b0", 
  y = c(756, 685, 875, 923, 635, 688, 696), 
  marker = list(
    line = list(
      color = "rgba(226, 74, 51, 1.0)", 
      width = 1
    ), 
    color = "rgba(226, 74, 51, 0.6)"
  ), 
  orientation = "v"
)
trace2 <- list(
  name = "n_injured", 
  text = "", 
  type = "bar", 
  xsrc = "a906842455:6:3cfe07", 
  x = c("Friday", "Monday", "Saturday", "Sunday", "Thursday", "Tueday", "Wednesday"), 
  ysrc = "a906842455:6:cea815", 
  y = c(966, 961, 1278, 1305, 888, 876, 938), 
  marker = list(
    line = list(
      color = "rgba(62, 111, 176, 1.0)", 
      width = 1
    ), 
    color = "rgba(62, 111, 176, 0.6)"
  ), 
  orientation = "v"
)
trace3 <- list(
  name = "total", 
  text = "", 
  type = "bar", 
  xsrc = "a906842455:6:3cfe07", 
  x = c("Friday", "Monday", "Saturday", "Sunday", "Thursday", "Tueday", "Wednesday"), 
  ysrc = "a906842455:6:c0d956", 
  y = c(1722, 1646, 2153, 2228, 1523, 1564, 1634), 
  marker = list(
    line = list(
      color = "rgba(132, 118, 202, 1.0)", 
      width = 1
    ), 
    color = "rgba(132, 118, 202, 0.6)"
  ), 
  orientation = "v"
)
data <- list(trace1, trace2, trace3)
layout <- list(
  title = list(
    font = list(color = "#151516"), 
    text = "Total number of incidents,injured,killed for each weekday in California"
  ), 
  xaxis = list(
    type = "category", 
    range = c(-0.5, 6.5), 
    title = list(
      font = list(color = "#666666"), 
      text = "weekday"
    ), 
    showgrid = TRUE, 
    tickfont = list(color = "#666666"), 
    autorange = TRUE, 
    gridcolor = "#F6F6F6", 
    zerolinecolor = "#F6F6F6"
  ), 
  yaxis = list(
    type = "linear", 
    range = c(0, 2345.2631578947367), 
    title = list(
      font = list(color = "#666666"), 
      text = "Count"
    ), 
    showgrid = TRUE, 
    tickfont = list(color = "#666666"), 
    autorange = TRUE, 
    gridcolor = "#F6F6F6", 
    zerolinecolor = "#F6F6F6"
  ), 
  legend = list(
    font = list(color = "#666666"), 
    bgcolor = "#FFFFFF"
  ), 
  autosize = TRUE, 
  plot_bgcolor = "#E5E5E5", 
  paper_bgcolor = "#FFFFFF"
)
p3 <- plot_ly()
p3 <- add_trace(p3, name=trace1$name, text=trace1$text, type=trace1$type, xsrc=trace1$xsrc, x=trace1$x, ysrc=trace1$ysrc, y=trace1$y, marker=trace1$marker, orientation=trace1$orientation)
p3 <- add_trace(p3, name=trace2$name, text=trace2$text, type=trace2$type, xsrc=trace2$xsrc, x=trace2$x, ysrc=trace2$ysrc, y=trace2$y, marker=trace2$marker, orientation=trace2$orientation)
p3 <- add_trace(p3, name=trace3$name, text=trace3$text, type=trace3$type, xsrc=trace3$xsrc, x=trace3$x, ysrc=trace3$ysrc, y=trace3$y, marker=trace3$marker, orientation=trace3$orientation)
p3 <- layout(p3, title=layout$title, xaxis=layout$xaxis, yaxis=layout$yaxis, legend=layout$legend, autosize=layout$autosize, plot_bgcolor=layout$plot_bgcolor, paper_bgcolor=layout$paper_bgcolor)
