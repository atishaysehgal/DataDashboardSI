library(shiny)
library(ggplot2) # load ggplot

insurance$uninsured <- as.numeric(insurance$uninsured)
insurance$primary_care_physicians <- as.numeric(insurance$primary_care_physicians)
insurance$mental_health_providers <- as.numeric(insurance$mental_health_providers)
insurance$dentists <- as.numeric(insurance$dentists)
insurance$year <- as.numeric(insurance$year)


# Define server logic required to plot various variables against mpg
shinyServer(function(input, output) {
  
  # Compute the forumla text in a reactive function since it is 
  # shared by the output$caption and output$mpgPlot functions
  formulaText <- reactive(paste(input$variable, "~ Year"))
  
  # Return the formula text for printing as a caption
  output$caption <- renderText(formulaText())
  
  # Generate a plot of the requested variable against mpg and only 
  # include outliers if requested
  # ggplot version
  
  output$yearPlot <- renderPlot({
    
   #yearData <- data.frame(date = insurance$date, County = insurance$County, var = insurance[[input$variable]])
    
    p <- ggplot(insurance, aes(year, uninsured, color = County)) + geom_point(stat = "Identity") + geom_line()
    print(p)
  })
  
})