## ---- eval=FALSE--------------------------------------------------------------
#  library(shiny)
#  library(shinyFeedback)
#  
#  ui <- fluidPage(
#    useShinyFeedback(), # include shinyFeedback
#  
#    textInput(
#      "myInput",
#      "Warn if >3 characters",
#      value = ""
#    )
#  )
#  
#  server <- function(input, output, session) {
#    observeEvent(input$myInput, {
#  
#      if (nchar(input$myInput) > 3) {
#        showFeedbackWarning(
#          inputId = "myInput",
#          text = "too many chars"
#        )
#      } else {
#        hideFeedback("myInput")
#      }
#  
#    })
#  }
#  
#  shinyApp(ui, server)

## ---- eval=FALSE--------------------------------------------------------------
#  library(shiny)
#  library(shinyFeedback)
#  
#  ui <- fluidPage(
#    useShinyFeedback(), # include shinyFeedback
#  
#    selectInput(
#      "dataset",
#      "Dataset",
#      choices = c(
#        "airquality",
#        "Unknown dataset"
#      )
#    ),
#  
#    tableOutput('data_table')
#  )
#  
#  server <- function(input, output, session) {
#  
#    data_out <- reactive({
#      req(input$dataset)
#  
#      dataset_exists <- exists(input$dataset, "package:datasets")
#      feedbackWarning("dataset", !dataset_exists, "Unknown dataset")
#      req(dataset_exists, cancelOutput = TRUE)
#  
#      get(input$dataset, "package:datasets")
#    })
#  
#    output$data_table <- renderTable({
#      head(data_out())
#    })
#  }
#  
#  shinyApp(ui, server)

## ---- eval=FALSE--------------------------------------------------------------
#  library(shiny)
#  library(shinyFeedback)
#  
#  numberInput <- function(id) {
#    ns <- NS(id)
#    tagList(
#      useShinyFeedback(),
#      numericInput(
#        ns("warningInput"),
#        "Warn if Negative",
#        value = 0
#      )
#    )
#  }
#  
#  number <- function(input, output, session) {
#    observeEvent(input$warningInput, {
#      req(input$warningInput)
#      if (input$warningInput < 0) {
#        showFeedbackWarning(inputId = "warningInput")
#      } else {
#        hideFeedback("warningInput")
#      }
#    })
#  }
#  
#  ui <- fluidPage(
#    numberInput(id = "numberFoo")
#  )
#  
#  server <- function(input, output) {
#    callModule(module = number, id = "numberFoo")
#  }
#  
#  shinyApp(ui, server)

