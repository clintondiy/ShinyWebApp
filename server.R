
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
library(ggplot2)
library(dplyr)

shinyServer(function(input, output) {

  output$distPlot <- renderPlot({

    if( input$graph == "histogram" ){
      
      subset(iris, Species %in% input$flower) %>%
        ggplot(aes(Sepal.Length)) + geom_histogram(stat="bin") 
      
    }else{
      
      subset(iris, Species %in% input$flower) %>%
        ggplot(aes(Sepal.Length,Sepal.Width)) + geom_point() 
    }
    
    
  })



})
