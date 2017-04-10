---
published: true
layout:   post
featured: false
title:    "INEGI Fácil: información estadística y geográfica para todos"

tagline:  "Mejorar la manera en que accedemos información oficial"
author:   "Boris Cuapio Morales | INEGI fácil"
date:     2014-07-15 12:09:00 -0500
grid_img:    "historias/inegi-facil/inegi-facil_grid.jpg"
featured_img: "historias/inegi-facil/inegi-facil_featured.jpg"
datasets:
  - imagen-satelital-de-nubosidad
  - infraestructura-carretera
  - proyecciones-de-la-poblacion-de-mexico
  - recursos-en-salud
external_datasets:
  -
    title: "INEGI, Información Estadística"
    url: http://www.inegi.org.mx/inegi/contenidos/serviciosweb/infoestadistica.aspx
  -
    title: "INEGI, Información Geográfica"
    url: http://www.inegi.org.mx/inegi/contenidos/serviciosWEB/infogeografica.aspx
collaborators:
  - inegi_facil

permalink: /impacto/historias/inegi-facil.html
section: impacto
sub_section: casos-de-uso
category: infraestructura
category_title: Infraestructura
tags:
  - Geografía
  - Indicadores
  - INEGI
  - INEGI Fácil
  - Mapas
redirect_from: /inegi-facil/
excerpt_separator: <!--more-->
---

La semana pasada, INEGI fácil cumplió dos meses de su “relanzamiento” y ocho meses de su estreno en línea. Es un proyecto que está aprendiendo a caminar.

<!--more-->

La dinámica del sitio es sencilla: mediante un filtro de palabras clave o la selección directa de un indicador (y la ubicación), se hace una petición al sitio del INEGI; si la información requerida está disponible, se genera una tabla, una gráfica y algunas opciones para compartir la información. También es posible hacer esto con algunos de los mapas. Además, en el sitio compartimos herramientas para que los datos del INEGI puedan ser usados en nuevos sitios, nuevas aplicaciones, nuevas versiones de INEGI fácil. ¡Echamos la casa por la ventana!

#### El inicio

Una idea puede tener varias fuentes de inspiración, pero su ejecución es casi siempre por necesidad: después de dos meses sin concretar un nuevo proyecto para trabajar, surgió la idea de crear un “navegador” para la información del CENSO del 2010. No había nada mejor que hacer, y por lo menos de portafolio nos iba a servir. (O para buscar trabajo; para recibir nuevos proyectos; para inscribir la aplicación en algún concurso; para no perder práctica; para aprender un poco más.)

La fuentes originales de INEGI fácil fueron un par de bases de datos: el Censo de población del 2010 y la lista de códigos postales de México. De estas dos, la más interesante era la del Censo: tenía la población para más de cien mil localidades, sus coordenadas, su clave (estándar) de estado, municipio y localidad, y otros datos. Esto fue clave para descifrar el funcionamiento de los servicios web del INEGI.

[![Sitio INEGI]({{ site.url | append: site.baseurl }}/assets/images/historias/inegi-facil/Screen-Shot-2014-07-03-at-5.54.57-PM-1024x691.png)](http://inegifacil.com/)

#### El código

La base tecnológica del sitio es muy sencilla: PHP, MySQL, Javascript, GitHub; Codeigniter, Backbone, Require, Google maps, Sass. La biblioteca con la que limpiamos la información del INEGI está disponible en GitHub. También incluímos un servicio RESTful que sirve para hacer consultas sin necesidad de un servidor. Pronto estará todo el código del sitio disponible. Se trata de hacerle la vida fácil a todos.

#### La utilidad

Una vez que pasó de ejercicio técnico a una aplicación hecha y derecha, pensamos que los usuarios a quienes iba dedicada eran estudiantes de secundaria, preparatoria y universidad, para tareas y tesis. También para ciudadanos curiosos.
Hemos escuchado casos de algunas escuelas que ya ocupan INEGI fácil para algunas de sus clases. Una aplicación llamada habita.la (que pertenece a Hugo Osorio, cofundador de INEGI fácil), usa una librería del sitio para enriquecer sus anuncios. Hemos tenido buenos comentarios en Twitter, y un montón de recomendaciones para mejorar, para desarrollar cosas de utilidad para académicos y empresarios. Me parece que ese es el siguiente paso.
