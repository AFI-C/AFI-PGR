---
published: true
layout:   post
featured: false
title:    "Datos abiertos para predecir delitos en tiempo real"
tagline:  "Datos abiertos para predecir delitos en tiempo real."
author:   "Luis Román García | Omar Trejo"
date:     2014-12-08 13:09:00 -0500
grid_img:    "historias/prediciendo/prediciendo_grid.jpg"
featured_img: "historias/prediciendo/prediciendo_featured.jpg"
datasets:
  - catalogo-de-centros-de-trabajo
external_datasets:
  -
    title: "Base de datos Zapopan-Datatón"
    url: https://www.dropbox.com/sh/oirgysjvjfz33fo/AABiuHu3-ohe8nPm-jZFqQn4a
  -
    title: "Tweets georeferenciados Zapopán"
    url: https://www.dropbox.com/sh/skv5nl9t5mdxr4n/AADqqEU5bx2gTZdMldjdvLfVa
permalink: /impacto/historias/2014-12-08-prediciendo.html
section: impacto
sub_section: casos-de-uso
category: otros
category_title: "Otros"
tags:
- Datatón
redirect_from: /prediciendo/
excerpt_separator: <!--more-->
---

Buscamos caracterizar la distribución de delitos en el municipio de Zapopan creando un sistema que pudiera analizar el *stream* de Twitter en tiempo real para encontrar sucesos clave y brindar información relevante utilizando un sistema de Google.

<!--more-->

Para estimar la densidad de delitos en Zapopan utilizamos una técnica no paramétrica similar a un histograma. Segmentamos el territorio que cubre Zapopan en celdas uniformes de 200m por 200m (aproximadamente equivalente a una manzana) para hacer el análisis por zonas de extensión equivalente, y utilizamos las georeferencias de la base de datos delitos en Zapopan, compartida para el Dataton, para contar el número de delitos por celda.

Se integraron varias [bases de datos](http://dataton.datos.gob.mx "Página del Datatón en datos.gob.mx"), donde cada una agrega varias variables que son utilizadas para predecir delitos. Sabiendo el tipo de lugares y servicios que hay en cada celda y si han habido o no delitos, se entrenó el algoritmo Stochastic Gradient Boosting para predecir futuras ocurrencias de delitos.

- Se utilizó el 70% de los datos para entrenamiento del algoritmo y 30% para la validación.

- Se utilizaron 7,501 muestras bootstrap para estimar el error de predicción.

- Se corrieron 83,600 árboles variando el grado de complejidad entre .1 y .01, y la profundidad de los cortes en {1,3,5,7}. La máxima precisión se alcanzó con 700 árboles, 7 cortes y .1 de complejidad.

####Fig. 1: Distribución de lugares y servicios
![Distribución de lugares y servicios]({{ site.url | append: site.baseurl }}assets/images/historias/prediciendo/prediciendo01.jpg)

####Fig. 2: Distribución de crimen en Zapopan
![Distribución de lugares y servicios]({{ site.url | append: site.baseurl }}assets/images/historias/prediciendo/prediciendo02.jpg)

Como resultado la base de datos utilizada contiene delitos en 90% de las celdas. Nuestro modelo consigue una clasificación correcta cerca del 97% de los casos (considerablemente mayor a 90%), lo cual es muy bueno.

####Fig. 3: Precisión vs. número de árboles
![Precisión vs. número de árboles]({{ site.url | append: site.baseurl }}assets/images/historias/prediciendo/prediciendo03.jpg)

####Fig. 4: Tasa de error de predicción
![Tasa de error de predicción]({{ site.url | append: site.baseurl }}assets/images/historias/prediciendo/prediciendo04.jpg)

Los resultados muestran que es posible asignar de manera precisa una medida de probabilidad de incidencia delictiva a cada segmento del territorio, permitiéndonos identificar las características que comparten las regiones con baja y alta incidencia delictiva.

El siguiente paso fue cruzar este análisis con datos obtenidos de redes sociales para optimizar el proceso de detección y prevención del crimen. Utilizando la [API REST de Twitter](https://dev.twitter.com "Sitio para Desarrolladores de Twitter") y la [API Directions de Google](https://developers.google.com/maps/documentation/directions/ "Sitio de Direcciones de APIs de Google") logramos capturar tweets que informan sobre sucesos que ocurren en tiempo real, como robos, asesinatos, disparos, peleas, asaltos, entre otros.

####Fig. 4: Resultados de tweets recientes en Zapopan con densidad estimada  (líneas rojas)
![Resultados de tweets recientes en Zapopan con densidad estimada]({{ site.url | append: site.baseurl }}assets/images/historias/prediciendo/prediciendo05.jpg)

Como resultado de este paso:

- Generamos una respuesta con información relevante, en este caso el hospital más cercano, el tiempo que se tomará en llegar (tomando en cuenta el tráfico) y las instrucciones para hacerlo.

- Exploramos la posibilidad de avisar al hospital del hecho a través de un correo electrónico monitoreado o un mensaje directo en Twitter a cuenta para monitoreo de sucesos.

- Nos dimos cuenta de que podemos ir más allá y enviar patrullas o bomberos a lugares donde están ocurriendo estos acontecimientos.

Figura 6: Resultado con instrucciones para el hospital más cercano  

####Fig. 6: Resultado con instrucciones para el hospital más cercano
![Resultado con instrucciones para el hospital más cercano]({{ site.url | append: site.baseurl }}assets/images/historias/prediciendo/prediciendo06.jpg)


Iterando el proceso nos damos cuenta de que con las publicaciones en Twitter podemos de una forma automatizada, analizar muchos tipos de fenómenos sociales, económicos y naturales.

Aprovechando esto podemos responder con información o ayuda relevante que tiene el potencial de salvar vidas.

#####Referencias

Brian Kriegler & Richard Berk, *Small area estimation of the homeless in Los Angeles: An application of cost-sensitive stochastic gradient boosting*, The Annals of Applied Statistics, Institute of Mathematical Statistics, Vol.4, No.3, 2010, pp.1234-1255.
