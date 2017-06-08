
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
library(dplyr)
library(tidyr)
library(ggplot2)
library(readr)
library(plotly)

dados = read_csv(file = "dados/series_from_imdb.csv")
shinyServer(function(input, output) {

  output$distPlot <- renderPlotly({
    dados = dados %>% filter(series_name == input$select)
    dados %>% 
      ggplot(aes(x = series_ep, y = UserRating, color = series_name)) +
      geom_line() +
      geom_point() +
      scale_y_continuous() +
      scale_x_continuous() +
      xlab("Episódio") + 
      ylab("Classificação do usuário") +
      ggtitle("Distribuição da classificação do usuário ao longo dos episódios") +
      theme(plot.title = element_text(hjust = 0.5), legend.position="none")
  })
  
  output$distPlot2 <- renderPlotly({
    dados = dados %>% filter(series_name == input$select)
    dados %>% 
      ggplot(aes(x = as.character(season), y = UserRating)) + 
      geom_boxplot(outlier.color = NA) +   
      geom_jitter(width = .1, 
                  alpha = .5, color = "red")+
      labs(title = "Box-plot da classificação do usuário por temporada da série", x="Temporada", y="Classificação do usuário") +
      theme(plot.title = element_text(hjust = 0.5))
    })
})
