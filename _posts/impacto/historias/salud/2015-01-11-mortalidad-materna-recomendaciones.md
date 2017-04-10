---
layout:   post
featured: false
featured_tagline: 'Datos Abiertos para:'
title:    "Datos Abiertos para prevenir la Mortalidad Materna: Recomendaciones"
author:   "Nick Eng | DSSG"
date:     2015-01-13 13:09:00 -0500
grid_img:    "historias/mortalidad-materna-recomendaciones/mortalidad-materna-recomendaciones_grid.jpg"
featured_img: "historias/mortalidad-materna-recomendaciones/mortalidad-materna-recomendaciones_featured.jpg"
datasets:
  - mortalidad-materna
  - recursos-en-salud
external_datasets:
  -
    title: "Defunciones Generales"
    url: http://www.dgis.salud.gob.mx/contenidos/basesdedatos/std_defunciones.html
collaborators:
  - secretaria_salud
permalink: /impacto/historias/mortalidad-materna.html
section: impacto
sub_section: casos-de-uso
category: salud
category_title: Salud
tags:
- salud
- mortalidad materna
redirect_from: /mortalidad-materna-recomendaciones/
published: true
excerpt_separator: <!--more-->
---


[Anteriormente, escribimos](http://datos.gob.mx/historias/salud/reduciendo-mortalidad-materna.html) sobre el problema que enfrenta México en términos de mortalidad materna. En el año 2000, Méxicoo se unió, junto con multiples paises miembros de la ONU, al compromiso the reducir la mortalidad materna en dos tercios para el año 2015, de esta manera colocando la reducción de la mortalidad materna como una iniciativa de alta prioridad para el país. Sin embargo, en los últimos 10 años, la tasa de mortalidad materna en el país se ha mantenido relativamente estancada a pesar de la aplicación de diversas iniciativas como el Seguro Popular y el programa de inclusión social Oportunidades (ahora Prospera).

<!--more-->

Por esta razón la Oficina de la Presidencia de la República, en alianza con la Secretaría de Salud, pidió a *Data Science for Social Good Fellowship* de la Universidad Chicago ayudar a encontrar nuevas estrategias que podrían reducir la mortalidad materna que trabajen de la mano con las políticas públicas que están siendo implementadas en el presente para reducir esta problemática.


En esta entrada vamos a entrar al proceso de desarrollo de recomendaciones que finalmente enviamos a México, en particular haciendo énfasis en cómo éstas serán tomadas en cuenta por nuestros socios en la Oficina de la Presidencia de la República en México.


##El trabajo de limpieza

**Al principio del programa recibimos de parte de la Secretaría de Salud una serie de datos, incluyendo los registros de nacimiento y defunción, registros de altas de pacientes, información de todas las clínicas de salud, e información censal**, todo con información desde al menos 1990. Teníamos mucha información para trabajar. Sin embargo, convertir toda esta información en algo útil siempre es un reto interesante para los científicos de datos.

[Un articulo](http://www.nytimes.com/2014/08/18/technology/for-big-data-scientists-hurdle-to-insights-is-janitor-work.html) en el *New York Times* del año pasado describio al trabajo de limipieza como el principal obstaculo para el trabajo de los cientificos de datos. Podemos corroborar esto con toda nuestra experiencia usando datos. En el caso de este proyecto la problemática no fue terrible, sin embargo si se requirió una cantidad considerable de trabajo preliminar para poner los datos en formatos útiles para nuestros propósitos.

Los datos que recibimos, alrededor de 400, venían en una variedad de formatos diferentes: bases de datos de Microsoft Access, Excel y CSV. Así que había un poco de secuencias de comandos iniciales involucrados sólo para convertir y cargar todo en una base de datos. A partir de ahí teníamos que escribir *scripts* adicionales para limpiar los datos y cosas como fechas mal codificadas. Además para una misma base de datos un valor exactamente igual podía significar cosas completamente diferentes de un año a otro, lo cual representa serios problemas para el análisis que se haría más adelante.

**Sólo este paso inicial de limpieza y transformación representa valor para México**, ya que resultó que nunca se había creado un conjunto de datos único consolidado y limpio sobre mortalidad materna que incluye tanto las muertes como características municipales y sociodemográficas de los municipios.



![Tabla de modelado de Municipio]({{ site.url | append: site.baseurl }}/assets/images/historias/mortalidad-materna-recomendaciones/mortalidad-materna-recomendaciones_01.png)

##¿Y ahora qué?

Después de desarrollar esta base de datos, podíamos ya formar una visión integral de la información, identificar las fortalezas y debilidades, y ver el potencial de lo que se podía realizar con ella. Este proceso de exploración ha sido ya referenciado en nuestra entrada anterior. Queríamos generar hipótesis, tales como estudiar el impacto de los diferentes esquemas de seguridad social (por ejemplo Seguro Popular v.s. IMSS) en los índices de mortalidad, y luego generar diversos cortes de los datos para ponerlos a prueba.

**Nuestro enfoque para juntar todos estos datos y encontrar algo significativo se basó en desarrollar un modelo estadístico que predice la mortalidad materna**, y posteriormente examinar el modelo y sus variables para comprender mejor los principales factores que contribuyen a, o se correlacionan, con el resultado.
En teoría, este modelo podría decirnos que una madre de una zona pobre tiene X veces más probabilidades de sufrir una muerte materna que una madre de una zona rica, o que ser pobre es Y veces más importante que ser analfabeta. Sin embargo, nos dimos cuenta que este nivel de detalle requeriría un conjunto de datos a nivel individual de las madres en México, lo que la falta de identificadores entre nuestros conjuntos de datos hizo imposible realizar.  

Por esta razón, **modificamos nuestro enfoque inicial y desarrollamos un modelo de tasas de mortalidad a nivel municipio**. En lugar de utilizar los atributos de un madre para determinar su probabilidad de muerte materna, usamos los atributos del municipio (como qué porcentaje de la población habla una lengua indígena, o el porcentaje de acceso a los bienes públicos, etc.) para modelar las tasas de mortalidad para las madres en esa zona.


##Desarrollando la tubería

Aunque teóricamente este enfoque era bueno también planteaba una serie de retos. Por ejemplo, algunos municipios rurales podrían ser muy pequeños y durante el periodo de cuatro años que utilizamos para los datos (cuando la tasa de mortalidad parecía más estable y sin cambios por diversas iniciativas implementadas) podrían no haberse observado muertes maternas en ese lugar. Por lo tanto aquellos municipios que parecían que tenían una razón de mortalidad materna de 0 en realidad no eran áreas que fuera libres de riesgo. Asimismo, en los municipios pequeños, una sola muerte materna podría alcanzar el nivel más alto de la tasa de mortalidad ya que la población era pequeña y el número de nacimientos era alto.

¿Cómo aseguramos de que esos factores no afectarán nuestro modelo? ¿Nos fijamos únicamente en los municipios con un cierto tamaño de la población? ¿O en aquellos con al menos una muerte? ¿No deberíamos modelar la razón de mortalidad materna, sino una característica específica como por ejemplo, si una muerte materna ocurrió, o si la razón estaba por encima de un cierto valor?

Por otra parte, llegamos a otras preguntas críticas. ¿Deberíamos de pesar el modelo a partir de la población de los municipios? Esto podría restar importancia a los pequeños municipios donde el problema es grave, pero podría ser más representativo del país en su conjunto. Además, ¿cómo debemos tratar con variables correlacionadas o factores que no son independientes pero están relacionados de alguna manera? Estas variables representan un problema para algunas técnicas de modelado, y hay varias formas de mitigar los efectos adversos de su impacto. Sin buenas respuestas a cualquiera de estas preguntas, hemos decidido que la ciencia de datos resuelva las preguntas por nosotros.

Desarrollamos una tubería para nuestro análisis en el que se ejecutan todas las diferentes variables y posibilidades y generando un reporte para cada una de ellas. Esta tubería también genera diferentes modelos de cada variable, ya sea de regresión logística, árbol de decisión, o bosque al azar, para ver cuál se ajusta mejor a los datos y considera si existen variables con igualdad de importancia y diferente enfoque. A partir de ahí, podríamos mirar las variables importantes producto de cada variación y entender cuáles son consistentes, cuáles no y finalmente, elaborar una lista de 5 a 10 factores clave que podríamos considerar para formular recomendaciones para el desarrollo de  políticas públicas.


![Reducción de Factores Clave]({{ site.url | append: site.baseurl }}/assets/images/historias/mortalidad-materna-recomendaciones/mortalidad-materna-recomendaciones_03.png)



##Resultados

*Finalmente llegamos a varias recomendaciones para que México reduzca la mortalidad materna, sobre todo en la intersección de los servicios de salud y la pobreza.*


Las mas promisorias avenidas de investigación que encontró nuestro análisis fueron: 1) Aumentar la atención prenatal a las poblaciones marginadas, potencialmente a través de la creación de un programa de incentivos para fomentar las visitas prenatales aun más de lo que ocurre hoy en día. 2) Investigar los casos de cesárea en los hospitales de la Secretaría de Salud, ya que se observaron mucho más altas las tasas de mortalidad materna en estos hospitales que en aquellos de otro tipo de coberturas de seguridad social, y 3) Investigar tratamientos diferenciales en los hospitales en función del tipo de seguro (como	detallamos en nuestra entrada anterior).

Para 1), se encontró que las consultas prenatales tienen una fuerte relación inversa con la mortalidad materna incluso después de controlar la pobreza de una región. Las condiciones relacionadas con la falta de atención prenatal, tales como la eclampsia, representan algunas de las causas más frecuentes de muerte materna en México e indican que el aumento de las consultas prenatales y el comienzo oportuno de estas puede mitigar algunas de las mayores causas de muerte. Determinamos que incentivar a las madres a buscar cuidado prenatal temprano y con frecuencia podría tener efectos positivos en la reducción de la mortalidad materna.

De hecho, ya existen este tipo de programas de incentivos para ciertas poblaciones, madres aseguradas, por ejemplo aquellas derechohabientes del IMSS reciben prestaciones de maternidad sólo si cumplen con ciertos requisitos prenatales. Como resultado, un 15-20% más madres aseguradas por el IMSS reciben atención prenatal en el primer trimestre frente a la población que cuenta con Seguro Popular, y en promedio realizan 2 visitas prenatales más durante el transcurso de su embarazo. Tal programa de incentivos también tendría un impacto mucho mayor en poblaciones muy pobres que son 30% menos propensas a recibir atención prenatal en el primer trimestre y realizan en promedio solamente 2 consultas prenatales durante un embarazo.

Para los puntos 2 y 3, encontramos que, dada la misma población, las madres que dan a luz por cesárea en los hospitales de la Secretaría de Salud tienen una razón de mortalidad mucho más alta que los que están en los hospitales del Sector Salud. Además, las madres del Seguro Popular que asisten los hospitales del Sector Salud (y por lo tanto tienen un desfase de seguros) tienen mucho más alta razón de mortalidad que aquellos que sí son beneficiarios, dada la misma población.

**Si bien no hemos podido determinar la causa exacta de estas relaciones a partir de los datos, alentamos al gobierno mexicano a investigar más a fondo estos efectos, ya que puede haber cambios operacionales que podrían reducir el número de estas muertes.**




![Accesibilidad, Secciones de Cesárea, Cuidado prenatal]({{ site.url | append: site.baseurl }}/assets/images/historias/mortalidad-materna-recomendaciones/mortalidad-materna-recomendaciones_02.png)

##Impacto

Una de nuestras recomendaciones ha ganado algo de tracción. Nuestros hallazgos acerca de la importancia de la atención prenatal puso en acción una iniciativa entre México y el UNICEF para proporcionar teléfonos móviles y enviar mensajes de texto a las madres en riesgo para animarlas a buscar atención prenatal. Además de aumentar la atención prenatal a través del programa, México espera recopilar también información adicional sobre las madres en riesgo, tales como la fecha y la calidad de sus visitas prenatales y la identificación de qué tipos de madres son más sensibles a qué tipos de intervenciones. Esta información impulsa nuevas iniciativas que permitan reducir aún más la mortalidad materna es de esperar en el país.



##Reflexión

Este verano nuestro equipo asumió un problema verdaderamente interesante y con alto potencial de impacto para ayudar a México a encontrar nuevas formas de reducir la mortalidad materna. Para nosotros, trabajar en un problema con un amplio alcance y con un objetivo tan significativo fue algo que nunca habíamos hecho antes. Todo fue muy rápido, ya que no sólo teníamos que apurarnos con los datos, sino también con temas relacionados con la mortalidad materna en países en desarrollo, especialmente en el contexto de México. Y, afortunadamente, con estos datos hemos sido capaces de generar acciones concretas los resultados que han dado lugar a iniciativas de verdad. El programa fue una experiencia increíble en la que disfrutamos hacer trabajo de alto impacto y aprendimos mucho.
