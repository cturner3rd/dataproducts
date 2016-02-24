library(shiny)
library(manipulate)

shinyUI(pageWithSidebar(
    headerPanel("Visualization of mtcars Database"),
    
    sidebarPanel(
        
        h3("Instructions"),
        helpText("Select two variables from the list boxes below.", 
                 "The first variable will display on the x-axis.",
                 "The second will appear in color in the legend.",
                 "Miles/gallon will appear on the y-axis."),
        
        selectInput("varx", label = h4("Variable on x-axis"), 
                    choices = list("Weight [1000 lbs.]" = "wt", "Cylinders" = "cyl",
                                   "Displacement" = "disp", "Horsepower" = "hp",
                                   "Rear axle ratio" = "drat", "Quarter mile time [sec]" = "qsec",
                                   "Cylinder configuration" = "vs", "Transmission" = "am",
                                   "Number of gears" = "gear", "Carburetors" = "carb"), 
                    selected = "wt"),
        
        selectInput("varc", label = h4("Variable in Color"), 
                    choices = list("Weight  [1000 lbs.]" = "wt", "Cylinders" = "cyl",
                                   "Displacement" = "disp", "Horsepower" = "hp",
                                   "Rear axle ratio" = "drat", "Quarter mile time [sec]" = "qsec",
                                   "Cylinder configuration" = "vs", "Transmission" = "am",
                                   "Number of gears" = "gear", "Carburetors" = "carb"), 
                    selected = "cyl"),
 
        helpText(a ("View mtcars documentation", 
                    href="https://stat.ethz.ch/R-manual/R-devel/library/datasets/html/mtcars.html", 
                    target="_blank"))
    ),

        mainPanel(
            h3("Overview"),
            helpText("This application displays data from the mtcars database in the ", 
                     "datasets package. There are data on 10 variables that were",
                     "believed to affect fuel efficiency. You can use the interactive",
                     "display to explore which variables affected MPG."),
            
            h3(textOutput("caption")),
            plotOutput("mpgPlot"),
            plotOutput("mpg3Plot")
    )
))