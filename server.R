library(shiny)
library(ggplot2) # load ggplot


# Define server logic required to plot various variables against mpg
shinyServer(function(input, output) {
  
  output$yearPlot <- renderPlot({
    df <- data.frame(year=as.factor(insurance$year), County = as.factor(insurance$County), variable = insurance[[input$variable]])
    ggplot(df, aes_string(df$year, y=df$variable, fill = df$County)) + geom_bar(stat = "Identity") + facet_wrap(~df$County)
  })
  
})