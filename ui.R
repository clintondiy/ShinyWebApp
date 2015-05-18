
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(
  
  # Application title
  titlePanel("Old Faithful Geyser Data"),

  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      selectInput("graph",
                  "Type of flower",
                  choices = c("histogram","scatter")),
      selectInput("flower",
                  "Type of flower",
                  choices = as.character(unique(iris$Species)))
   ),

    # Show a plot of the generated distribution
    mainPanel(    
      plotOutput("distPlot")
    )
  )
  
))
