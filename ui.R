#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

  # Application title
  titlePanel("Count number of words"),

  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
            textAreaInput("words",
                          "Your text:",
                          "Please add a small text here",
                          width = "245px",
                          height = "250px"),
            verbatimTextOutput("value"),
            br(),
            checkboxInput("checkbox",
                          label = "Consider numbers as words?",
                          value = TRUE),
            br(),
            actionButton("processButton", "Count words!")
    ),

    # Show a plot of the generated distribution
    mainPanel(
            tags$style(type='text/css', '#nWords {background-color: rgba(255,255,0,0.40); color: green; font-size: 16px; font-weight: 900;}'),
           verbatimTextOutput("nWords"),
           tabsetPanel(
                   tabPanel("Instructions", fluidPage(
                           br(),
                           HTML('<p style="color:black; font-size: 12pt">This app count the number of words writen down in the textarea placed on the left
                                side of the page. Follow this simple instructions:</p>
<ul style="color:black; font-size: 12pt"><li>Write or paste some text on the textarea</li><li>Uncheck the checkbox if you do not want numbers to be considered as words</li>
                                <li>Click the "Count words!" button</li></ul>')
                   )),
                   tabPanel("ui.R",
                            br(),
                            HTML('<a href="https://github.com/mingaDaddy/countWordsShinyApp/blob/master/ui.R">https://github.com/mingaDaddy/countWordsShinyApp/blob/master/ui.R</a>')

                   ),
                   tabPanel("server.R",
                            br(),
                            HTML('<a href="https://github.com/mingaDaddy/countWordsShinyApp/blob/master/server.R">https://github.com/mingaDaddy/countWordsShinyApp/blob/master/server.R</a>')
                   ))
    )

  )
))
