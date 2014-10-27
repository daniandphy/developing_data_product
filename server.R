library(shiny)
shinyServer(
        function(input,output){
                output$ranPlot<-renderPlot({
                        set.seed(input$seed1)
                        x<-runif(100,min=0,max=1)
                        set.seed(input$seed2)
                        y<-runif(100,min=0,max=1)
                        plot(x,y,xlab="first set of random numbers",ylab="second set of random numbers")
                })
        }
)