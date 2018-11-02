library(shiny)
library(dplyr)


ui <- fluidPage(
  sidebarLayout(
    sidebarPanel(
      selectInput(inputId = "Demog",label = "Factor:",choices = c("HH Income" = "Income",
                                                                  "Age Group" = "Age",
                                                                  "US Region" = "Region") , selected = "Age"),
      selectInput(inputId = "Car",label = "VW Model:",choices = c("BEETLE" = "BEETLE",
                                                                  "CC" = "CC",
                                                                  "EOS" = "EOS",
                                                                  "GOLF" = "GOLF",
                                                                  "GTI" ="GOLF SPORTSWAGEN GTI",
                                                                  "JETTA" = "JETTA",
                                                                  "PASSAT" = "PASSAT",
                                                                  "TIGUAN" = "TIGUAN",
                                                                  "TOUAREG" = "TOUAREG") , selected = "BEETLE"),
      radioButtons(inputId = "Metric",label ="Measurement Type",choices = 
                     c("Conquest Volume Index" = "TotCmpConqVol_IDX","C/D Ratio" = "TotCmpCDRatio_IDX"), selected = "TotCmpConqVol_IDX" )                
      
    )
  ),
  mainPanel(
    tags$h1("The Bar Charts"),
    tags$h2("The metrics"),
    
    
    plotOutput("P1")
    
  )
  
)