---
published: true
layout: guide

title: Inventario Institucional de Datos
date: 2015-07-06

permalink: "/guia/manuales-plantillas/miniguia-inventario-institucional-datos.html"
section: inventory
category: inventory
---

El *Administrador de Datos* debe solicitar formalmente a cada *Área Generadora* (Unidad Administrativa) la inclusión de los datos en su responsabilidad en el formato de *Inventario Institucional de Datos*.

Una redacción de <a href="{{ "/docs/oficio_solicitud_inventario_de_datos.docx" | prepend: site.baseurl }}">oficio de solicitud</a> para el *Inventario de Datos* está disponible en la sección de ‘Manuales y Plantillas’ en datos.gob.mx/guia, esta deberá acompañarse de la <a href="{{ "/docs/inventario_general_de_datos.xlsx" | prepend: site.baseurl }}">plantilla</a> de Inventario de Datos.

La Guía que encontrarán a continuación, hace referencia a la <a href="{{ "/docs/inventario_general_de_datos.xlsx" | prepend: site.baseurl }}">plantilla</a> del *Inventario Institucional de Datos*. La definición de las palabras subrayadas se encuentran en el Glosario de Términos en el Anexo 2.

Se estima un plazo promedio para su elaboración de **10 días hábiles**.

#### Parte 1: Introducción al Inventario Institucional de Datos

<div class="video">
    <iframe src="//www.youtube.com/embed/deAT290DhG8?rel=0&amp;showinfo=0"></iframe>
</div>

#### Parte 2: Ejemplo de Desarrollo del Inventario Institucional de Datos

<div class="video">
    <iframe src="//www.youtube.com/embed/WaoUR_svV8s?rel=0&amp;showinfo=0"></iframe>
</div>

#### Estrategia de apoyo y acompañamiento

<div class="video">
    <iframe src="https://docs.google.com/presentation/embed?id=19wZKJAvg32CN-YdLLA-BkBv_sbzKuJAK__CJpkicE9s&amp;start=false&amp;loop=false"></iframe>
</div>


<table>
    <thead>
        <tr>
            <th>Paso</th>
            <th>Método</th>
            <th>Actor</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><strong>1. Identificar los temas sustantivos</strong></td>
            <td>
              <p>La identificación de los temas sustantivos se elabora a partir de un ejercicio de revisión de los siguientes seis elementos:</p>
              <ol>
                <li>Información necesaria para el desempeño de las funciones sustantivas de la Institución (conforme a los Artículos 18 y 19 de la <i>Ley General de Transparencia</i>). Esto se corrobora contra listado de las principales funciones que desempeña el <i>Área Generadora</i> (comúnmente se derivan del marco jurídico de la Institución, tal como el <i>Reglamento Interior</i> de la Institución).</li>
                <li>Información utilizada para diseño y seguimiento de programas presupuestarios o políticas públicas sectoriales derivados del <i>Programa Nacional de Desarrollo</i>.</li>
                <li>Información para la atención a tratados, acuerdos o compromisos internacionales.</li>
                <li>Información para la atención a solicitudes presidenciales, legislativas o sectoriales.</li>
                <li>Información utilizada para la difusión periódica en publicaciones oficiales, y</li>
                <li>Información recurrente a solicitudes ciudadanas.</li>
              </ol>
              <p><i>Tiempo estimado: 4h</i></p>
            </td>
            <td><p>Área Generadora</p></td>
        </tr>
        <tr>
            <td><strong>2. Definir los Conjuntos de Datos</strong></td>
            <td>
              <p>Cada uno de los temas sustantivos identificados en el paso anterior estan relacionados al menos un <i>Conjunto de Datos</i>, que resulta útil para conocer y comprender el trabajo del <i>Área Generadora</i>.</p>
              <p>Estos pueden ser, entre otros, <i>Datos Abiertos</i> sobre la situación histórica, actual (y cuando la función del <i>Área Generadora</i> lo considere, proyectada):</p>
              <ol>
                <li>del sector donde se desempeña la función,</li>
                <li>de la infraestructura utilizada,</li>
                <li>del ejercicio presupuestal asociado,</li>
                <li>del personal dedicado,</li>
                <li>de indicadores de la operación, o</li>
                <li>de la regulación aplicable.</li>
              </ol>
              <p>En la <a href="{{ "/docs/inventario_general_de_datos.xlsx" | prepend: site.baseurl }}">plantilla</a> de <i>Inventario de Datos</i>, estos <i>Conjuntos de Datos</i> se deben registrar bajo la <strong>Columna B</strong>, titulada ‘nombre del conjunto’, preferentemente con 'unidades de medida' y 'tema'.</p>
              <p>Por ejemplo:</p>
              <ul>
                <li>viviendas con servicio de agua potable,</li>
                <li>habitantes beneficiados por el programa Cruzada contra el Hambre,</li>
                <li>monto ejercido en proyectos de infraestructura de telecomunicaciones</li>
              </ul>
              <p><i>Tiempo estimado: 4h</i></p>
            </td>
            <td><p>Área Generadora</p></td>
        </tr>
        <tr>
            <td><strong>3. Definir los Recursos de Datos</strong></td>
            <td>
              <p>Un Recurso de Datos representa una forma disponible para descarga de un Conjunto de Datos. En otras palabras, cada Conjunto de Datos puede tener diversas formas de publicación, ya sea por variaciones en su estructura (ej.: cartográfico, tabular), temporalidad (ej.: años, meses, días), medio (ej.: CSV, API, RSS), unidades de medida (población, viviendas), etc.</p>
              <p>Es importante asegurarse que el Recurso de Datos considere un solo concepto, en un solo ámbito geográfico y dentro de un solo periodo de tiempo, sin mezclar datos de diversos tipos.</p>
              <p>Cada Recurso de Datos se debe registrar en la Columna C ‘nombre del recurso’ como 'formato', 'unidad', 'materia', 'detalle geográfico' y 'período'</p>
              <p>Por ejemplo:</p>
              <p>mapa de viviendas con cobertura de alcantarillado por municipio 2014, tabla de habitantes beneficiados por el programa Cruzada contra el Hambre por entidad federativa en julio 2013 monto ejercido en proyectos de infraestructura de telecomunicaciones</p>
              <p>Adicionalmente, se incluye una breve descripción del Recurso de Datos en la Columna D ‘¿de qué es?’ (en este campo se pueden incluir aclaraciones o acotaciones relevantes para su uso).</p>
              <p><i>Tiempo estimado: 16h</i></p>
            </td>
            <td><p>Área Generadora</p></td>
        </tr>
        <tr>
            <td><strong>4. Establecer fuentes y responsables</strong></td>
            <td>
              <p>Una vez enlistados los Recursos de Datos, se debe identificar la fuente de datos de donde estos proceden (base de datos, excel, etc.) y se registra en la Columna G ‘¿en qué plataforma, tecnológica, programa o sistema se albergan?’</p>
              <p>De igual forma, se debe registrar el cargo del funcionario designado como Responsable para su actualización en la Columna A, ‘responsable’.</p>
              <p>Una vez identificadas las fuentes de datos y sus responsables, cada Área Generadora registra su listado en la <a href="{{ "/docs/inventario_general_de_datos.xlsx" | prepend: site.baseurl }}">plantilla</a> del Inventario de Datos para su entrega al Administrador de Datos.</p>
              <p>Partiendo de la definición de Información Pública prevista en la Ley General de Transparencia y de la regulación aplicable a la función específica, el Área Generadora verifica en la Columna E ‘¿tiene datos privados?’ si el Recurso de Datos contiene datos privados, de ser el caso, en la Columna F ‘razón por la cuál es privada los datos’ debe referir el fundamento jurídico que así lo acredita.</p>
              <p>Por último, en la Columna H ‘fecha estimada de publicación en datos.gob.mx (en caso de ser datos públicos) (AAAA-MM)’ al Área Generadora determina una fecha estimada de publicación de cada Recurso de Datos.</p>
              <p><i>Tiempo estimado: 2h</i></p></td>
            <td><p>Área Generadora</p></td>
        </tr>
        <tr>
            <td><strong>5. Documentar Inventario Institucional de Datos</strong></td>
            <td>
              <p>Una vez recibidos los Inventarios de Datos de cada Área Generadora, el Administrador de Datos de la dependencia verifica e integra el Inventario Institucional de Datos.</p>
              <p>A continuación se explican  de nuevo los campos requeridos para su verificación:</p>
              <p><strong>A. Responsable:</strong> Cargo del funcionario Responsable de publicar el Conjunto de Datos.</p>
              <p><strong>B. Nombre del conjunto:</strong> Nombre distintivo otorgado al Conjunto de Datos.</p>
              <p><strong>C. Nombre del recurso:</strong> Nombre distintivo otorgado al Recurso de Datos.</p>
              <p><strong>D. ¿De qué es?:</strong> Breve descripción de lo que se presenta en el Recurso de Datos, incluyendo acotaciones y aclaraciones.</p>
              <p><strong>E. ¿Tiene datos privados?:</strong> Determinación si el Conjunto de Datos contiene datos públicos, restringidos o privados.</p>
              <p><strong>F. Razón por la cuál son privados los datos:</strong> De ser privados o restringidos, breve explicación del fundamento jurídico que lo acredita.</p>
              <p><strong>G. ¿En qué tipo de Base de Datos (DBMS) se almacenan?:</strong> Tipo de repositorio donde proviene el Conjunto de Datos. Por ejemplo, MySQL, Oracle, Access, Excel, etc.</p>
              <p><strong>H. Fecha estimada de publicación en datos.gob.mx (en caso de ser datos públicos) (AAAA-MM):</strong> Determinar una fecha tentativa con base en el tiempo requerido para su publicación.</p>
              <p><i>Tiempo estimado: 1h</i></p></td>
            <td><p>Administrador de Datos</p></td>
        </tr>
        <tr>
            <td><strong>6. Formalizar el Inventario Institucional de Datos</strong></td>
            <td>
              <p>Se recomienda que una vez integrado el Inventario Institucional de Datos, el Administrador de Datos revise en una sesión formal del Grupo de Trabajo de Datos Abiertos, que efectivamente el Inventario sea representativo y cumple con la intención fundamental de uso, que los temas identificados sean exhaustivos y sustantivos, en correspondencia a las funciones principales de la Institución.</p>
              <p>Esta sesión deberá ser documentada mediante una minuta debidamente firmada por los titulares participantes.</p>
              <p><i>Tiempo estimado: 4h</i></p></td>
            <td><p>Grupo de Trabajo de Datos Abiertos</p></td>
        </tr>
        <tr>
            <td><strong>7. Presentar inventario</strong></td>
            <td>
              <p>Presentar el Inventario Institucional de Datos (en formato XLS) junto con la minuta de la sesión del Grupo de Trabajo donde se formaliza el Inventario a la Dirección General de Datos Abiertos de la Coordinación de la Estrategia Digital Nacional al correo escuadron@datos.gob.mx</p>
              <p>Es importante considerar que el Inventario deberá aprobarse dentro de los 70 días naturales posteriores a la publicación de la Guía de Implementación de la Política de Datos Abiertos, por lo que se recomienda enviar el Inventario junto con la minuta para su aprobación con al menos 10 días naturales antes de esta fecha.</p>
              <p>La fecha límite establecida en el Decreto para este entregable es el 27 de agosto de 2015.</p>
              <p><i>Aprobación estimada: 5 días</i></p></td>
            <td><p>Enlace de Datos Abiertos</p></td>
        </tr>
    </tbody>
</table>
Para cualquier duda o aclaración en la elaboración del Inventario Institucional de Datos, escríbenos a [escuadron@datos.gob.mx](mailto:escuadron@datos.gob.mx)
