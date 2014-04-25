---
layout: post
title: "Post"
tagline:
description: "Example"
category: "example"
tags: [intro, beginner]
---

{% include JB/setup %}



## Qué es Effikae

Es un proyecto que pretende la comparación del grado de desempeño de las instalaciones térmicas.

## A quién está dirigido

A todos los que quieren monitorizar y comparar variables de sus instalaciones térmicas. 

Emphasis, aka italics, with *asterisks* or _underscores_.

{% highlight python %}
def yourfunction():
     print "Hello World!"
{% endhighlight %}



Strong emphasis, aka bold, with **asterisks** or __underscores__.

Combined emphasis with **asterisks and _underscores_**.

{% highlight js %}
var passport = require('passport');
var LocalStrategy = require('passport-local').Strategy;

passport.use(new LocalStrategy({
    // set the field name here
    usernameField: 'username',
    passwordField: 'password'
  },
  function(username, password, done) {
    /* get the username and password from the input arguments of the function */

    // query the user from the database
    // don't care the way I query from database, you can use
    // any method to query the user from database
    User.find( { where: {username: username}} )
      .success(function(user){
      
        if(!user)
          // if the user is not exist
          return done(null, false, {message: "The user is not exist"});
        else if(!hashing.compare(password, user.password))
          // if password does not match
          return done(null, false, {message: "Wrong password"});
        else
          // if everything is OK, return null as the error
          // and the authenticated user
          return done(null, user);
        
      })
      .error(function(err){
        // if command executed with error
        return done(err);
      });
  }
));
{% endhighlight %}


Strikethrough uses two tildes. ~~Scratch this.~~

This is an example of a draft. Read more here: [jekyllrb](http://jekyllrb.com/docs/drafts/) 


{% highlight bash %}
cd ~
{% endhighlight %}

my function `myFunction`
\\(\alpha^2 + \beta^2 = \gamma^2\\) 


> Blockquotes are very handy in email to emulate reply text.
> This line is part of the same quote.

Still to do


* Tablas
* About
	* Linkedin
	* Png
* Comprobar Google Statistics
* Markdown w/sublime text 2

{% highlight r %}
require("knitr")
opts_chunk$set(fig.width=5, fig.height=5, cache=TRUE)
{% endhighlight %}




| Tables        | Are           | Cool  |
| ------------- |:-------------:| -----:|
| col 3 is      | right-aligned | $1600 |
| col 2 is      | centered      |   $12 |
| zebra stripes | are neat      |    $1 |



