## ---- eval = FALSE------------------------------------------------------------
#  library(shiny)
#  library(shinyFeedback)
#  
#  
#  server <- function(input, output, session) {
#  
#    count <- reactiveVal(0)
#  
#    observeEvent(input$counter_button, {
#      count(count() + 1)
#    })
#  
#    callModule(
#      valueBoxModule,
#      "betterBox",
#      value = count
#    )
#  }
#  
#  ui <- fluidPage(
#    fluidRow(
#      column(
#        12,
#        actionButton(
#          "counter_button",
#          "+1"
#        )
#      )
#    ),
#    br(),
#    fluidRow(
#      valueBoxModuleUI(
#        "betterBox",
#        "Counter",
#        icon = icon("rocket")
#      )
#    )
#  )
#  
#  
#  shinyApp(ui, server)

