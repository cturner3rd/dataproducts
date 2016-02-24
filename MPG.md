Visualizing the mtcars Database
========================================================
author: Carl Turner
date: February 24, 2016

Developing Data Products Class, Data Science Specialization

Overview
========================================================
This application is used to quickly view the relationships
between 2 variables in the [mtcars database](http:////stat.ethz.ch/R-manual/R-devel/library/datasets/html/mtcars.html) and the dependent
variable miles/gallon (MPG). To view the plots:

- Select a variable to appear on the x-axis
- Select a variable to appear in color 
- View the variables' relationship to MGP

Shiny: [Visualizing the mtcars Database application](http://cturner3rd.shinyapps.io/Assignment/)

Github: 

Data Input
========================================================
The user selects two variables from the dropdown lists boxes.
The variables are plotted against MPG as shown on the next slide.
<!--html_preserve--><div class="container-fluid">
<div class="row">
<div class="col-sm-12">
<h1></h1>
</div>
</div>
<div class="row">
<div class="col-sm-4">
<form class="well">
<div class="form-group shiny-input-container">
<label class="control-label" for="varx">
<h4>Variable on x-axis</h4>
</label>
<div>
<select id="varx"><option value="wt" selected>Weight [1000 lbs.]</option>
<option value="cyl">Cylinders</option>
<option value="disp">Displacement</option>
<option value="hp">Horsepower</option>
<option value="drat">Rear axle ratio</option>
<option value="qsec">Quarter mile time [sec]</option>
<option value="vs">Cylinder configuration</option>
<option value="am">Transmission</option>
<option value="gear">Number of gears</option>
<option value="carb">Carburetors</option></select>
<script type="application/json" data-for="varx" data-nonempty="">{}</script>
</div>
</div>
<div class="form-group shiny-input-container">
<label class="control-label" for="varc">
<h4>Variable in Color</h4>
</label>
<div>
<select id="varc"><option value="wt">Weight  [1000 lbs.]</option>
<option value="cyl" selected>Cylinders</option>
<option value="disp">Displacement</option>
<option value="hp">Horsepower</option>
<option value="drat">Rear axle ratio</option>
<option value="qsec">Quarter mile time [sec]</option>
<option value="vs">Cylinder configuration</option>
<option value="am">Transmission</option>
<option value="gear">Number of gears</option>
<option value="carb">Carburetors</option></select>
<script type="application/json" data-for="varc" data-nonempty="">{}</script>
</div>
</div>
</form>
</div>
<div class="col-sm-8"></div>
</div>
</div><!--/html_preserve-->


Visualization Output
========================================================
The application defaults to weight on the x-axis and cylinders 
as the color data. The user can then change the variables as needed.




```r
p <- ggplot(mpgData, aes(varx, mpg, color= varc)) + 
    geom_point() + xlab("wt") + labs(color="cyl")
```

***

![plot of chunk unnamed-chunk-4](MPG-figure/unnamed-chunk-4-1.png)

Final Comments
========================================================
This is a simple example of data visualization using only 10
predictor variables. Industrial visualization tools accomodate
hundreds of variables displayed in 3 and 4 dimensional spaces.
An extension of this application is planned to represent the 
data in a 3-dimensional cube.

