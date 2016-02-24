library(shiny)
library(datasets)
library(ggplot2)
library(rgl)

shinyServer(function(input, output) {
    formulaText <- reactive({
        toupper(paste("mpg ~", input$varx, " + ", input$varc))
    })
    
    output$caption <- renderText({
        formulaText()
    })
    
    output$mpgPlot <- renderPlot({
        if (input$varx == "am") {#  categorical variables
            mpgData <- data.frame(mpg = mtcars$mpg, varc = mtcars[[input$varc]], 
                                  varx = factor(mtcars[[input$varx]], 
                                               labels = c("Automatic", "Manual")))
        }
        else if (input$varx == "cyl" | 
                 input$varx == "gear" | 
                 input$varx == "vs" |  
                 input$varx == "carb"){
            mpgData <- data.frame(mpg = mtcars$mpg, varc = mtcars[[input$varc]], 
                                  varx = factor(mtcars[[input$varx]]))
        }
        else {# continuous variables
            mpgData <- data.frame(mpg = mtcars$mpg, varc = mtcars[[input$varc]], 
                                  varx = mtcars[[input$varx]])
        }

        p <- ggplot(mpgData, aes(varx, mpg, color= varc)) + 
            geom_point() + 
            xlab(input$varx) + 
            labs(color=input$varc)
        print(p)
    })
    
    output$mpg3Plot <- renderPlot({
        mpgData <- data.frame(mpg = mtcars$mpg, varc = mtcars[[input$varc]], 
                              varx = mtcars[[input$varx]])
        
        plot3d(mpgData$varx, mpgData$varc, mpgData$mpg, 
               xlab= input$varx, ylab=input$varc, zlab="MPG",
               type="s", size=0.75, lit=F)
    })
})