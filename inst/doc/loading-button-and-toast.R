## ---- eval = FALSE------------------------------------------------------------
#  library(shiny)
#  library(shinyFeedback)
#  
#  ui <- fluidPage(
#    fluidRow(
#      column(
#        12,
#        br(),
#        loadingButton(
#          "myLoadingButton",
#          label = "Submit"
#        ),
#        loadingButton(
#          "myCancelButton",
#          label = "Cancel",
#          class = "btn btn-danger",
#          loadingLabel = "Cancelling...",
#        )
#      )
#    )
#  )
#  
#  server <- function(input, output, session) {
#  
#  
#    # reset the loadingButton to its active state after 3 seconds
#    observeEvent(input$myLoadingButton, {
#      Sys.sleep(3)
#      resetLoadingButton("myLoadingButton")
#    })
#  
#    observeEvent(input$myCancelButton, {
#      Sys.sleep(3)
#      resetLoadingButton("myCancelButton")
#    })
#  
#  }
#  
#  
#  shinyApp(ui, server)

## ---- eval = FALSE------------------------------------------------------------
#  library(shiny)
#  library(shinyFeedback)
#  
#  ui <- fluidPage(
#    useShinyFeedback(feedback = FALSE),
#    fluidRow(
#      column(
#        12,
#        br(),
#        loadingButton(
#          "myFirstButton",
#          label = "Submit"
#        )
#      )
#    )
#  )
#  
#  server <- function(input, output, session) {
#  
#  
#    # reset the loadingButton to its active state after 2 seconds
#    observeEvent(input$myFirstButton, {
#      Sys.sleep(2)
#      resetLoadingButton("myFirstButton")
#      showToast(
#        "success",
#        "I'll toast to that!"
#      )
#    })
#  
#  }
#  
#  shinyApp(ui, server)
#  

## ---- eval = FALSE------------------------------------------------------------
#  # use this list for all your toasts
#  myToastOptions <- list(
#    positionClass = "toast-top-right",
#    progressBar = FALSE,
#    timeOut = 3000,
#    closeButton = TRUE,
#  
#    # same as defaults
#    newestOnTop = TRUE,
#    preventDuplicates = FALSE,
#    showDuration = 300,
#    hideDuration = 1000,
#    extendedTimeOut = 1000,
#    showEasing = "linear",
#    hideEasing = "linear",
#    showMethod = "fadeIn",
#    hideMethod = "fadeOut"
#  )
#  
#  
#  library(shiny)
#  library(shinyFeedback)
#  
#  ui <- fluidPage(
#    useShinyFeedback(feedback = FALSE),
#    fluidRow(
#      column(
#        12,
#        br(),
#        loadingButton(
#          "myLoadingButton",
#          label = "Submit"
#        ),
#        loadingButton(
#          "myErrorButton",
#          label = "Error",
#          class = "btn btn-danger",
#          loadingLabel = "Erroring...",
#        )
#      )
#    )
#  )
#  
#  server <- function(input, output, session) {
#  
#  
#    # reset the loadingButton to its active state after 2 seconds
#    observeEvent(input$myLoadingButton, {
#      Sys.sleep(2)
#      resetLoadingButton("myLoadingButton")
#      showToast(
#        "success",
#        "I'll toast to that!",
#        .options = myToastOptions
#      )
#    })
#  
#    observeEvent(input$myErrorButton, {
#      Sys.sleep(2)
#      resetLoadingButton("myErrorButton")
#      showToast(
#        "error",
#        "Your toast is on fire!",
#        .options = myToastOptions
#      )
#    })
#  
#  }
#  
#  
#  
#  
#  shinyApp(ui, server)

