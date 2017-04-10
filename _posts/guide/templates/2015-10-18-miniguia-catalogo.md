---
published: true
layout: guide

title: Recomendaciones para publicación del Catálogo de Datos en datos.gob.mx
date: 2015-10-12

permalink: "/guia/manuales-plantillas/miniguia-catalogo.html"
section: inventory
category: inventory
---

A continuación se presentan las acciones recomendadas para cumplir con el Paso [2.3 Documentar los Conjuntos de Datos de acuerdo al estándar DCAT]({{ "/guia/publica/paso-2-3.html" | prepend: site.baseurl}}) y [2.4 Publicar el Catálogo de Datos Abiertos en datos.gob.mx]({{ "/guia/publica/paso-2-4.html" | prepend: site.baseurl}}) de la Guía de Implementación de la Política de Datos Abiertos.

Es necesario completar los metadatos de los *Conjuntos de Datos* y sus *Recursos de Datos* previo a las fechas de publicación establecidas en el Plan de Apertura. Esto significa que **los Conjuntos y Recursos pueden documentarse en periodos de tiempo diferentes, siempre y cuando se cumplan con las fechas de publicación establecidos por cada Institución.**

Para facilitar la documentación de los *Metadatos* de acuerdo al *DCAT*, **se ha preparado en [ADELA](http://adela.datos.gob.mx) el prellenado de varios de los campos obligatorios de éste estándar**, por lo cual es necesario contar con el acceso a esta plataforma para cumplir con los Pasos [2.3]({{ "/guia/publica/paso-2-3.html" | prepend: site.baseurl}}) y [2.4]({{ "/guia/publica/paso-2-4.html" | prepend: site.baseurl}}) de la Guía. Es importante considerar que la plantilla de Catálogo de Datos puede servir como herramienta para documentar los Conjuntos y Recursos en la Plataforma ADELA.

Para iniciar, es indispensable que el *Administrador de Datos* cuente con las **direcciones públicas únicas (URL) ya verificadas** de los *Recursos de Datos* que serán publicados de acuerdo a las fechas comprometidas en el *Plan de Apertura*, tal como se establece en el Paso [2.2]({{ "/guia/publica/paso-2-2.html" | prepend: site.baseurl}}) de la Guía.


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
            <td><strong>1. Ingresar a ADELA</strong></td>
            <td>
              <p>
                Es necesario ingresar a la Plataforma <a href="http://adela.datos.gob.mx">ADELA</a> para completar los Pasos <a href="{{ "/guia/publica/paso-2-3.html" | prepend: site.baseurl}}">2.3</a> y <a href="{{ "/guia/publica/paso-2-4.html" | prepend: site.baseurl}}">2.4</a> de la Guía, por ello es importante asegurarse contar con las contraseñas correspondientes.
              </p>
              <p>
                Dichas contraseñas se han enviado al <i>Enlace Institucional</i> y al <i>Administrador de Datos</i> de acuerdo al Oficio de Designación recibido por parte de la Institución.
              </p>
              <p>
                De no contar con la contraseña, se puede recuperar ingresando a la opción <a href="http://adela.datos.gob.mx/usuarios/contrasena/new">¿Olvidaste tu contraseña?</a> en la página de ingreso a la Plataforma <a href="http://adela.datos.gob.mx">ADELA</a>.
              </p>
              <p>
                <i>Las contraseñas serán dadas únicamente a los Enlaces Institucionales y Administradores de Datos, sin excepción.</i>
              </p>
              <p><i>Tiempo estimado: 1 min.</i></p>
            </td>
            <td><p>Administrador de Datos</p></td>
        </tr>
        <tr>
            <td><a>Ejemplo de Ingreso a ADELA</a></td>
            <td colspan="2">
              <img src="{{ "/assets/img/guide/ejemplo_ingreso_adela.png" | prepend: site.baseurl }}" alt="Ejemplo de Ingreso a ADELA" />
            </td>
        </tr>
        <tr>
            <td><strong>2. Documentar el Conjunto de Datos</strong></td>
            <td>
              <p>
                De acuerdo al Paso <a href="{{ "/guia/publica/paso-2-3.html" | prepend: site.baseurl}}">2.3</a> de la Guía, se elabora la documentación de Conjuntos de Datos en la sección del Catálogo de Datos.
              </p>
              <p>
                Al ingresar a la Plataforma <a href="http://adela.datos.gob.mx">ADELA</a> se procede de la siguiente manera:
              </p>
              <p>
                  <strong>1. </strong>Seleccionar la sección ‘Catálogo de Datos’, donde se desplegará la pantalla de trabajo con el listado de los <i>Conjuntos de Datos</i> considerados en el <i>Plan de Apertura</i> con el porcentaje de avance de publicación de acuerdo al total de <i>Recursos de Datos</i> publicados, así como la próxima fecha compromiso de publicación.
              </p>
              <p>
                  <strong>2. </strong>Una vez identificado el <i>Conjunto de Datos</i> a documentar, se debe seleccionar la opción de ‘Editar’.
              </p>
              <p>
                  <strong>3. </strong>En la sección superior (correspondiente al <i>Conjunto de Datos</i>), existen 8 descriptores que aparecerán prellenados. <strong>Es importante revisarlos para asegurar que estén correctos.</strong> Para modificar los primeros tres (lado izquierdo) correspondientes a ‘Descripción’, ‘Identificador’ y ‘Frecuencia de Actualización’, es necesario modificarlos desde el <i>Plan de Apertura, es decir, siguiendo las instrucciones del Paso <a href="{{ "/guia/planea/paso-1-4.html" | prepend: site.baseurl}}">1.4</a>.</i>
              </p>
              <p>
                  El resto de los descriptores pueden ser modificados o complementados (de así considerarlo conveniente), de acuerdo a la siguientes conceptos:
              </p>
              <ul>
                <li>
                  <strong>Responsable</strong> -  Se refiere a área responsable de la actualización del Conjunto de Datos. Aparece prellenado con el nombre del <i>Área Generadora</i>.
                </li>
                <li>  
                  <strong>Correo del responsable</strong> - Se refiere al correo institucional del servidor público responsable de actualizar el <i>Conjunto de Datos</i>. Aparece prellenado con el correo del <i>Administrador de Datos</i> de la Institución.
                </li>
                <li>  
                  <strong>URL para consultar el diccionario de datos</strong> - Se refiere a la dirección pública donde se puede consultar información adicional sobre el <i>Conjunto de Datos</i>. Aparece prellenado con la URL de la Institución.
                </li>
                <li>  
                  <strong>Sector</strong> - Se refiere al Sector primario al que pertenece la Institución. Aparece prellenado con una preclasificación generada para <a href="http://datos.gob.mx">datos.gob.mx</a>
                </li>
                <li>  
                  <strong>Palabras clave</strong> (separados por coma) -  Campo opcional para enlistar palabras clave útiles para facilitar la búsqueda del <i>Conjunto de Datos</i>.
                </li>
              </ul>
              <p><i>Tiempo estimado: 5 min. (por Conjunto)</i></p>
            </td>
            <td><p>Administrador de Datos</p></td>
        </tr>
        <tr>
            <td><a>Ejemplo de Catálogo de Datos</a></td>
            <td colspan="2">
              <img src="{{ "/assets/img/guide/ejemplo_catalogo_datos.png" | prepend: site.baseurl }}" alt="Ejemplo de Catálogo de Datos" />
            </td>
        </tr>
        <tr>
            <td><a>Ejemplo de edición de Conjunto de Datos</a></td>
            <td colspan="2">
              <img src="{{ "/assets/img/guide/ejemplo_edicion_conjunto.png" | prepend: site.baseurl }}" alt="Ejemplo de edición de Conjunto de Datos" />
            </td>
        </tr>
        <tr>
            <td><strong>3. Documentar los Recursos de Datos</strong></td>
            <td>
              <p>
                En la sección inferior de la pantalla de trabajo del <i>Conjunto de Datos</i>, se ubican los <i>Recursos de Datos</i> asociados.
              </p>
              <p>
                Para documentar aquellos <i>Recursos de Datos</i> que se van a publicar es necesario realizar el siguiente procedimiento para cada uno de ellos:
              </p>
              <p>
                  <strong>4. </strong>Seleccionar la <strong>acción</strong> de ‘Completar’ para documentar los descriptores o ‘Actualizar’ para modificarlos.
                  </p>
                  <p>
                  <strong>5. </strong>Copiar la dirección pública de acceso <strong>URL</strong> correspondiente al <i>Recurso de Datos</i> particular generada en el Paso <a href="{{ "/guia/publica/paso-2-2.html" | prepend: site.baseurl}}">2.2</a> de la Guía.
                  </p>
                  <p>
                  <strong>6. </strong>Establecer el <strong>periodo de tiempo</strong> que contempla el <i>Recurso de Datos</i> particular (ej. en el caso de un periodo anual sería 2014-01-01/2014-12-31).
                  </p>
                  <p>
                  <strong>7. </strong>Documentar la <strong>última fecha de modificación</strong> de los datos. Normalmente se puede consultar al abrir el archivo en cuestión, en la sección de ‘Propiedades’.
                  </p>
                  <p>
                  <strong>8. </strong>Al culminar la documentación de descriptores, se selecciona la opción de ‘Guardar avance’ para continuar con el siguiente <i>Recurso de Datos</i> o con la publicación del <i>Conjunto de Datos</i>.
                  </p>
              <p><i>Tiempo estimado: 10 min. (por Recurso)</i></p>
            </td>
            <td><p>Administrador de Datos</p></td>
        </tr>
        <tr>
            <td><a>Ejemplo de Recursos del Conjunto de Datos</a></td>
            <td colspan="2">
              <img src="{{ "/assets/img/guide/ejemplo_recursos.png" | prepend: site.baseurl }}" alt="Ejemplo de Recursos del Conjunto de Datos" />
            </td>
        </tr>
        <tr>
            <td><a>Ejemplo de edición de Recurso de Datos</a></td>
            <td colspan="2">
              <img src="{{ "/assets/img/guide/ejemplo_edicion_recursos.png" | prepend: site.baseurl }}" alt="Ejemplo de edición de Recurso de Datos" />
            </td>
        </tr>

        <tr>
            <td><strong>4. Verificar el Catálogo de Datos a publicar</strong></td>
            <td>
              <p>
                Al terminar de documentar los <i>Recursos de Datos</i> del <i>Conjunto de Datos</i> a publicar:
              </p>
              <p>
                  <strong>9. </strong>Se selecciona la opción de ‘Volver al Catálogo’ en la parte inferior de la pantalla (9).
                  </p>
                  <p>
                  <strong>10. </strong>Se selecciona la opción de ‘Publicar’ en la parte inferior de la pantalla (10), donde se desplegará una previsualización de la documentación de los <i>Conjuntos de Datos</i> a publicar.
                  </p>
                  <p>
                  <strong>11. </strong>Es importante revisar en la previsualización si la información es correcta. De ser así, se seleccionan las opciones de ‘Estoy de acuerdo…’ y ‘Confirmo…’ para completar la verificación.
                  </p>
              <p>
                De requerir algún ajuste se selecciona la opción de ‘Volver al catálogo’ para editar los descriptores.
              </p>
              <p><i>Tiempo estimado: 5 min.</i></p>
            </td>
            <td><p>Administrador de Datos</p></td>
        </tr>

        <tr>
            <td><a>Ejemplo de regresar al Catálogo de Datos</a></td>
            <td colspan="2">
              <img src="{{ "/assets/img/guide/ejemplo_regresar_catalogo.png" | prepend: site.baseurl }}" alt="Ejemplo de regresar al Catálogo de Datos" />
            </td>
        </tr>
        <tr>
            <td><a>Ejemplo de publicar Conjunto de Datos</a></td>
            <td colspan="2">
              <img src="{{ "/assets/img/guide/ejemplo_publicar_conjunto.png" | prepend: site.baseurl }}" alt="Ejemplo de publicar Conjunto de Datos" />
            </td>
        </tr>
        <tr>
            <td><a>Ejemplo de Autorización de la publicación</a></td>
            <td colspan="2">
              <img src="{{ "/assets/img/guide/ejemplo_autorizacion_publicacion.png" | prepend: site.baseurl }}" alt="Ejemplo de Autorización de la publicación" />
            </td>
        </tr>

        <tr>
            <td><strong>5. Publicar el Catálogo de Datos</strong></td>
            <td>
              <p>
                Una vez verificado el <i>Catálogo de Datos</i> a publicar, se selecciona el botón de ‘Publicar’.<span style="color:red">En este momento los metadatos del <i>Conjunto de Datos</i> y los <i>Recursos de Datos</i> estarán publicados en</span> <a href="http://datos.gob.mx">datos.gob.mx</a>
              </p>
              <p>
                Ya publicado el Catálogo de Datos, se desplegará un <strong>comprobante</strong> de la actividad realizada, mismo que podrá ser impreso a manera de soporte para futura referencia.
              </p>
              <p>
                <i>Es importante recordar que son únicamente los metadatos (incluyendo la URL) los que se publican en datos.gob.mx, los archivos correspondientes a los Recursos de Datos permanecen en todo momento en el portal de la Institución.</i>
              </p>
              <p><i>Tiempo estimado: 5 min.</i></p>
            </td>
            <td><p>Administrador de Datos</p></td>
        </tr>

        <tr>
            <td><a>Ejemplo de Comprobante de publicación</a></td>
            <td colspan="2">
              <img src="{{ "/assets/img/guide/ejemplo_comprobante.png" | prepend: site.baseurl }}" alt="Ejemplo de Comprobante de publicación" />
            </td>
        </tr>

    </tbody>
</table>

Para cualquier duda o aclaración sobre la creación del acceso público a los datos, escríbenos a [escuadron@datos.gob.mx](mailto:escuadron@datos.gob.mx)
