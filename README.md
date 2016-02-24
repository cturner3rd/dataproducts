# Visualizing the mtcars Database
Presentation and code for the Developing Data Products class project
### Introduction
The application accesses the mtcars database. The user selects 2 variables among the 10 dependent variables and plots them against the miles/gallon (MPG) variable. One variable is plotted on the x-axis, the second is plotted as color on each datapoint. The file description of mtcars is here: http://stat.ethz.ch/R-manual/R-devel/library/datasets/html/mtcars.html

### Shiny
The application is hosted on shinyapps.io: http://cturner3rd.shinyapps.io/Assignment/  It is coded as a reactive app such that when the user selects a variable the plot is automatically generated using the new variable. 

### Github
The source code is in this dataproducts repo
- ui.R is the interface code
- server.R is the code to generate the plots
- MPG.Rpres is the presentation file that describes the behavior of the application
- MPG.md is the markdown document for the presentation

### RPubs
The presentation is available here: http://rpubs.com/cturner3rd/155482
