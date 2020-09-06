trace1 <- list(
  mode = "lines+markers", 
  name = "Total hurts", 
  text = "", 
  type = "scatter", 
  xsrc = "a906842455:2:a7a443", 
  x = c(2013, 2014, 2015, 2016, 2017), 
  ysrc = "a906842455:2:4d0e9b", 
  y = c(185, 2927, 2821, 3161, 3376)
)
trace2 <- list(
  mode = "lines+markers", 
  name = "Number of killed", 
  text = "", 
  type = "scatter", 
  xsrc = "a906842455:2:a7a443", 
  x = c(2013, 2014, 2015, 2016, 2017), 
  ysrc = "a906842455:2:7c9128", 
  y = c(46, 1320, 1204, 1265, 1423)
)
trace3 <- list(
  mode = "lines+markers", 
  name = "Number of injured", 
  text = "", 
  type = "scatter", 
  xsrc = "a906842455:2:a7a443", 
  x = c(2013, 2014, 2015, 2016, 2017), 
  ysrc = "a906842455:2:28a0a7", 
  y = c(139, 1607, 1617, 1896, 1953)
)
data <- list(trace1, trace2, trace3)
layout <- list(
  title = list(text = "Total number of incidents,number of killed, number of injured from 2013 to 2017 in California"), 
  xaxis = list(
    type = "linear", 
    range = c(2012.7489626556016, 2017.2510373443984), 
    title = list(text = "Year"), 
    ticklen = 5, 
    zeroline = FALSE, 
    autorange = TRUE
  ), 
  yaxis = list(
    type = "linear", 
    range = c(-211.83464566929138, 3633.8346456692916), 
    title = list(text = "Count"), 
    ticklen = 5, 
    zeroline = FALSE, 
    autorange = TRUE
  ), 
  autosize = TRUE
)
p4 <- plot_ly()
p4 <- add_trace(p4, mode=trace1$mode, name=trace1$name, text=trace1$text, type=trace1$type, xsrc=trace1$xsrc, x=trace1$x, ysrc=trace1$ysrc, y=trace1$y)
p4 <- add_trace(p4, mode=trace2$mode, name=trace2$name, text=trace2$text, type=trace2$type, xsrc=trace2$xsrc, x=trace2$x, ysrc=trace2$ysrc, y=trace2$y)
p4 <- add_trace(p4, mode=trace3$mode, name=trace3$name, text=trace3$text, type=trace3$type, xsrc=trace3$xsrc, x=trace3$x, ysrc=trace3$ysrc, y=trace3$y)
p4 <- layout(p4, title=layout$title, xaxis=layout$xaxis, yaxis=layout$yaxis, autosize=layout$autosize)
