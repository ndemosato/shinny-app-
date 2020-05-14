#you will learn how to lay out the user interface and then add text images,a nd other HTML element on your shinny app
library(shiny)
#define ui
ui<-fluidPage()
#define server
server<-function(input,output){}
#run app
shinyApp(ui=ui,server=server)
#layout
ui<-fluidPage(
  titlePanel("title panel"),
  sidebarLayout(
    sidebarPanel("side panel"),
    mainPanel("main panel")
  )
)
server<-function(input,output){}
#run app
shinyApp(ui=ui,server=server)
#to changr the position of side bar
ui<-fluidPage(
  titlePanel("title panel"),
  sidebarLayout(position = "right",sidebarPanel("sidebar panel"),mainPanel("main panel") )
)
#define server
server<-function(input,output){}
#run app
shinyApp(ui=ui,server=server)
#html content
#how to add header
ui<-fluidPage(
  titlePanel("My shiny App"),
  sidebarLayout(
    sidebarPanel(),
    mainPanel(
      h1("First level title"),
      h2("Second level title"),
      h3("Third level title"),
      h4("Fourth level title"),
      h5("Fifth level title")
    )
  )
)
#define server
server<-function(input,output){}
#run app
shinyApp(ui=ui,server=server)
#formated text
ui<-fluidPage(
  titlePanel("my shiny App"),
  sidebarLayout(
    sidebarPanel(),mainPanel(
      p("p creates a paragraph of text."),
      p("A new p() command startsa new paragraph .Suppy a style attribute to change the format
        of the entire  paragraph.",style="font-familly:'times';font-sil6pt"),
      strong("strong() makes bold text"),
      em("em() creates italicized (1.e emphasized text."),
      br(),
      code("code displays your text similar to computer code"),
      div("div creates segments of text with similar styles.This division of text ia all blue
          because I passed the argument'style=color:green' to div",style="color:green"),
      br(),
      p("span does the same thing as div,but it works with",
        span("groups of words",style="color:blue"),
        "that appear inside a paragraph")
      
    )
  )
)

#define server
server<-function(input,output){}
#run app
shinyApp(ui=ui,server=server)

#to add an image
ui<-fluidPage(
  titlePanel("my shinny app"),
  sidebarLayout(
    sidebarPanel(),
                mainPanel(
                  img(src="rstudio.png",height
                      =140,width=400)
                )
    )
)
#define server
server<-function(input,output){}
#run app
shinyApp(ui=ui,server=server)
