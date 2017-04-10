---
layout:   post
featured: false
featured_tagline: 'Datos Abiertos para:'
title:    "LabConDatos: Atención en unidades médicas del IMSS en el 2013."
tagline:  "Mostrar la relación entre la presencia de centros del IMSS con el grado de marginación."
author:   "Mariana Ruiz | Rubén López | Orlando García | José Rodrigo Patiño | Luis Mauricio Torres"
date:     2015-01-11 13:09:00 -0500
grid_img:    "historias/labcondatos-imss/labcondatos-imss_grid.jpg"
featured_img: "historias/labcondatos-imss/labcondatos-imss_featured.jpg"
datasets:
  - encuesta-nacional-de-satisfaccion-a-usuarios-de-servicios-medicos-del-imss-ensat
external_datasets:
  -
    title: "Base de datos Zapopan-Datatón"
    url: http://www.conapo.gob.mx/en/CONAPO/Indices_de_Marginacion_Publicaciones


collaborators:
  - imco

permalink: /impacto/historias/2015-01-11-labcondatos-imss.html
section: impacto
sub_section: casos-de-uso
category: salud
category_title: Salud
tags:
  - salud
  - labcondatos
redirect_from: /labcondatos-imss/
published: true
excerpt_separator: <!--more-->
---

El objetivo del proyecto es mostrar la relación que existe entre la presencia de centros de atención del IMSS con el grado de marginación de los municipios cercanos a dichos centros. Así como conocer las zonas geográficas donde se reporta un nivel de satisfacción relativamente alto y donde está mejorando el servicio.

<!--more-->

Esta sencilla herramienta permite visualizar la ubicación de las Unidades Médicas Familiares (UMF) en México. Al mismo tiempo es posible conocer el nivel de satisfacción de los usuarios de cada UMF, así como la percepción de mejora en el servicio y aquellas UMF donde el servicio parece haber empeorado en el último año. Por último, existe la opción de conocer la proporción de encuestados por sexo en cada unidad. La herramienta fue presentada en el *LabConDatos* dentro del marco de *ConDatos: Segunda Conferencia Regional de Datos Abiertos en América Latina y el Caribe*, 2014.

Algunos resultados generales indican que el 78.5% de los encuestados dice estar satisfecho o muy satisfecho con la calidad de atención recibida en su UMF. Únicamente 21.5% se muestra insatisfecho. Por otro lado, 58.2% percibe que el servicio en su unidad de atención ha mejorado, 31% no percibe cambio en la calidad de atención y 10.8% dice que ha empeorado.

Las Unidades Médicas se localizan en los municipios y localidades más densamente pobladas. Adicionalmente, parece ser que la ubicación de las unidades se relaciona con índices de marginación altos. Las unidades se localizan en puntos donde pueden atender municipios colindantes que necesitan atención por su nivel de vulnerabilidad. Sin embargo, existen excepciones, como son algunos municipios de Chihuahua o la zona de intersección de Oaxaca, Tabasco y Chiapas donde existen municipios con altos índices de marginación y que no cuentan con UMF. Contrariamente, el patrón en estas zonas es la presencia de UMF en municipios que rodean a estos municipios altamente vulnerables.

![Percepción nacional del servicio del IMSS]({{ site.url | append: site.baseurl }}/assets/images/historias/labcondatos-imss/labcondatos-imss_01.jpg)

Un dato interesante es que en la mayoría de las UMF, las personas encuestadas eran mujeres generalmente. Este dato tal vez parezca de poca utilidad para el diseño de políticas públicas, sin embargo nos dice algo: no necesariamente las mujeres demandan más atención médica que los hombres, pero esto muestra que probablemente son mujeres las que se encargan de los cuidados de la salud de miembros dependientes en el hogar (niños y adultos mayores).

Las UMF se geolocalizaron utilizando los datos del directorio de UMF y las respuestas de satisfacción provienen de la Encuesta Nacional de Satisfacción a Usuarios de Servicios Médicos del IMSS (ENSat) 2013. Para el análisis de los datos se utilizó el programa estadístico SPSS y Stata.

Aunque esta herramienta es una aproximación limitada, podría servir como punto de partida para un análisis más serio sobre la necesidad de atención médica en lugares que pueden tener poco acceso a estos servicios. De hecho, este tipo de análisis fue propuesto también por otros equipos participantes del *LabConDatos* enfocando su análisis a temas como la Cruzada contra el Hambre, servicios de peaje en carreteras, subsidios agrícolas y efectividad del Fondo de Desastres Naturales, FONDEN.

*Para la elaboración de la iconografía se utilizo Javascript y la librería D3, el código fuente se puede encontrar [aquí](https://github.com/marianaruiz/-lLabConCatos-IMSS "Código fuente de LabConDatos IMSS").

![Percepción nacional del servicio del IMSS]({{ site.url | append: site.baseurl }}/assets/images/historias/labcondatos-imss/labcondatos-imss_03.jpg)

En este mapa se presenta la ubicación de las UMF en rosa, los círculos verdes muestran el nivel relativo de satisfacción de los usuarios en cada UMF.


![Percepción nacional del servicio del IMSS]({{ site.url | append: site.baseurl }}/assets/images/historias/labcondatos-imss/labcondatos-imss_02.jpg)

En esta imagen se puede observar la ubicación de UMF en el país en un mapa que indica con azul oscuro a los municipios con un índice de marginación alto.
