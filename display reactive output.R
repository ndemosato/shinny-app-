library(shiny)

ui <- fluidPage(
  titlePanel("CensusViS"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("create demographic maps with information from the 2010 US census"),
      selectInput("var",
                  label = "Choose variable to dispaly",
                  choices = list(" percent White"," percent Black"," percent Hispanic"," percent Asian"),
                  selected = "percent Black"),
      sliderInput("range",
                  label="Range of intrest:",
                  min=0,max = 100,value=c(0-100))
    ),
    mainPanel(textOutput("selected_var"))
  )
  
)

server <- function(input, output) {
  output$selected_var<-renderText({
   paste ("You have selected ",input$var)
  })
  
}

shinyApp(ui, server)