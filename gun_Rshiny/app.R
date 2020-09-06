#====================
# Han Wang
# Last update: 2019.12.11
#====================
library(shiny)
library(dplyr)
library(ggplot2)
library(plotly)
library(leaflet)

# import data
gun_ca = read.csv("guns.csv")

# UI
UI = fluidPage(
  title = "Gun voilence in California from 2013 to 2018",
  titlePanel("Gun voilence in California from 2013 to 2018"),
  tabsetPanel(
    tabPanel("Map", leafletOutput("map")),
    tabPanel("Bar Chart by Cities", plotlyOutput("graph1"), plotlyOutput("graph2")),
    tabPanel("Bar Chart by Time", plotlyOutput("graph3"), plotlyOutput("graph4"), plotlyOutput("graph5")),
    tabPanel("Data Table", dataTableOutput("table"))
  ),
  hr(),
  fluidRow(
    column(4,
           dateRangeInput(inputId = "start",
                          label = "Select Time Period",
                          start = min(gun_ca$date),
                          end = max(gun_ca$date),
                          min = min(gun_ca$date),
                          max = max(gun_ca$date))
    )
  ),
  hr())

# import plots
source("death_rate.r")
source("month.r")
source("weekday.r")
source("year.r")

# Server
Server = function(input, output) {
  
  gun_df = reactive({gun_ca %>% 
    filter(date >= input$start[1] & date <= input$start[2]) %>%
    group_by(city_or_county) %>% summarise(incidents = n()) %>% ungroup()
  })
  
  gun_df2 = reactive({gun_ca %>% 
      filter(date >= input$start[1] & date <= input$start[2])
  })
  
  output$table = renderDataTable({gun_df2()})
  
  output$graph1 = renderPlotly({
    ggplotly(gun_df() %>% top_n(15, wt=incidents) %>%
            ggplot(aes(x=reorder(city_or_county, desc(incidents)), y=incidents, text=city_or_county)) +
            geom_bar(stat='identity', fill='#69b3a2') +
            labs(x='', y='Number of incidents', title="Total number of incidents for top 15 cities"),
            tooltip=c("text"))
  })
  output$graph2 = renderPlotly({p1})
  output$graph3 = renderPlotly({p4})
  output$graph4 = renderPlotly({p2})
  output$graph5 = renderPlotly({p3})
  
  output$map = renderLeaflet({gun_df2() %>%
      leaflet() %>%
      addProviderTiles("CartoDB.Positron") %>%
      setView(lat = 36.778259, lng = -119.417931, zoom = 6) %>%
      addCircleMarkers(~longitude, ~latitude, color = "red", radius=~sqrt(total), label = 
                         paste0("<strong>City: </strong>", gun_df2()$city_or_county, 
                                "</br><strong>Injured & Death: </strong>", gun_df2()$total)
                      %>% lapply(htmltools::HTML))
  })
}

# Run
shinyApp(ui = UI, server = Server)
