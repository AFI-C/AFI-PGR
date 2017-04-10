---
published: true
layout: guide

title: Ficha Técnica del Catálogo Institucional de Datos
date: 2015-08-25

permalink: "/guia/manuales-plantillas/miniguia-ficha-tecnica-catalogo.html"
section: inventory
category: inventory
---

#### Introducción

El catálogo de datos permite identificar los datos abiertos de una organización, describirlos, y hacerlos públicos en [datos.gob.mx](http://datos.gob.mx)

#### Objetivos del catálogo  

*	Descriptivo: Capturar los metadatos mínimos requeridos de un conjunto de datos
    * Para mostrar descriptivamente una ficha bibliográfica en el catálogo de datos en [busca.datos.gob.mx](http://busca.datos.gob.mx). [Ver ejemplo](http://data.gov.uk/dataset/statistics_on_obesity_physical_activity_and_diet_england).
*	Extensibilidad: permitir agregar campos adicionales para proveer información adicional al usuario.
*	Heterogeneidad: ser agnóstico de formato (p.ej. XML, RDF, CSV).
*	Recursos: permitir la descripción de archivos contenedores de los datos.
*	Estándar: ser compatible con el estándar DCAT y DCT de metadatos para conjuntos de datos de gobierno.

#### Glosario

**DCAT:** Es un vocabulario diseñado para facilitar la interoperabilidad entre catálogos de datos en la Web, utilizado por data.gov y data.gov.uk (entre otros).

**Catálogo de datos:** Un catálogo contiene conjuntos de datos y recursos/descargables (*distributions*).

**Conjunto de datos:** Colección de datos, publicados o curados por una dependencia, y disponibles para acceso o descarga en uno o más formatos.

#### Escenarios

Hemos identificado una serie de escenarios en diferentes dependencias, sobre la manera en la que se publicarían y presentarían los conjuntos de datos en [datos.gob.mx](http://datos.gob.mx):

1. Los recursos (*distributions*)
    1. Tienen diferentes **formatos**. [Ver ejemplo](http://busca.datos.gob.mx/#/conjuntos/directorio-estadistico-nacional-de-unidades-economicas-denue-por-actividad-economica)
    2. Son **series** de tiempo. [Ver ejemplo](http://busca.datos.gob.mx/#/conjuntos/inventario-coneval-de-programas-y-acciones-federales-de-desarrollo-social)
    3. Son **segmentos** filtrados [Ver ejemplo](http://busca.datos.gob.mx/#/conjuntos/indice-de-rezago-social20002005-y-2010-nacionalestatalmunicipal-y-localidad)
    4. Requieren **diccionario** de datos único
2. Los **resultados de búsqueda se podrían llenar de ruido** enumerando mismos conjuntos de datos con diferentes versiones del conjunto de datos, p. ej. fonden 2011, fonden 2012, fonden 2013; en lugar de simplemente “fonden”, y tener como descargables 2011.csv, 2012.csv y 2013.csv.
3. Para evitar llenar formularios, como lo hizo [data.gov](http://project-open-data.github.io/catalog-generator/) , optamos por usar una tradicional hoja de cálculo [3] que automáticamente se transformará en DCAT.

#### Propuesta

Llenar la hoja de cálculo que sirve de [plantilla]({{ "/docs/catalogo_v3.0.csv" | prepend: site.baseurl }}) para el catálogo de datos, con los metadatos acorde a lo que se presenta a continuación:

Metadatos (descriptores) del conjunto de datos.

<table>
    <tbody>
        <tr>
            <td><strong>ds:identifier</strong></td>
            <td>Identificador único del conjunto de datos. Utilizado para agrupar recursos dentro de un conjunto de datos, p. ej. “rezago-social”, “unidades_medicas”, “adquisiciones”. Utilizar caracteres ASCII (sin acentos).</td>
        </tr>
        <tr>
            <td><strong>ds:title</strong></td>
            <td>Título descriptivo del conjunto de datos, p.ej. “Programa de fomento a la agricultura”, “Vuelos comerciales”.</td>
        </tr>
        <tr>
            <td>
              <a name="ds-description"></a>
              <strong>ds:description</strong>
            </td>
            <td>Una explicación de los datos, con suficiente detalle para que los usuarios puedan entender si es de su interés, p.ej. “Apoyos otorgados a través del programa Opciones Productivas, desglosado a nivel localidad”.</td>
        </tr>
        <tr>
            <td>ds:keyword</td>
            <td>Lista de términos clave separados por coma, que facilitarán al usuario la búsqueda del conjunto de datos. Es importante considerar el uso de términos no técnicos. p.ej. “salud, medicinas, compras, agricultura”.</td>
        </tr>
        <tr>
            <td><strong>ds:modified</strong></td>
            <td>Fecha y hora de la última modificación del conjunto de datos; en formato <a href="http://en.wikipedia.org/wiki/ISO_8601">ISO 8601</a>, p.ej. “2014-05-27T01:42:05-05:00”</td>
        </tr>
        <tr>
            <td>ds:contactPoint</td>
            <td>Nombre de la persona de contacto que atenderá dudas y comentarios sobre el conjunto de datos.</td>
        </tr>
        <tr>
            <td><strong>ds:mbox</strong></td>
            <td>Correo electrónico de contacto para atender dudas y comentarios sobre el conjunto de datos, p.ej. “juan.perez@dependencia.gob.mx”, “datos@presidencia.gob.mx”.</td>
        </tr>
        <tr>
            <td>
              <a name="ds-temporal"></a>
              ds:temporal
            </td>
            <td>La fecha o fechas que cubren los datos, p.ej. “2013”, “2010/2012”, “2014-01/2014-04”. Si es un rango de fechas, deberán ordenarse ascendentemente.</td>
        </tr>
        <tr>
            <td>
              <a name="ds-spatial"></a>
              ds:spatial
            </td>
            <td>El espacio geográfico que cubre el conjunto de datos. Puede ser una región, el nombre de un lugar, una clave INEGI, un polígono o un cuadro delimitador de coordenadas geográficas (bounding box) en <a href="http://en.wikipedia.org/wiki/ISO_8601">GML</a> . P.ej. “Baja California”, 002, <a href="http://www.geonames.org/4017700/baja-california.html">http://www.geonames.org/4017700/baja-california.html</a>, “estatal”, o “32.71,-112.32 27.99, -118.45”.</td>
        </tr>
        <tr>
            <td><strong>ds:landingPage</strong></td>
            <td>Página web que puede ser navegada para acceder a información adicional que complemente el conjunto de datos, como pueden ser diccionario de datos, manuales, entre otros. El equivalente de este campo en la versión 2.0 del catálogo era <i>ds:dataDictionary</i>. A pesar de que estos campos pueden utilizarse con ambas etiquetas, se recomienda migrar al nuevo campo <i>landingPage</i>, ya que su ventaja es que ahora podemos indicar un sitio web con más recursos para el usuario que sólo el simple diccionario de datos.</td>
        </tr>
        <tr>
            <td>ds:accrualPeriodicity</td>
            <td>Frecuencia con la cual el conjunto de datos será publicado o actualizado. Los valores para este campo pueden ser “irregular” o un intervalo de repetición en ISO 8601, p. ej. “R/P1Y”. <a href="#references">Ver referencias 1, 2, 3</a></td>
        </tr>
    </tbody>
</table>

Metadatos (descriptores) del recurso o descargable (distribution)

<table>
    <tbody>
        <tr>
            <td><strong>ds:identifier</strong></td>
            <td>La clave que identifica al conjunto de datos al que pertenece este recurso, p. ej. “rezago-social”, “unidades_médicas”, “adquisiciones”.</td>
        </tr>
        <tr>
            <td><strong>rs:title</strong></td>
            <td>Título descriptivo del recurso o descargable, p.ej. “Otorgamientos del 2013”, “Otorgamientos del 2014”, “Apoyos por municipio”, “Apoyos por localidad”.</td>
        </tr>
        <tr>
            <td>rs:description</td>
            <td><a href="#ds-description">Ver ds:description</a>. Esta explicación es adicional a la que existe en el conjunto de datos. En caso de que se requiera un diccionario de datos adicional (i.e. por recurso) se puede agregar la referencia en este espacio, p. ej. “Índice de rezago social por localidad, utilizando el catálogo de INEGI 2010. El diccionario de datos lo puedes descargar de http://web.coneval.gob.mx/Informes/Pobreza/Datos_abiertos/Pobreza%20por%20entidad%202010_DIC.txt”.</td>
        </tr>
        <tr>
            <td><strong>rs:downloadURL</strong></td>
            <td>Dirección electrónica (enlace) para la descarga del recurso.</td>
        </tr>
        <tr>
            <td>rs:mediaType</td>
            <td>Formato de archivo del recurso a descargar, p. ej. “text/csv”, “application/rss+xml”. <a href="#references">Ver referencia 4.</a></td>
        </tr>
        <tr>
            <td>rs:byteSize</td>
            <td>El tamaño en bytes del recurso o descargable, p. ej. 3145728</td>
        </tr>
        <tr>
            <td>rs:temporal</td>
            <td><a href="#ds-temporal">Ver ds:temporal</a></td>
        </tr>
        <tr>
            <td>rs:spatial</td>
            <td><a href="#ds-spatial">Ver ds:spatial</a></td>
        </tr>
      </tbody>
  </table>

#### Notas
*	En caso de necesitar diccionario de datos por recursos, agregar la liga en su campo *“rs:description”*.
*	El campo *“dct:publisher”* será agregado automáticamente por [datos.gob.mx](http://datos.gob.mx), y corresponde al nombre corto de la dependencia.
*	En lugar de llenar el campo *“dct:license”*, se asume que todo lo publicado bajo [datos.gob.mx](http://datos.gob.mx) está bajo los términos de libre uso del sitio en [datos.gob.mx/libreusomx](http://datos.gob.mx/libreusomx).

#### Trabajo futuro
*	Agregar catálogo para campos [dct:temporal](http://reference.data.gov.uk/doc/quarter/2006-Q1), [dct:spatial](http://www.geonames.org/6695072/european-union.html), [dct:accrualPeriodicity](https://raw.githubusercontent.com/UKGovLD/publishing-statistical-data/master/specs/src/main/vocab/sdmx-code.ttl)

<a name="references"></a>

#### Referencias
1. [“Common Core Metadata Schema”. Project Open Data.](https://project-open-data.cio.gov/schema/)
2. [“Data Catalog Vocabulary (DCAT)”. W3C Recommendation 16 January 2014.](http://www.w3.org/TR/vocab-dcat/)
3. [“Catálogo de Datos v2.0”. DATOS.GOB.MX.](https://docs.google.com/spreadsheets/d/1U78rvFUu79CHMbepv1OyN0LPPXKaLoQrc_p9w4GvxRw/edit#gid=873975871)
4. [“Media Types”. IANA.](http://www.iana.org/assignments/media-types/media-types.xhtml)

#### Relación entre metadatos y datos.gob.mx

En el listado de resultados de búsqueda se presentan los campos de título, descripción y formatos.

![]({{ "/assets/img/ficha_01.png" | prepend: site.baseurl }} "búsqueda")

En la vista de detalle del conjunto de datos se ven los campos principales del conjunto así como los campos de los recursos descargables.

![]({{ "/assets/img/ficha_02.png" | prepend: site.baseurl }} "detalle de conjunto de datos")
