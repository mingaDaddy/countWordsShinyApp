require(stringr)
nwords <- function(string, pseudo=F){
        ifelse( pseudo,
                pattern <- "\\S+",
                pattern <- "[[:alpha:]]+"
        )
        str_count(string, pattern)
}

function(input, output) {

        # builds a reactive expression that only invalidates
        # when the value of input$goButton becomes out of date
        # (i.e., when the button is pressed)
        nWords <- eventReactive(input$processButton, {
                nwords(input$words, pseudo = input$checkbox)
        })

        output$nWords <- renderText({
                paste0("Your text has ",
                       nWords(),
                       " words")
        })
}
