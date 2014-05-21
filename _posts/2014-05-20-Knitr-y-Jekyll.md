---
layout: post
title: "Knitr y Jekyll-Bootstrap"
tags: [knitr, jekyll bootstrap, tutorial]
categories: "R"

---
{% include JB/setup %}

[Knitr](http://yihui.name/knitr/) es el paquete de [R](http://www.r-project.org/) que nos permite incorporar a nuestras publicaciones o **post** los resultados obtenidos en `RStudio`. Para ello es necesario incluir en el archivo *R Markdown* los trozos de código R que necesitamos.  Posteriormente **knitr** los compilará y generará como resultado una página *html* lista para ver en cualquier navegador.

Para que el flujo de trabajo de Jekyll-Bootstrap tenga en cuenta los archivos **R Markdown** ejecutaremos en el terminal el siguiente script `knitpages.R`. Previamente dotaremos al archivo de permisos suficientes y crearemos el directorio en donde se encontrarán los archivos (.Rmd) `_R`, el directorio donde se encrontrarán las figuras `_figs` y el directorio a la que irán los archivos *Markdown* convertidos `pages`. 


{% highlight r %}
# !/usr/bin/Rscript --vanilla

# compiles all .Rmd files in _R directory into .md files in Pages directory,
# if the input file is older than the output file.

# run ./knitpages.R to update all knitr files that need to be updated.

KnitPost <- function(input, outfile, base.url = "/") {
    # this function is a modified version of an example here:
    # http://jfisher-usgs.github.com/r/2012/07/03/knitr-jekyll/
    require(knitr)
    opts_knit$set(base.url = base.url)
    fig.path <- paste0("figs/", sub(".Rmd$", "", basename(input)), "/")
    opts_chunk$set(fig.path = fig.path)
    opts_chunk$set(fig.cap = "center")
    render_jekyll()
    knit(input, outfile, envir = parent.frame())
}

for (infile in list.files("_R", pattern = "*.Rmd", full.names = TRUE)) {
    outfile = paste0("pages/", sub(".Rmd$", ".md", basename(infile)))
    
    # knit only if the input file is the last one modified
    if (!file.exists(outfile) | file.info(infile)$mtime > file.info(outfile)$mtime) {
        KnitPost(infile, outfile)
    }
}
{% endhighlight %}


Para que las figuras estén centradas debemos de incorporar el siguiente código al archivo `/assets/themes/twitter-2.0/css/bootstrap.min.css`

    [alt=center] {
      display: block;
      margin: auto;
    }

A continuación se muestran algunos ejemplos que incorporan código R:

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

![center](/figs/2014-05-20-Knitr-y-Jekyll/fig1.png) 


### Referencias

- A. Murandi (2012) [Taller Caldum: Introducción: R + knitr + markdown](http://fobos.inf.um.es/R/introknitr/introknitrs.html#(1))

### Reproductibilidad


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
## [1] stats     graphics  grDevices utils     datasets  base     
## 
## other attached packages:
## [1] knitr_1.5
## 
## loaded via a namespace (and not attached):
## [1] evaluate_0.5.3 formatR_0.10   stringr_0.6.2  tools_3.0.3
{% endhighlight %}

