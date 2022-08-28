library (shiny)


shinyServer (function (input , output){
  ################### Input of the data from a csv ##########################
  output$contents <- reactive({
    file <- input$file1
    ext <- tools::file_ext(file$datapath)
    
    req(file)
    validate(need(ext == "csv", "Please upload a csv file"))
    
    read.csv(file$datapath, header = input$header)
  })
  
  ############## info of csv ##########
  
  output$head <- renderTable({
    head(contents(), n = input$n)
  })
  output$tail <- renderTable({
    tail(contents(), n =input$n)
  })
  output$nrow <- renderPrint({
    cat("Nombre des lignes/observation de la dataset :", nrow(contents()))
  })
  
  output$ncol <- renderPrint({
    cat("\n Nombre de variables dans la dataset :", ncol(contents()))
  })
  ############### Summary of dataset ###########
  output$Summary <- renderPrint({
    summary(contents())
  })
  
  
  ##############  Plots ############
  
  output$Plot <- renderPlot({
    plot(MyDat$V2, MyDat$V3)
  })
  
}


)