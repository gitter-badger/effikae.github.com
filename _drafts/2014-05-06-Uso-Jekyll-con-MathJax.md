---
layout: post
title:  "Ventajas de usar Jekyll Bootstrap (I)"
tagline: 
description: 
category: "blogger"
tags: [how-to, jekyll]
---

{% include JB/setup %}

Hay muchas plataformas de blogs y microblogs disponibles ¿Porque usar Jekyll? Pues porque es muy fácil escribir en cualquier editor de textos un post utilizándo un lenguaje sencillo de marcación denominado `Markdown`. 

Gracias a esto y a que [Jekyll](http://jekyllbootstrap.com/usage/jekyll-quick-start.html) es una herramienta que construye páginas web estáticas interpretando los archivos **Markdown** podemos prescindir de instalar y/o mantener bases de datos. 

Por otro lado con [GitHub](https://github.com) podemos llevar un control de cambios y además puedes hospedar nuestro sitio  gratuitamente compartiendo nuestro trabajo con una gran comunidad `Open Source`.

En esta plataforma hay gran cantidad de código que podemos utilizar como por ejemplo [Prose](http://prose.io) que es un editor de contenido diseñado para mantener páginas web, es decir llevado práctica, para escribir cualquier post desde cualquier dispositivo.

Gracias a [Mathjax](http://www.mathjax.org) podemos hacer que las fórmulas sean vistas por todos los navegadores de la misma forma. La sintaxis que se emplea es la misma que la que se usa en *LaTeX*. Pero antes, se han de añadir algunas líneas código al archivo `_layouts/default.html`

{% highlight bash %}<script type="text/javascript" src="http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML"></script>
{% endhighlight %}

### Referencias ###
[Markdown Cheatsheet (Johannes-Kutsch)]{https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet#code}