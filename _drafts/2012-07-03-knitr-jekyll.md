---
layout: post
title: "Blog with Knitr and Jekyll"
description: ""
category: r
tags: [knitr, jekyll, tutorial]
---
{% include JB/setup %}

The [knitr](http://yihui.name/knitr/) package provides an easy way to embed 
[R](http://www.r-project.org/) code in a [Jekyll-Bootstrap](http://jekyllbootstrap.com/) 
blog post. The only required input is an **R Markdown** source file. 
The name of the source file used to generate this post is *2012-07-03-knitr-jekyll.Rmd*, available
[here](https://github.com/jfisher-usgs/jfisher-usgs.github.com/blob/master/Rmd/2012-07-03-knitr-jekyll.Rmd).
Steps taken to build this post are as follows:

### Step 1

Create a Jekyll-Boostrap blog if you don't already have one. 
A brief tutorial on building this blog is available 
[here](/lessons/2012/05/30/jekyll-build-on-windows/).

### Step 2

Open the R Console and process the source file:

{% highlight r %}
KnitPost <- function(input, base.url = "/") {
    require(knitr)
    opts_knit$set(base.url = base.url)
    fig.path <- paste0("figs/", sub(".Rmd$", "", basename(input)), "/")
    opts_chunk$set(fig.path = fig.path)
    opts_chunk$set(fig.cap = "center")
    render_jekyll()
    knit(input, envir = parent.frame())
}
KnitPost("2012-07-03-knitr-jekyll.Rmd")
{% endhighlight %}


### Step 3

Move the resulting image folder *2012-07-03-knitr-jekyll* and **Markdown** file 
*2012-07-03-knitr-jekyll.md* to the local 
*jfisher-usgs.github.com* [git](http://git-scm.com/) repository.
The KnitPost function assumes that the image folder will be placed in a 
[figs](https://github.com/jfisher-usgs/jfisher-usgs.github.com/tree/master/figs) 
folder located at the root of the repository.

### Step 4

Add the following CSS code to the 
*/assets/themes/twitter-2.0/css/bootstrap.min.css* file to center images:

    [alt=center] {
      display: block;
      margin: auto;
    }

That's it.

***

Here are a few examples of embedding R code:

{% highlight r %}
summary(cars)
{% endhighlight %}



{% highlight text %}
##      speed           dist    
##  Min.   : 4.0   Min.   :  2  
##  1st Qu.:12.0   1st Qu.: 26  
##  Median :15.0   Median : 36  
##  Mean   :15.4   Mean   : 43  
##  3rd Qu.:19.0   3rd Qu.: 56  
##  Max.   :25.0   Max.   :120
{% endhighlight %}



{% highlight r %}
par(mar = c(4, 4, 0.1, 0.1), omi = c(0, 0, 0, 0))
plot(cars)
{% endhighlight %}

![center](/figs/2012-07-03-knitr-jekyll/fig1.png) 

##### Figure 1: Caption


{% highlight r %}
par(mar = c(2.5, 2.5, 0.5, 0.1), omi = c(0, 0, 0, 0))
filled.contour(volcano)
{% endhighlight %}

![center](/figs/2012-07-03-knitr-jekyll/fig2.png) 

##### Figure 2: Caption

And don't forget your session information for proper reproducible research.

{% highlight r %}
sessionInfo()
{% endhighlight %}



{% highlight text %}
## R version 3.0.3 (2014-03-06)
## Platform: x86_64-apple-darwin10.8.0 (64-bit)
## 
## locale:
## [1] es_ES.UTF-8/es_ES.UTF-8/es_ES.UTF-8/C/es_ES.UTF-8/es_ES.UTF-8
## 
## attached base packages:
## [1] stats     graphics  grDevices utils     datasets  methods   base     
## 
## other attached packages:
## [1] knitr_1.5       ggmap_2.3       ggplot2_0.9.3.1 mapdata_2.2-2  
## [5] maps_2.3-6      RCurl_1.95-4.1  bitops_1.0-6    tuneR_1.2.1    
## 
## loaded via a namespace (and not attached):
##  [1] colorspace_1.2-4    dichromat_2.0-0     digest_0.6.4       
##  [4] evaluate_0.5.3      formatR_0.10        grid_3.0.3         
##  [7] gtable_0.1.2        labeling_0.2        mapproj_1.2-2      
## [10] MASS_7.3-31         munsell_0.4.2       plyr_1.8.1         
## [13] png_0.1-7           proto_0.3-10        RColorBrewer_1.0-5 
## [16] Rcpp_0.11.1         reshape2_1.2.2      RgoogleMaps_1.2.0.5
## [19] rjson_0.2.13        RJSONIO_1.0-3       rmarkdown_0.1.23   
## [22] scales_0.2.3        signal_0.7-4        stringr_0.6.2      
## [25] tools_3.0.3         yaml_2.1.11
{% endhighlight %}

