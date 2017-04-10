---
published: true
layout:   post
featured: false
title:    "Enorgulleciendo a nuestras madres: Reduciendo la mortalidad materna en México"
tagline:  "Reducir la mortalidad materna"
author:   "Nick Eng | DSSG"
date:     2014-07-15 18:09:00 -0500
grid_img:    "historias/enorgulleciendo-a-nuestras-madres/enorgulleciendo-a-nuestras-madres_grid.jpg"
featured_img: "historias/enorgulleciendo-a-nuestras-madres/enorgulleciendo-a-nuestras-madres_featured.jpg"
datasets:
  - mortalidad-materna
  - recursos-en-salud
permalink: /impacto/historias/reduciendo-mortalidad-materna.html
section: impacto
sub_section: casos-de-uso
category: salud
category_title: Salud
tags:
- salud
- mortalidad materna
redirect_from: /enorgullenciendo-a-nuestras-madres-reduciendo-la-mortalidad-materna-en-mexico/
excerpt_separator: <!--more-->
---

A pesar de los avances en cuidados prenatales y postnatales, la mortalidad materna continúa siendo un serio problema de salud alrededor del mundo. De acuerdo a la Organización Mundial para la Salud, 800 mujeres mueren cada día de causas evitables relacionadas al embarazo o al parto, donde el 99% de estas muertes ocurren en países en vías de desarrollo. En 1990, las Naciones Unidades incorporaron a uno de sus ocho Objetivos de Desarrollo del Milenio, la reducción de la mortalidad materna en tres cuartos y desde entonces el número de muertes de este tipo se ha reducido a la mitad.

<!--more-->

Sin embargo algunos países continúan esforzándose para reducir la mortalidad materna. Para cumplir con su ODM, México necesita reducir su Razón de Mortalidad Materna (RMM, se calcula de acuerdo a la OMS como el número de muertes durante el embarazo, o menos de 42 después del parto, entre 10,000 nacimientos vivos) hasta llegar a 22 en el 2015. A cifras de su último estimado en 2012, el indicador se encuentra en 42, casi el doble que el objetivo. Nuestro equipo –yo mismo, Julius Adebayo, Eric Potash, Layla Pournajaf y nuestro mentor Ben Yuhas- está trabajando con la Oficina de la Presidencia y la Secretaria de Salud de México para identificar aquellas causas de muerte materna no identificadas y las posibles soluciones para reducirlas.

México ha avanzado sustancialmente desde la firma de los ODM en 2000; se ha desarrollado el programa Oportunidades para alentar a las familias de bajos recursos a buscar atención médica, han dado acceso de servicios de salud a alrededor de 52.6 millones de personas de escasos recursos a través del Seguro Popular, y han reducido su razón de mortalidad materna en 50% desde 1990.

A pesar de estas mejoras, sus esfuerzos todavía se encuentran lejos del objetivo final. En los últimos 10 años, la RMM de México se ha estancado a pesar de los esfuerzos gubernamentales para reducirla. El siguiente gráfico, adaptado de un documento de investigación de Celia Huber, muestra la brecha entre la RMM deseada y la razón observada desde 1990, en particular el estancamiento entre 2002 y 2010.

![RMM observada vs. objetivo en México]({{ site.url | append: site.baseurl }}/assets/images/MMR-Target-SP-1024x566.png)

Debido a esto, estamos trabajando con la Coordinación de la Estrategia Digital Nacional de la Oficina de la Presidencia de México para limpiar los datos disponibles y entender mejor por qué su razón de mortalidad materna se ha mantenido relativamente estancada en los últimos 10 años. Adicionalmente, estamos intentando entender el problema de la mortalidad materna a un nivel mucho más granular que lo que ha sido estudiado antes.

#### Sobrecarga de información

Las evaluaciones previas y los estudios de la métrica de mortalidad materna han sido elaborados principalmente al nivel estatal. Con la riqueza de información que nos ha sido provista, nos gustaría estudiarlo al nivel municipal, o inclusive al nivel de las localidades. En México existen 32 estados (incluyendo al Distrito Federal), mientras que hay alrededor de 2,500 municipios y más de 192 mil localidades. El entender donde se encuentra la problemática a un nivel potencialmente 6 mil veces más refinado podria habilitar a México a mejor elegir sus objetivos y diseñar intervenciones que salven las vidas de las madres mexicanas.

![RMM: muertes por cada 1,000 mujeres en edad reproductiva]({{ site.url | append: site.baseurl }}/assets/images/MMRate-Map2-SP-1024x593.png)

De hecho es sensacional la cantidad de información que ha sido recopilada para esta problemática. Se nos ha proporcionado acceso a todo tipo de datos que van desde censos hasta información sobre hospitales, de registros de nacimientos, certificados de defunción e inclusive información sobre egresos hospitalarios, anonimizados y con cobertura de por lo menos los últimos 10 años.

Impresionantemente la gran mayoría de estos datos han sido incorporados a la Política Nacional de Datos Abiertos del Gobierno de México y ya han sido publicados en formatos de Datos Abiertos. De hecho la parte más desafiante para nosotros ha sido la gran variedad de información con la que contamos, tenemos tanta información de tantas diferentes fuentes que ha sido difícil elegir por dónde empezar.

¿Examinamos las causas de muerte? ¿La manera en la que diferentes hospitales atienden a diferentes tipos de pacientes? ¿Tratamos de evaluar las tendencias a nivel regional? Aunque este no es un problema malo, el amplio alcance de nuestro proyecto y las grandes avenidas por las cuales podemos viajar con la información que nos fue proporcionada nos han dejando a veces abrumados con las elecciones sobre a dónde dirigirnos.

Otro atributo interesante de nuestros datos es el hecho que los conjuntos de datos son inconexos y difíciles de vincular. Sean los registros de nacimientos, las actas de defunción, los egresos hospitalarios o la información regional, cada conjunto de datos se origina en una agencia gubernamental diferente que trata con un aspecto particular la problemática que buscamos resolver, y la anonimización no nos permite unir registros a través de diferentes conjuntos de datos.

Por esta razón nos ha sido imposible combinar los datos de tal manera que tengamos una vista holística de una madre, su proceso a través del embarazo y si murio o no a causa del mismo. En vez, hemos tenido que analizar cada aspecto en un vacío y ensamblar los hallazgos a través de los conjuntos de datos.

La falta de vistas longitudinales nos constriñe e imposibilita usar algunos acercamientos computacionales o de aprendizaje automático. Muchos de los proyectos del programa *Data Science for Social Good* se tratan de predecir un tipo de resultado versus otro, lo que se llama un problema de clasificación. Los modelos de clasificación pueden ser muy complejos y muy exactos, pero traen consigo una pérdida de interpretabilidad.

En nuestro proyecto, la interpretabilidad de nuestros modelos es la clave, ya que nuestro objetivo no es predecir, si no más bien, entender el funcionamiento del modelo para informar a la política pública. Esta restricción, de hecho, hace a nuestro proyecto más interesante, ya que estamos forzados a tomar un acercamiento más humanístico y ensamblar el rompecabezas de la mortalidad materna en México usando nuestra propia intuición.

#### El rol de la derechohabiencia

Una pieza interesante de este rompecabezas que hemos estado explorando es el rol de los proveedores de seguros de salud. En México, la gran mayoría de las personas cuentan con cobertura médica a través de su empleo (IMSS para empleo privado por ejemplo) o alternativamente a traves la red de cobertura medica del Seguro Popular. Ademas, las instituciones de salud pública están alineadas con un tipo de cobertura de salud. Individuos con un tipo de seguro rara vez asisten a una institución de otra afiliación, a menos de que sea necesario. En caso de hacerlo, y especialmente en el caso del Seguro Popular, las personas que visitan una institución afiliada al empleo (IMSS, ISSSTE, SEDENA, SEMAR, PEMEX) reciben atención frecuentemente con menor prioridad que los derechohabientes de esta institución.

El gráfico siguiente muestra la razón de mortalidad de aquellos individuos que visitan una institución médica afiliada al empleo. El gráfico muestra claramente que la razón de mortalidad de aquellos derechohabientes del Seguro Popular es de prácticamente el doble. Es dificil decir cual es la causa de este fenómeno, los derechohabientes del Seguro Popular tal vez estén recibiendo peor tratamiento de parte de las instituciones médicas asociadas al empleo y no reciban priorización adecuada, o alternativamente estos individuos están asistiendo a dicha institución debido a la urgencia del evento lo cual les genera un riesgo más alto de inicio. Esto es una pista sobre un área en la cual el Gobierno Mexicano podria reformar para mejorar su razón de mortalidad materna.

![Razón de mortalidad en hospitales IMSS, ISSSTE, SEMAR, SEDENA y PEMEX
para derechohabientes de IMSS y SSA]({{ site.url | append: site.baseurl }}/assets/images/Employer-Hospitals-Graph-SP.png)

#### Encontrando los factores de riesgo correctos

A pesar de la situación de nuestros datos, no estamos completamente excluidos de la diversion de usar aprendizaje automático. Mientras que no tenemos la posibilidad de generar un único conjunto de datos longitudinal con el cual implementar modelos de clasificación, podemos aplicar modelos agregados al nivel regional, municipal o de localidad. Al examinar factores económicos, acceso a servicios de salud, urbanidad, y ubicación, usaremos varios modelos para identificar las regiones con mayores riesgos y los indicadores clave relacionados.

Pronto estaremos utilizando árboles de decision, *random forests*, modelos de regresiones logísticas, modelos Poisson de regresión y modelos jerárquicos, en distintas capacidades. Mientras que en este momento aún estamos en las fases preliminares, estos emocionados con los hallazgos que los modelos pueden ofrecer y estamos impacientes de empezar este siguiente paso y de compartir hallazgos interesantes pronto.

#### Sobre el programa _Ciencia de datos para el bien público:_

La beca universitaria *Eric & Wendy Schmidt Data Science for Social Good* es un programa de verano de la Universidad de Chicago para que aspirantes a científicos de datos trabajen en minería de datos, aprendizaje automático, *big data* y proyectos de ciencia de datos con un impacto social.

Trabajando de manera de cercana con gobiernos y organizaciones sin fines de lucro, los becarios atacan problemas reales en temas como educación, salud, energía, transporte y más.

Durante tres meses en Chicago ellos aplican su conocimiento en sistemas de cómputo y sus habilidades de análisis, colaboran en un ambiente intenso, y aprenden de sus mentores de la industria y la academia.


![Equipo de DSSG]({{ site.url | append: site.baseurl }}/assets/images/dssg-team.png)
