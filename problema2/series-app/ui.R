
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
library(plotly)

shinyUI(
  fluidPage(
    # Application title
    titlePanel("Séries App"),
    
    # Sidebar with a slider input for number of bins
    sidebarLayout(
      sidebarPanel(
        selectInput("select", label = h3("Selecione uma série"),
                  choices = list("Sense8" = "Sense8",
                                 "13 Reasons Why" = "13 Reasons Why",
                                 "Black Mirror" = "Black Mirror",
                                 "How to Get Away with Murder" = "How to Get Away with Murder",
                                 "Mr Robot" = "Mr Robot",
                                 "Sherlock" = "Sherlock",
                                 "Breaking Bad"="Breaking Bad",
                                 "Dexter"="Dexter",
                                 "House of Cards"="House of Cards",
                                 "Stranger Things"="Stranger Things"),
                  selected = 1)),

    # Show a plot of the generated distribution
      mainPanel(
        h1("Como se comporta a avaliação de uma série com o passar dos episódios? E das temporadas?"),
        p("Neste post vamos investigar como se comportou a avaliação de uma nova temporada após o término de uma temporada anterior. Será que a avaliação dos episódios de uma nova temporada cresce ou decresce quando a mesma é comparada a avaliação da temporada anterior?"),
        p("Para responder essa pergunta vamos olhar para o gráfico que representa a curva de avaliação de todos os episódios da série."),
        fluidRow(
          column(12,plotlyOutput("distPlot"))
        ),
        p("Precisamente a avaliação dos episódios cresceu ou decresceu ao longo de cada temporada? Veja como é classificada cada temporada ao longo da série."),
        fluidRow(
          column(12,plotlyOutput("distPlot2"))
        ))
      )
    )
)
