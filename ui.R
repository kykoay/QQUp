shinyUI(fluidPage(
  titlePanel("Portfolio Factor Exposure"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("To construct your portfolio, you will first need to upload a textfile with the names of the constituent stocks/ETFs on one column and the corresponding weight of the stock/ETF in the portfolio in decimal form on the other column."),
        #Date input part to be added in later.
      h6("If you need help finding tickers,see"),a("Investorhub",href="http://www.myinvestorshub.com/yahoo_stock_list.php"),
      helpText("Reminder: you will need to type the corresponding weights of the given ticker on your portfolio.Please enter these weights in decimal form, as in 50% as 0.5"),
      fileInput("file",label=h3("file to be uploaded"))
      ),    
    #For now we are just testing to see if each element in a list can be accessed.
    mainPanel(
      plotOutput("plot"),
      textOutput("text1")
      )
  )
  ))