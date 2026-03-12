library(shiny)

ui <- fluidPage(
  h2("FMT Teste Deploy"),
  verbatimTextOutput("info")
)

server <- function(input, output, session){

  output$info <- renderPrint({
    list(
      time = Sys.time()
    )
  })

}

shinyApp(ui, server)
