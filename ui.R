library ( shiny )
library(ggplot2)
library("readxl")
library("easypackages")
packages("tidyverse",
         "tidyquant",
         "readxl",
         "shiny",
         "shinydashboard",
         "DT",
         "inspectdf",
         "DataExplorer")




shinyUI ( fluidPage (
  navbarPage(
    strong("Visual Data Exploration WebApp"),
    tabPanel(title = "Data",
             fluidPage(sidebarLayout(
               sidebarPanel(
                 fileInput("file1", "Choose CSV File", accept = ".csv"),
                 checkboxInput("header", "Header", TRUE),
                 numericInput('n', "Nombre de lignes", 5, min = 1)
               ),
               mainPanel( 
                 tabsetPanel(
                   tabPanel("Head & Tail of dataset",
                            fluidRow(box(tableOutput("head"), tableOutput("tail"))), 
                            fluidRow(box(h1(strong("Info de la dataset"), style = "font-size:20px;"),textOutput("nrow"), textOutput("ncol")))),
                   tabPanel("Summary", 
                            fluidRow(box(h1(strong("Summary de toute la data"), style = "font-size:20px;"),width =12,verbatimTextOutput("Summary"))),
                            fluidRow(box(h1(strong("Table de frequence "), style = "font-size:20px;"),width =12,verbatimTextOutput("Summary")))
                   )
                 )
               )
             )
             )
             ),
    
    navbarMenu("Plot",
               tabPanel("Visualisation univarié",
                        fluidRow(
                          # A column is defined necessarily
                          # with its argument "width"
                          column(width = 3, "left column"),
                          column(width = 6, "right column",
                                 plotOutput("Plot", width = "300px", height = "250px")
                          ),
                        )),
               tabPanel("Visualisation Bivarié",
                        fluidRow(
                          # A column is defined necessarily
                          # with its argument "width"
                          column(width = 4, "left column"),
                          column(width = 4, "right column"),
                        ))
               ,
               tabPanel("Visualisation multivarié"))
  )
)
)





