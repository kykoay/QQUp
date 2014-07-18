#Still not reactive yet.

shinyServer(function(input,output){
        
             
        output$plot<-renderPlot({
          
          hist(as.numeric(unlist((read.table(input$file[,1])))),main="Tadaa",xlab="stock price")
        })
        #Part that somewhat works
        #output$plot<-renderPlot({hist(unlist(input$file[,2]))})  
        output$text1<-renderText({
          "Hello, this is where you showcase the part where you read the tickers from a list."
        })
        
})
      
    

  
  
