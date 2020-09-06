trace1 <- list(
  name = "death_rate", 
  text = "", 
  type = "bar", 
  xsrc = "a906842455:0:639d57", 
  x = c("Antioch", "Bakersfield", "Eureka", "Fresno", "Long Beach", "Los Angeles", "Merced", "Modesto", "Oakland", "Oxnard", "Richmond", "Sacramento", "Salinas", "San Bernardino", "San Diego", "San Francisco", "San Jose", "Santa Ana", "Stockton"), 
  ysrc = "a906842455:0:ef4746", 
  y = c(0.35833333333333334, 0.3325635103926097, 0.3684210526315789, 0.2353823088455772, 0.3685897435897436, 0.5368421052631579, 0.39705882352941174, 0.362962962962963, 0.2921455938697318, 0.24390243902439024, 0.4121212121212121, 0.358974358974359, 0.4112903225806452, 0.4506578947368421, 0.41353383458646614, 0.3472584856396867, 0.5025380710659898, 0.2712765957446808, 0.39509536784741145), 
  marker = list(
    line = list(
      color = "rgba(226, 74, 51, 1.0)", 
      width = 1
    ), 
    color = "rgba(226, 74, 51, 0.6)"
  ), 
  orientation = "v"
)
data <- list(trace1)
layout <- list(
  title = list(
    font = list(color = "#151516"), 
    text = "Death rate for top 20 incidents city in California"
  ), 
  xaxis = list(
    type = "category", 
    range = c(-0.5, 18.5), 
    title = list(
      font = list(color = "#666666"), 
      text = "city"
    ), 
    showgrid = TRUE, 
    tickfont = list(color = "#666666"), 
    autorange = TRUE, 
    gridcolor = "#F6F6F6", 
    zerolinecolor = "#F6F6F6"
  ), 
  yaxis = list(
    type = "linear", 
    range = c(0, 0.5650969529085873), 
    title = list(
      font = list(color = "#666666"), 
      text = "death rate"
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
p1 <- plot_ly()
p1 <- add_trace(p1, name=trace1$name, text=trace1$text, type=trace1$type, xsrc=trace1$xsrc, x=trace1$x, ysrc=trace1$ysrc, y=trace1$y, marker=trace1$marker, orientation=trace1$orientation)
p1 <- layout(p1, title=layout$title, xaxis=layout$xaxis, yaxis=layout$yaxis, legend=layout$legend, autosize=layout$autosize, plot_bgcolor=layout$plot_bgcolor, paper_bgcolor=layout$paper_bgcolor)
