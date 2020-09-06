trace1 <- list(
  name = "n_killed", 
  text = "", 
  type = "bar", 
  xsrc = "a906842455:4:2439ce", 
  x = c("Apr", "Aug", "Dec", "Feb", "Jan", "Jul", "Jun", "Mar", "May", "Nov", "Oct", "Sep"), 
  ysrc = "a906842455:4:55a4b8", 
  y = c(423, 476, 443, 376, 438, 467, 444, 460, 461, 435, 418, 417), 
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
  xsrc = "a906842455:4:2439ce", 
  x = c("Apr", "Aug", "Dec", "Feb", "Jan", "Jul", "Jun", "Mar", "May", "Nov", "Oct", "Sep"), 
  ysrc = "a906842455:4:f3e277", 
  y = c(583, 644, 552, 522, 582, 730, 572, 624, 557, 637, 634, 575), 
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
  xsrc = "a906842455:4:2439ce", 
  x = c("Apr", "Aug", "Dec", "Feb", "Jan", "Jul", "Jun", "Mar", "May", "Nov", "Oct", "Sep"), 
  ysrc = "a906842455:4:3473f6", 
  y = c(1006, 1120, 995, 898, 1020, 1197, 1016, 1084, 1018, 1072, 1052, 992), 
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
    text = "Total number of incidents,number of killed, number of injured for each month in California"
  ), 
  xaxis = list(
    type = "category", 
    range = c(-0.5, 11.5), 
    title = list(
      font = list(color = "#666666"), 
      text = "month"
    ), 
    showgrid = TRUE, 
    tickfont = list(color = "#666666"), 
    autorange = TRUE, 
    gridcolor = "#F6F6F6", 
    zerolinecolor = "#F6F6F6"
  ), 
  yaxis = list(
    type = "linear", 
    range = c(0, 1260), 
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
p2 <- plot_ly()
p2 <- add_trace(p2, name=trace1$name, text=trace1$text, type=trace1$type, xsrc=trace1$xsrc, x=trace1$x, ysrc=trace1$ysrc, y=trace1$y, marker=trace1$marker, orientation=trace1$orientation)
p2 <- add_trace(p2, name=trace2$name, text=trace2$text, type=trace2$type, xsrc=trace2$xsrc, x=trace2$x, ysrc=trace2$ysrc, y=trace2$y, marker=trace2$marker, orientation=trace2$orientation)
p2 <- add_trace(p2, name=trace3$name, text=trace3$text, type=trace3$type, xsrc=trace3$xsrc, x=trace3$x, ysrc=trace3$ysrc, y=trace3$y, marker=trace3$marker, orientation=trace3$orientation)
p2 <- layout(p2, title=layout$title, xaxis=layout$xaxis, yaxis=layout$yaxis, legend=layout$legend, autosize=layout$autosize, plot_bgcolor=layout$plot_bgcolor, paper_bgcolor=layout$paper_bgcolor)
