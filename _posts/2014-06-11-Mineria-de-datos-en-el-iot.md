---
layout: post
lang: es
title: "Minería de datos en el IoT"
category: "Internet of Things"
tags: [Smart Things, Data Mining, Internet of Things (IoT)]
---
{% include JB/setup %}

Después de leer detenidamente el estudio que ha realizado la International Data Corporation (IDC) para la empresa [\\(EMC^{2}\\)](http://www.emc.com/leadership/digital-universe/index.htm?pid=home-dig-uni-090414) con las previsiones de expansión del **Universo Digital (UD)**, no me cabe ninguna duda que el Internet de las Cosas (IoT) llegará a tener un peso de datos comparable con el que generan hoy los ordenadores, los teléfonos móviles, las tabletas, etc. 

Según este informe, el **UD** también tiene su materia oscura, ya que el 90% de los datos sólo se utiliza una única vez. Además, por otro lado, sólo una mínima parte del total de los datos se puede considerar datos útiles; es decir, sólo *el 22%* son datos que se pueden analizar.

Llega a sorprender finalmente que **menos del 5%** de esos datos útiles pasan a analizase posteriormente, lo cual deja una enorme cantidad energía y datos desaprovechados por el camino.

Dado que el conocimiento no sólo son únicamente datos, me viene a la memoria una fábula de `Borges` que se titula, [Funes El Memorioso](http://www.literatura.us/borges/funes.html) y cuenta como todo para el personaje era información, este tenía además la desgracia de recordarlo todo sin pararse a analizar absolutamente nada. Un poco ridículo ¿verdad?

Puesto que se prevee que millones de dispositivos inteligentes se conecten a la Red se deben de seguir desarrollando métodos para gestionar, analizar y realizar una **minería efectiva de datos desde el origen**; esto es, hacer de los datos medidos en bruto, una información relevante, puntual y accesible.

Afortunadamente hoy se es más consciente de que la minería de datos es necesaria para el crecimiento y la sostenibilidad de Internet y por consiguiente del *IoT*.


![center](/figs/2014-06-11-Mineria-de-datos-en-el-iot/iot.png) 


Como modelo de minería de datos en el filo del IoT, *Gaura, et. al.* nos propone un algoritmo cíclico en los nodos (G-SIP) y varias variantes, en dónde la clave está en la formación de un **estado estimado** a través de los datos medidos en bruto y un **detector de cambio de estado**. 

Independientemente de las capas de las que se quiera dotar a la infraestructura, esta aproximación proporciona una información sumaria muy importante de **datos relativos a cosas**, y que es muy útil para identificar cuando se produce un cambio significativo, por lo que no se transmitirá información a la Red si no es necesario, es decir: menos datos a mandar, menos energía utilizada y menos capacidad de almacenamiento en el servidor remoto.

Este modelo se puede complicar aún más ya que habrá datos significativos de la interacción entre humanos, entre humanos y sistemas y entre sistemas que puedan ser usados para adaptar los servicios proporcionados por el IoT *(Tsai, et. al.)*.

Como conclusión y sin perder de vista las posibilidades que ofrece la computación y el almacenamiento en Red, las soluciones que se presentan para el desempeño de la minería de datos son múltiples y dependerán de cada caso en concreto. Eso sí, tendrán que ser analizadas desde las restricciones de computación, de memoria y las limitaciones de energía que tienen los dispositivos, consiguiendo al mismo tiempo los resultados relevantes que tengan que darse en las aplicaciones que se construyan para el usuario.


**Referencias**

- Chun-Wei Tsai, et. al. (2014), [Data Mining for Internet of Things: A Survey](http://ieeexplore.ieee.org/xpl/login.jsp?tp=&arnumber=6674155&url=http%3A%2F%2Fieeexplore.ieee.org%2Fiel7%2F9739%2F5451756%2F06674155.pdf%3Farnumber%3D6674155)
- Elena I. Gaura, el al. (2013), [Edge Mining the Internet of Things](http://ieeexplore.ieee.org/xpl/login.jsp?tp=&arnumber=6042288&url=http%3A%2F%2Fieeexplore.ieee.org%2Fxpls%2Fabs_all.jsp%3Farnumber%3D6042288)
- Shen Bin. et. al. (2013), [Research on Data Mining Models for the Internet
of Things](https://www.ceid.upatras.gr/webpages/faculty/vasilis/Courses/SpatialTemporalDM/Papers/InternetOfThings05476146.pdf)





