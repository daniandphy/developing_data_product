library(shiny)
shinyUI(
        pageWithSidebar(
                headerPanel("Plot Of Two Sets Of Random Variables vs Each Other"),
                sidebarPanel(
                        h4("pick two numbers as seeds for random number generator"),
                        h5("Note: min value=1 & max value=100"),
                        numericInput("seed1", "Numeric input, labled seed1",5,min=1,max=100,step=1),
                        numericInput("seed2", "Numeric input, labled seed2",1,min=1,max=100,step=1),
                        submitButton("Submit")
                        ),
        mainPanel(h3("Plot"),
                  plotOutput("ranPlot")
                )
        )
)
