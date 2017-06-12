
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
        p("Neste post vamos investigar como se comporta a avaliação de uma nova temporada após o término de uma temporada anterior. Será que a avaliação dos episódios de uma nova temporada cresce ou decresce quando a mesma é comparada a avaliação da temporada anterior?"),
        p("Para responder essa pergunta vamos primeiramente olhar para o gráfico abaixo, veja como se comporta a curva de avaliação de cada episódio da série."),
        fluidRow(
          column(12,plotlyOutput("distPlot"))
        ),
        p("Precisamente a avaliação dos episódios cresce ou decresce ao longo de cada temporada? Para responder esta pergunta basta ver como é classificada cada temporada ao longo da série."),
        fluidRow(
          column(12,plotlyOutput("distPlot2"))
        ),
        p("O gráfico acima facilita o processo de comparação de cada temporada por meio da mediana de classificação do usuário calculada em cada temporada.")
        )
      )
    )
)
