#Still not reactive yet.

shinyServer(function(input,output){
        output$plot<-renderPlot({
          inFile<-input$file
          hist(as.numeric(read.csv(inFile$datapath,head=FALSE)[,2]),main="Tadaa")
        })
             
        #part that readers table
  output$contents <- renderTable({
    # input$file1 will be NULL initially. After the user selects
    # and uploads a file, it will be a data frame with 'name',
    # 'size', 'type', and 'datapath' columns. The 'datapath'
    # column will contain the local filenames where the data can
    # be found.
    
    inFile <- input$file
    
    if (is.null(inFile))
      return(NULL)
    
    read.csv(inFile$datapath,head=FALSE)
  })
          
        output$text1<-renderText({
          "Hello, this is where you showcase the part where you read the tickers from a list."
        })
        output$text2<-renderText({
          paste("The numbers are",input$file[3,2])
        })
        
})
      
    

  
  
