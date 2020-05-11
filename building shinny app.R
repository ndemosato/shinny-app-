#Instaall required library

library(shiny)

ui<-fluidPage(selectInput('dataset',label = "Dataset",choices = ls("package:datasets")),
              verbatimTextOutput("summary"),
              tableOutput("table"))
#fluidpage is a layout function
#select input is an input controll that lets the user interract with the app by providing a value

server<-function(input,output,session){}
shinyApp(ui,server)
#adding behaviour
#how to fill summarry and tables
server<-function(input,output,session)
  output$summary<-renderPrint({
    dataset<-get(input$dataset,"package:datasets")
    summary(dataset)
  })


