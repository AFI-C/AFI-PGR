---
published: true
layout:   post
featured: false
title:    "Zapopan como sistema complejo"
tagline:  "Predicción y análisis espacial de crimen"
author:   ""
date:     2014-07-15 18:09:00 -0500
grid_img:    "historias/zapopan-como-sistema-complejo/zapopan-como-sistema-complejo_grid.jpg"
featured_img: "historias/zapopan-como-sistema-complejo/zapopan-como-sistema-complejo_featured.jpg"
permalink: /impacto/historias/zapopan-como-sistema-complejo.html
section: impacto
sub_section: casos-de-uso
category: seguridad-y-justicia
category_title: Seguridad y justicia
tags:
- Dataton
redirect_from: /zapopan-como-sistema-complejo/
excerpt_separator: <!--more-->
---

Los problemas en las ciudades son multifactoriales, por lo que es necesario estudiarlos desde un enfoque de las ciencias de la complejidad; basado en la información generada por las dinámicas sociales presentes en las diversas escalas, tanto espaciales como temporales, que conforman el sistema complejo que llamamos “ciudad”. Recientemente ha sido posible estimar, de manera mucho más precisa, estas dinámicas sociales gracias a la enorme cantidad de datos. Es evidente que conforme nuestra capacidad de medir y analizar datos crece, nuestra concepción de la ciudad como un sistema complejo se vuelve mucho más precisa. Las ciudades son un sistema complejo en el cual interactúan una enorme diversidad de agentes en escalas que van desde lo micro (el individuo) hasta lo macro (las instituciones) a través de diferentes niveles sociales, políticos, económicos y físicos. Debido a esto, se vuelve importante estudiar a la ciudad bajo los paradigmas de la complejidad, con lo cual se vuelve factible proponer soluciones estratégicas para la mejora de la política pública.

<!--more-->

El problema que abordamos fue el de representar a la ciudad de Zapopan como un sistema complejo, en donde agentes de muy diversos tipos interactúan en diferentes escalas, tanto espaciales como temporales. Una de las principales herramientas en el análisis de sistemas complejos es el análisis de redes, ya que permite abstraer del sistema aquella información relevante en términos de las interacciones de los agentes involucrados.

Analizando los conjuntos de datos disponibles para la ciudad de Zapopan, observamos que el conjunto de datos más interesante son aquellos datos que están georeferenciados, es decir, elementos o eventos para los cuales se conoce su localización espacial. Dentro de este conjunto de datos podemos identificar tres categorías:

1. Eventos, los cuales usualmente están representados de manera puntual y se conoce el momento temporal (fecha) en la que sucedieron.

2. Lugares los cuales están representados como polígonos y cubren cierta extensión de terreno.

3. Vías de comunicación, las cuales están representadas por lineas y se interseccionan entre si.

El primer paso en el análisis fue identificar con cual conjunto de datos podemos construir una red que represente las interacciones dinámicas de la ciudad. Esta red podría ser construida de varías maneras. Esencialmente se necesitan agentes que cubran la mayor parte del área de interés y los cuales estén conectados de alguna manera no trivial. Es posible construir redes para los 3 tipos de datos identificados previamente.

A nivel de eventos, se pueden identificar los nodos de la red con los mismos eventos y los enlaces de la red con interacciones entre estos eventos. También se puede hacer a nivel de personas, donde los nodos serían las personas y los enlaces las interacciones entre ellos en cierto evento.

A nivel de Lugares, se pueden identificar los nodos de la red con los lugares propiamente y los enlaces pueden ser en términos de interacciones directas o en términos de colindancia. Por ejemplo, una red donde los nodos sean las colonias de Zapopan y los enlaces sean en términos de si estas colonias colindan geográficamente.

A nivel de vías de comunicación, se pueden identificar los nodos con las mismas vías y los enlaces se darían en términos de las intersecciones ó viceversa, considerar los nodos como lugares de interés y las vías de comunicación como los enlaces (está estrategia es la que se sigue usualmente en la literatura, por ejemplo aplicaciones referentes a redes de transporte público).

Si bien la idea del proyecto fue plantearlo en términos de análisis de la ciudad como un sistema complejo, desarrollamos este ejemplo específico en donde especialmente nos enfocamos en 2 preguntas:

	1) Predicción y análisis espacial de crimen.

	2) Diseño de rutas de patrullaje de policía y tránsito.

El enfoque matemático utilizado en el análisis tiene su fundamento en la teoría de redes, la cual permite abordar al sistema complejo —la ciudad— a través de una red que codifique las interacciones dinámicas de la ciudad.

Para el caso particular de la predicción y análisis espacial del delito, la representación en términos de redes se obtiene al considerar las vías de comunicación como los nodos, cuyos enlaces están definidos por las intersecciones de estas vías. Decidimos construirla de esta manera porque consideramos que la calle y las vías de comunicación son el principal escenario del delito. La red cuenta con 14,218 nodos y 28,163 enlaces.

Usando esta representación de grafos es posible asociar cada uno de los delitos a un nodo, calculando las distancias entre el punto que define un delito y todas las vías que conforman la red, para escoger aquella vía con la distancia mas próxima al delito, criterio utilizado para asignar los delitos a las vías de comunicación.

El expresar la ciudad en términos de una red nos permite representarla de forma abstracta y por lo tanto calcular algunas cantidades interesantes. Por ejemplo, la propiedad llamada grado, definido como el número de enlaces que llegan a cada nodo, representa el número de intersecciones de una vía con otra. De esta forma obtenemos la distribución de enlaces con respecto a todos los nodos (distribución de grado).

Debido a que cada nodo tiene un valor de grado asociado podemos graficar las vías de comunicación en términos de su grado, donde el grueso de la línea representa el grado asociado a esta vía, de tal manera que líneas gruesas representan calles con un mayor grado, por ende un mayor número de intersecciones. Es interesante observar que el grado de las vías esta correlacionado con la cantidad de delitos asociados a cada vía, por lo tanto es posible utilizar el grado de cada nodo para estimar un índice delictivo a nivel de calle. Esta información puede ser util para definir calles con un alto índice delictivo y calles donde la probabilidad de tener delitos es alta, sobre estas calles es importante definir las rutas de patrullaje de la policía.
