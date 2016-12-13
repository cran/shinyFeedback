## ---- eval=FALSE---------------------------------------------------------
#  useShinyFeedback()

## ---- eval=FALSE---------------------------------------------------------
#  library(shiny)
#  library(shinyFeedback)
#  
#  ui <- fluidPage(
#    useShinyFeedback(), # include shinyFeedback
#  
#    numericInput(
#      "warningInput",
#      "Warn if Negative",
#      value = -5
#    )
#  )
#  
#  server <- function(input, output) {
#    observeEvent(input$warningInput, {
#      feedbackWarning(
#        inputId = "warningInput",
#        condition = input$warningInput < 0
#      )
#    })
#  }
#  
#  shinyApp(ui, server)

