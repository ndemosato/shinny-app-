library(shiny)
ui<-fluidPage(
  titlePanel("Basic widget"),
  fluidRow(
    column(3,
           h3("Buttons"),
           actionButton("action","Action"),
           br(),
           br(),
           submitButton("submit")),
    column(3,
           h3("Single checkbox"),
           checkboxInput("checkbox","choice A",value = TRUE)),
    column(3,checkboxGroupInput("checkGroup",h3("checkbox group"),
                                choices = list("choice 1"=1,
                                               "choice 2" =2,
                                               "choice 3"= 3),
                                selected = 1)),
    column(3,
           dateInput("date",
                     h3("date input"),
                     value = "2020-05-12"))
  ),
  fluidRow(
    column(3,
           dateRangeInput("dates",h3("Date input"))),
    column(3,
           fileInput("file",h3("File input"))),
    column(3,
           h3("Help text"),
           helpText("Note:help text isn't a true widget,",
                    "but provides easy way to add text to",
                    "accompany other widgets.")),
    column(3,
           numericInput("num",
                        h3("numeric input"),
                        value = 1))
  ),
  fluidRow(3,
           column(3,
                  radioButtons("radio", h3("Radio buttons"),
                               choices = list("choice 1"=1, "choice 2"=2,"choice 3"=3), selected=1)),
           column(3,
                  sliderInput("slider1",
                              h3("sliders"),
                              min=0,max=100,value=50),
                  sliderInput("slider2","",
                              min=0,max=100,value=c(25,75))),
           column(3,
                  textInput("text",h3("Text input"),
                            value="Enter text ....")))
)
#define server
server<-function(input,output){}
#run app
shinyApp(ui=ui,server=server)