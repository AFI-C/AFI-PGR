---
published: true
layout: guide

title: Recomendaciones para crear el acceso público a los Conjuntos de Datos
date: 2015-10-12

permalink: "/guia/manuales-plantillas/miniguia-acceso-publico-conjuntos.html"
section: inventory
category: inventory
---

A continuación se presentan las acciones recomendadas para cumplir con el Paso [2.1]({{ "/guia/planea/paso-2-1.html" | prepend: site.baseurl}}) y [2.2]({{ "/guia/planea/paso-2-2.html" | prepend: site.baseurl}}) de la Guía de Implementación de la Política de Datos Abiertos, referentes a *Preparar los Conjuntos de Datos y Publicar los datos en la página institucional*.

Previo a la publicación de los *Conjuntos y Recursos*, es necesario transformar los *Recursos de Datos* en *Formatos Abiertos*, y hacerlos disponibles en los sitios de cada institución, a manera que puedan ser referenciados en [datos.gob.mx](http://datos.gob.mx) al momento de la publicación.

Es importante recordar que únicamente la descripción de los datos (metadatos) y las ligas a los archivos descargables serán publicados en [datos.gob.mx](http://datos.gob.mx), de manera que **los Conjuntos y Recursos de Datos permanecen en todo momento almacenados y bajo el resguardo de cada Institución**.

Para iniciar, es indispensable que el *Administrador de Datos* tenga los archivos de todos los *Conjuntos* y *Recursos de Datos* que serán publicados de acuerdo a las fechas comprometidas en el *Plan de Apertura*.

#### Estrategia de apoyo y acompañamiento

<div class="video">
    <iframe src="https://docs.google.com/presentation/embed?id=1uZHto5LDKIjS2LDBYeb9xIiJQ14kGzr4ndCmx7V2zow&amp;start=false&amp;loop=false"></iframe>
</div>

<table>
    <thead>
        <tr>
            <th>Paso</th>
            <th>Método</th>
            <th>Responsable</th>
        </tr>
    </thead>
    <tbody>

        <tr>
            <td><strong>1. Revisar el <i>Plan de Apertura</i></strong></td>
            <td>
              <p>
                Es recomendable que el <i>Administrador de Datos</i> revise las fechas compromiso del <i>Plan de Apertura Institucional</i> y las frecuencias de actualización de los <i>Conjuntos de Datos</i>, de manera que se realice la integración, revisión y transformación de los <i>Recursos de Datos</i> correspondientes en tiempo y forma, considerando también el tiempo necesario para crear los accesos públicos a estos.
              </p>
              <p><i>Tiempo estimado: 15 min.</i></p>
            </td>
            <td><p>Administrador de Datos</p></td>
        </tr>
        <tr>
            <td><strong>2. Verificar la comprensibilidad y consistencia de los Recursos de Datos</strong></td>
            <td>
              <p>
                Para asegurar el uso adecuado del <i>Recurso de Datos</i> por parte del usuario, es recomendable verificar su calidad previo a su publicación. En particular:
              </p>
              <ul>
                <li>
                  Hacer <strong>entendibles</strong> los datos a los usuarios, tal como describir claramente los títulos de renglones, columnas, capas, secciones o entidades. Se recomienda crear un diccionario de datos para cada <i>Conjunto de Datos</i>.
                </li>
                <li>
                  Incluir la mayor <strong>desagregación</strong> espacial y/o temporal posible de los datos o trazos, así como mantener el mismo periodo temporal o unidades espaciales en cada uno de los <i>Recursos de Datos</i>.
                </li>
                <li>
                  Asegurar la <strong>consistencia</strong> de los datos, verificando su correcta sintaxis, uniformidad en formatos, evitar campos vacíos o nulos, duplicidad o redundancia en datos en un mismo <i>Recurso</i>, así como evitar utilizar formatos de porcentaje, monetarios, separación por comas, etc.
                </li>
                <li>
                  Asegurar la <strong>normalización</strong> de los datos, tal como apegarse a catálogos nacionales o mejores prácticas en la materia para la sintaxis o asociación de los datos, (ej. Marco Geoestadístico Nacional para entidades federativas, ISO 8601 para fechas y horas, etc.)
                </li>
                <li>  
                  Es altamente recomendable que el <i>Responsable de Datos</i> mantenga una <strong>bitácora técnica</strong> de las operaciones realizadas sobre el <i>Recursos de Datos</i> ya que puede ser necesaria al realizar una actualización.
                </li>
              </ul>
              <p><i>Tiempo estimado: 1h (por Recurso)</i></p>
            </td>
            <td><p>Área Generadora</p></td>
        </tr>

        <tr>
            <td><strong>3. Asegurar la interoperabilidad y legibilidad de los Recursos de Datos</strong></td>
            <td>
              <p>
                Ya que la legibilidad por máquina es una de las premisas de los <i>Datos Abiertos</i>, es importante asegurarse de que los <i>Recursos de Datos</i> puedan ser interpretados adecuadamente. Para ello, recomendamos:
              </p>
              <ul>
                <li>
                  Promover la <strong>interoperabilidad</strong>, al evitar que caracteres cambien al abrir los archivos en otras plataformas (ej. letras con acentos, letra ñ). Para ello se requiere usar sólo caracteres dentro del rango <i>ASCII</i> y utilizar la codificación universal <i>UTF-8</i> en los <i>Recursos de Datos</i>, incluyendo aquellos de carácter geográfico.
                </li>
                <li>
                  Habilitar la <strong>legibilidad</strong> por máquina. En el caso de datos tabulares, se asegura usando únicamente el primer renglón y/o columna para títulos y el resto de la tabla para datos, evitando incluir más de una pestaña en el archivo, unir celdas, insertar imágenes, agregar formatos, etc. La misma recomendación aplica para textos, particularmente el evitar insertar tablas e imágenes. En el caso de datos geográficos, asegurar que se incluyen los archivos necesarios (ej. SHP, SHX y DBF) para cada <i>Recurso</i> de manera que pueda ser interpretado adecuadamente.
                </li>
              </ul>
              <p>
                Es altamente recomendable que el <i>Responsable de Datos</i> mantenga una <strong>bitácora técnica</strong> de las operaciones realizadas sobre el <i>Recurso de Datos</i> ya que puede ser necesaria al realizar una actualización.
              </p>
              <p>
                Si existen dudas sobre la legibilidad por máquina o la aplicación de la codificación universal UTF-8, escríbenos a <a href="mailto:escuadron@datos.gob.mx">escuadron@datos.gob.mx</a>
              </p>
              <p><i>Tiempo estimado: 15 min. (por Recurso)</i></p>
            </td>
            <td><p>Área Generadora</p></td>
        </tr>
        <tr>
            <td><a>Ejemplo de Legibilidad por Máquina</a></td>
            <td colspan="2">
              <img src="{{ "/assets/img/guide/ejemplo_legibilidad_maquina.png" | prepend: site.baseurl }}" alt="Ejemplo de Legibilidad por Máquina" />
            </td>
        </tr>

        <tr>
            <td><strong>4. Transformar los Recursos de Datos</strong></td>
            <td>
              <p>
                Una vez asegurada la calidad y legibilidad de los <i>Recursos de Datos</i>, estos deben transformarse a <i>Formatos Abiertos</i>:
              </p>
              <ul>
                <li>
                Para datos <strong>tabulares</strong> el estándar de apertura del <i>Recurso de Datos</i> es <strong>CSV</strong>, se pueden publicar como <i>Recursos</i> adicionales otros formatos comunes como JSON, XLS, DBF o servicio de datos (webservice), si la actualización es frecuente.
                </li>
                <li>
                Para capas <strong>geográficas</strong> el estándar de apertura del <i>Recurso de Datos</i> es <strong>SHP</strong>, también se pueden publicar como <i>Recursos</i> adicionales GeoJSON, KML o servicios de mapas (webmap service) si la actualización es más frecuente.
                </li>
                <li>
                Para <strong>documentos</strong>, el estándar de apertura del <i>Recurso de Datos</i> es <strong>TXT</strong>, adicionalmente se pueden publicar otros <i>Recursos</i> en HTML, DOC, PDF o cuando son varios documentos, como un servicio de síntesis (feed).
                </li>
              </ul>
              <p>
                Es importante considerar que existen formatos más adecuados dependiendo del contenido y frecuencia de actualización del <i>Recurso de Datos</i>, si existe alguna duda sobre cuál o cuales formatos son adecuados o sobre conversiones a formatos estándares para la apertura, escríbenos a <a href="mailto:escuadron@datos.gob.mx">escuadron@datos.gob.mx</a>
              </p>
              <p><i>Tiempo estimado: 15 min. (por Recurso)</i></p>
            </td>
            <td><p>Área Generadora, Administrador de Datos</p></td>
        </tr>

        <tr>
            <td><a>Ejemplo de conversión de XLS a CSV</a></td>
            <td colspan="2">
              <img src="{{ "/assets/img/guide/ejemplo_conversion_xls_csv.png" | prepend: site.baseurl }}" alt="Ejemplo de conversión de XLS a CSV" />
            </td>
        </tr>

        <tr>
            <td><strong>5. Habilitar el almacenamiento de los Recursos de Datos</strong></td>
            <td>
              <p>
                Para asegurar el acceso público, los <i>Recursos de Datos</i> deben almacenarse en un servidor con salida a Internet y una estructura de archivos configurada como pública.<strong>*</strong> Para ello, hemos identificado dos alternativas:
              </p>
              <ul>
                <li>
                Tal como se establece en el Acuerdo<strong>**</strong> publicado el 8 de mayo de 2014 en materia de tecnologías de información, y considerando que son datos públicos y de acceso constante, es muy recomendable el almacenamiento de los <i>Recursos de Datos</i> en la <strong>nube</strong>. Actualmente, existen diversos servicios disponibles en el mercado para este fin.
                </li>
                <li>
                Otra alternativa es el almacenamiento en el <strong>site</strong> de la Institución en un servidor con acceso a Internet (en la DMZ). En este caso, es muy importante asegurar condiciones de <strong>alta disponibilidad</strong> y seguridad, para evitar la saturación, demora o negación en la descarga de los <i>Recursos de Datos</i>, así como accesos no autorizados a la red de la Institución.
                </li>
              </ul>
              <p>
              Si existen dudas sobre la arquitectura tecnológica adecuada para la Institución o sobre la definición de las especificaciones técnicas recomendadas para la nube o la infraestructura requerida para el site, nos pueden escribir a <a href="mailto:escuadron@datos.gob.mx">escuadron@datos.gob.mx</a>
              </p>
              <p>
              <strong>*</strong> En el caso de ‘servicios de datos’, las configuraciones y requerimientos técnicos pueden variar.
              </p>
              <p>
              <strong>**</strong> DOF, 2014-05-08: ACUERDO que tiene por objeto emitir las políticas y disposiciones para la Estrategia Digital Nacional, en materia de tecnologías de la información y comunicaciones, y en la de seguridad de la información, así como establecer el Manual Administrativo de Aplicación General en dichas materias.
              </p>
              <p><i>Tiempo estimado: 1h</i></p>
            </td>
            <td><p>Administrador de Datos</p></td>
        </tr>

        <tr>
            <td><strong>6. Almacenar los Recursos de Datos</strong></td>
            <td>
              <p>
              Al crear la estructura de archivos para almacenar los <i>Recursos de Datos</i> tanto de la Institución (como de Órganos
              Desconcentrados, de ser el caso), se recomienda:
              </p>
              <ul>
                <li>
                  Almacenar todos los archivos en un solo lugar (por ejemplo en un solo servidor).
                </li>
                <li>
                  Mantener una estructura ordenada de carpetas.
                </li>
                <li>
                  Nombrar con claridad los archivos, tomando en cuenta que cada actualización al Recurso de Datos deberá ser un reemplazo del archivo con el mismo nombre.
                  </li>
                </ul>
              <p><i>Tiempo estimado: 1h</i></p>
            </td>
            <td><p>Administrador de Datos</p></td>
        </tr>

        <tr>
          <td><strong>7. Crear el acceso público a los Recursos de Datos</strong></td>
          <td>
            <p>
              Una vez almacenados los <i>Recursos de Datos</i> de forma adecuada, es necesario generar una <strong>dirección pública única</strong> (URL) para localizar cada uno de estos.
            </p>
            <p>
              Normalmente la URL comienza con el dominio de la Institución y sigue la estructura de archivos establecida, concluyendo con el nombre asignado al archivo del <i>Recurso de Datos</i> en cuestión.
            </p>
            <p>
            Cuando la Institución cuenta ya con varias direcciones públicas, es una buena práctica enlistar todas las URL en materia de <i>Datos Abiertos</i> en una sola página dentro del dominio de la Institución. Hemos identificado tres formas comunes utilizadas por diversas Instituciones:
            </p>
            <ul>
              <li>
                Como una <strong>página independiente</strong> dentro del dominio de la Institución.
                </li>
                <li>
                Como una <strong>liga desde el menú principal</strong> de la página Institucional denominada ‘Datos Abiertos’.
                </li>
                <li>
                Como un apartado de ‘Datos Abiertos’ en la <strong>sección de Transparencia Focalizada</strong>.
                </li>
              </ul>
            <p><i>Tiempo estimado: 6h</i></p>
          </td>
          <td><p><i>Administrador de Datos</i></p></td>
        </tr>

        <tr>
            <td><a>Ejemplo de página Institucional con Datos Abiertos</a></td>
            <td colspan="2">
              <img src="{{ "/assets/img/guide/ejemplo_pagina_con_datos_abiertos.png" | prepend: site.baseurl }}" alt="Ejemplo de página Institucional con Datos Abiertos" />
            </td>
        </tr>

        <tr>
          <td><a>Dudas comunes sobre acceso público a los datos abiertos</a></td>
          <td colspan="2">
            <p>
            A continuación se presentan algunas de las dudas más comunes sobre el acceso público a los Datos Abiertos:
            </p>
            <ul>
              <li>
              <strong>Uso de FTP.</strong> Accesos tales como FTP <strong>no son recomendables</strong>, ya que para mantener la seguridad de la red de la Institución, estos requieren contraseña, limitando así su acceso público.
              </li>
              <li>
              <strong>Micrositios.</strong> Micrositios con información pública estadística, geográfica, imágenes o documentos de la Institución no mantienen una estructura estándar para la legibilidad por máquina, por lo que <strong>no son considerados como Datos Abiertos</strong>.
              </li>
              <li>
              <strong>BI y visores geográficos.</strong> En el caso del uso de plataformas de Procesamiento Analítico en Línea (como Business Intelligence) o Visores Geográficos, aún cuando permitan la descarga de archivos en formatos abiertos, éstos <strong>no califican como Datos Abiertos</strong> ya que requieren de interacción humana para generar la consulta.
              </li>
            </ul>
          </td>
        </tr>

        <tr>
          <td><strong>8. Realizar pruebas de acceso </strong></td>
          <td>
            <p>
              Para finalizar, es altamente recomendable hacer <strong>pruebas de descarga</strong> de los <i>Recursos de Datos</i> desde dispositivos <strong>fuera de la red local</strong> de la Institución ya que en ocasiones, mecanismos de seguridad de la misma Institución llegan a interferir con el acceso desde Internet.
            </p>
            <p>
            <strong>Es importante recordar que el Recurso de Datos debe descargarse automáticamente al seleccionar la URL.</strong>
            </p>
            <p><i>Tiempo estimado: 10 min.</i></p>
          </td>
          <td><p><i>Administrador de Datos</i></p></td>
        </tr>
    </tbody>
</table>

Para cualquier duda o aclaración sobre la creación del acceso público a los datos, escríbenos a [escuadron@datos.gob.mx](mailto:escuadron@datos.gob.mx)
