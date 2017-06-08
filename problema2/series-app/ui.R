
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
        selectInput("select", label = h3("Selecione a box"), 
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
        tabsetPanel(
          tabPanel("Plot", plotlyOutput("distPlot")), 
          tabPanel("Summary", plotlyOutput("distPlot2"))
        )
      )
    )
  )
)
