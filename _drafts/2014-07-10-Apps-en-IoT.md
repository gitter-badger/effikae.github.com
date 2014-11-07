---
layout: post
title:  "Aplicaciones en el IoT"
tagline: 
category : Internet of Things (IoT)
tags : [IoT, Apps]
---

Cálculo del término de energía PVPC

Término energía $PVPC$  

## Glosario de términos ##

<div class="blogs">
  {% for post in site.posts %}
    <article class="post">          
      <h3><a href="{{ site.baseurl }}/{{ site.blogs }}{{ post.title }}">{{ post.title }}</a></h3>

      {% assign wordCount = {{ post.content | size }} %}
      {% if wordCount > 120 %}
        <div class="entry">
            {{ post.content | truncatewords:120}}
        </div>

        <a href="{{ site.baseurl }}{{ post.url}}" class="read-more">Read More</a>
      {% else %}
        {{ post.content }}
      {% endif %}
    </article>
  {% endfor %}
</div>

### Referencias ###

[Is There An App For That? How The 'Internet Of Things' Is Changing The Consumer Device Landscape](http://www.forbes.com/sites/sanjeevsardana/2014/05/29/is-there-an-app-for-that-how-the-internet-of-things-is-changing-the-consumer-device-landscape/) 