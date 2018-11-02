library(shiny)
library(dplyr)


# Define UI for miles per gallon application
shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("Healthcare"),
  
  # Sidebar with controls to select the variable to plot against mpg
  # and to specify whether outliers should be included
  sidebarPanel(
    selectInput("variable", "Factor: ",
                list("Uninsured %" = "uninsured", 
                     "Primary Care Physicians" = "primary_care_physicians", 
                     "Mental Health Providers" = "mental_health_providers",
                     "Dentists" = "dentists"
                     ))
  ),
  
  mainPanel(
    h3(textOutput("caption")),
    plotOutput("yearPlot"))
))