library(shiny)
shinyUI(fluidPage(
  headerPanel("Next Word Prediction App"
  ),
  sidebarPanel(
    h3("Introducton"),
    p("A Shiny app that takes as input a phrase (multiple words) in a text box input and outputs a prediction of the next word. To use it, simply type word(s) on the text field on the screen
      and up to 4 possible next words will display in buttons below the field. Click on your intended match to add it to the field."),
    p("The application uses natural language processing, namely, n-grams, Markov model, and Katz's back-off model to perform text prediction."),
    p("This N-gram Word Predictor was developed as a capstone project to complete the Johns Hopkins data science Course.")
    ),
  mainPanel(
    h3("Input"),
    textInput("inputTxt", "Type in word(s) below:", width = "90%"),
    uiOutput("words"),
    br(),
    wellPanel(
      h4("Details"),
      HTML("<p> Github Repository <a href='https://github.com/quannguyen201294/datasciencecoursera/tree/master/Data_Science_Capstone_Project' target='_blank'>https://github.com/quannguyen201294/datasciencecoursera/tree/master/Data_Science_Capstone_Project</a></p>"),
      HTML("<p> Slide Deck Presentation <a href='https://rpubs.com/quannguyen201294/653355' target='_blank'>https://rpubs.com/quannguyen201294/653355</a></p>"),
      h4("Author:"),
      p("Quan Nguyen")
    )
    
  )
))
