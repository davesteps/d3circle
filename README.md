## d3circle

d3 circle packing interface for R. Code adapted from [here](https://bl.ocks.org/mbostock/467f1a0db47753cc630e).


----
###Install

  
```r
if (!require("devtools"))
  install.packages("devtools")
devtools::install_github("davesteps/d3circle")


```

###Usage
```r
require(d3circle)
require(jsonlite)

data <- fromJSON(system.file("data/flare.json",package='d3circle'),
                           simplifyDataFrame = FALSE)
                           
d3circle(data = data,diameter=900)
```



