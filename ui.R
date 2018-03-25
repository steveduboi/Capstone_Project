library(shiny)

# Define UI for application that draws a histogram
shinyUI(
  navbarPage("Coursera Data Science Capstone: Course Project- Predict Next Word",
             tabPanel("Predict Wordd",
                      HTML("<strong>Author: Steve Dubois</strong>"),
                      br(),
                      HTML("<strong>Date: 23 March 2018</strong>"),
                      br(),
                      sidebarLayout(
                        sidebarPanel(
                          helpText("This is small demonstration of the powerful NLP to predict the next word"),
                          hr(),
                          textInput("inputText", "Enter a word, Text or a sentence",value = ""),
                          hr(),
                          hr(),
                          hr()
                        ),
                        mainPanel(
                          h2("Word Predicton Result"),
                          h5("The next word for the given word, text or sentence is predicted using the NLP techquies,
                             on the Corpus provided by the Coursera"),
                          h5("Allow some time for the app to load for the first time"),
                          strong("Your input"),
                          verbatimTextOutput("inputWords"),
                          hr(),
                          strong("Next word can be"),
                          strong(code(textOutput("NextWord"))),
                          hr(),
                          hr()
                          )
                      )
             )
  )
)
