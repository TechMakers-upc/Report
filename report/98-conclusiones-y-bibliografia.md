# Conclusiones

### Resultados del TB1

Durante el Sprint 2 desarrollamos las primeras interfaces de la aplicación web de FixCore con Angular. El trabajo se dividió entre los cinco integrantes por módulos: plantas y máquinas, mantenimiento preventivo, fallas, órdenes de trabajo e inventario.

También integramos las pantallas, corregimos problemas de navegación y publicamos el frontend en Vercel junto con una API de prueba en Render. Esta entrega nos permitió comprobar el funcionamiento inicial de los principales flujos del sistema e identificar mejoras para los siguientes sprints.


El desarrollo del primer avance de **FixCore** permitió definir con mayor claridad la problemática, los usuarios objetivo, los principales requisitos y la propuesta de diseño de la solución. A partir del trabajo realizado, se establecen las siguientes conclusiones:

* **Definición de la arquitectura del sistema:** Se planteó una arquitectura basada en principios de **Domain-Driven Design (DDD)**, identificando los principales Bounded Contexts relacionados con la gestión de usuarios, activos, mantenimiento, órdenes de trabajo, inventario y notificaciones. Esta separación permitirá organizar las responsabilidades del sistema durante las siguientes etapas de desarrollo.

* **Identificación de necesidades de los usuarios:** Las entrevistas realizadas permitieron reconocer problemas recurrentes como la información dispersa entre WhatsApp, Excel y documentos físicos, la dificultad para consultar historiales de mantenimiento y la falta de información actualizada sobre repuestos. Estos hallazgos sirvieron como base para definir las principales funcionalidades de FixCore.

* **Diseño orientado a diferentes tipos de usuario:** La propuesta UX/UI considera las necesidades de jefes de planta, técnicos y empresas contratistas de mantenimiento. Para los técnicos se prioriza una interfaz sencilla y adaptable a dispositivos móviles, mientras que para los responsables de planta se consideran herramientas de supervisión, planificación y consulta de información.

* **Centralización de la gestión del mantenimiento:** FixCore busca reunir en una misma plataforma la información relacionada con máquinas, mantenimientos preventivos, fallas, Órdenes de Trabajo y repuestos. Esta propuesta pretende reducir la dependencia de herramientas separadas y facilitar el seguimiento de las actividades de mantenimiento.

* **Validación inicial de la propuesta de valor:** Los resultados obtenidos durante las entrevistas muestran interés en funcionalidades como el reporte rápido de fallas, las alertas automáticas, la consulta de información desde dispositivos móviles y el control centralizado de las actividades de mantenimiento. Estos resultados respaldan la continuidad del desarrollo de la propuesta.

* **Desarrollo del Landing Page:** Durante el Sprint 1 se avanzó en el diseño e implementación del Landing Page de FixCore, cuyo objetivo es presentar de manera clara el problema identificado, la propuesta de valor, las principales funcionalidades y los segmentos a los que está dirigida la solución.

* **Base para las siguientes etapas del proyecto:** Los artefactos desarrollados, como User Personas, User Stories, Product Backlog, EventStorming, diagramas de arquitectura y diseños de interfaz, establecen una base para continuar con la implementación y validación progresiva de FixCore en los próximos avances.



### Resultados del AV2 Sprint 3

Durante el Sprint 3 se documentaron la API REST con Spring Boot, la integración con la aplicación Angular, las migraciones de PostgreSQL y el despliegue de los componentes principales de FixCore. La documentación y los commits referenciados en el Capítulo V permiten explicar las decisiones técnicas y los avances del producto.

- **Integración entre frontend y backend.** La Web Application fue conectada a servicios REST propios para gestionar plantas, activos, mantenimientos, órdenes, inventario e indicadores. El informe conserva evidencias de interfaces y operaciones seleccionadas; no debe confundirse con una validación exhaustiva de todos los flujos.
- **Seguridad y persistencia.** Se documentaron autenticación JWT, restricciones por rol y planta, migraciones Flyway y mecanismos de integridad en operaciones del backend. El cumplimiento integral requiere pruebas de seguridad y persistencia realizadas sobre el sistema desplegado.
- **Resultados de las sesiones de validación.** Se dispone de tres grabaciones con recorridos de Jefe de Planta, Gerente de Operaciones y Técnico. Visualmente se aprecia una orden que llega al estado COMPLETADA; no se dispone de transcripciones verificadas para atribuir comentarios u opiniones a los participantes.
- **Límites del alcance.** Las tres grabaciones no alcanzan el mínimo de tres a cinco entrevistas por cada segmento objetivo exigido por el enunciado. Siguen pendientes la comprobación integral del descuento de stock, la validación del contenido PDF y otras evidencias indicadas en el apartado 5.2.3.5.

**Recomendaciones.** Completar los videos About-the-Product y About-the-Team, anexar las capturas de colaboración de GitHub, verificar permisos y persistencia por rol, contrastar los endpoints con la versión desplegada y completar las evidencias de validación sin atribuir declaraciones no comprobadas.

### Contraste de hipótesis Lean UX

En el Capítulo I definimos cinco hipótesis sobre la utilidad de FixCore. Las revisamos con las funciones implementadas y con las tres grabaciones de validación disponibles. Por ahora podemos hablar de avances en la aplicación, pero no de una aceptación comprobada por los usuarios: no tenemos datos suficientes sobre tiempos, satisfacción o uso autónomo.

| Hipótesis del Capítulo I | Qué se pudo observar en AV2 | Resultado de la revisión |
|---|---|---|
| H1. Consulta de fichas mediante códigos QR | Se mostraron fichas y listados de máquinas. No hay evidencia suficiente de un acceso completo mediante QR. | Sin validar el uso de QR ni el aumento de interés. |
| H2. Coordinación mediante Órdenes de Trabajo | Las grabaciones recorren creación, consulta, ejecución y cierre. E03 muestra una orden como `COMPLETADA`. | Funcionalidad demostrada en pantalla; falta contrastar la coordinación y la utilidad percibida. |
| H3. Inventario relacionado con órdenes | E03 muestra el registro de un repuesto utilizado. No se verificó el descuento persistido en PostgreSQL. | Integración parcialmente observable; resultado de negocio sin validar. |
| H4. Alertas y notificaciones | El backend documenta endpoints de alertas, pero no se midió si los avisos ayudaron a recordar actividades ni se confirmó envío mediante WhatsApp. | Sin validar el beneficio planteado. |
| H5. Dashboard para supervisión | E02 muestra indicadores, plantas y vistas de reportes. | Vistas disponibles; comprensión de los indicadores sin medir. |

Las hipótesis sobre la reducción de trabajo manual, la utilidad percibida y la continuidad de uso necesitan pruebas con usuarios de los segmentos objetivo y preguntas cuyas respuestas puedan revisarse. Con tres grabaciones no se alcanza el número de entrevistas solicitado en el enunciado.

**Próximos pasos.** Primero corresponde comprobar el flujo completo de órdenes, permisos e inventario con datos persistidos. Después deben completarse las evaluaciones de usabilidad e inclusión, junto con la prueba de los avisos y la exportación de reportes. Finalmente, las funciones como acceso por QR y notificaciones externas deben contrastarse con los requerimientos y la implementación real antes de presentarlas como terminadas.


### Video About-the-Team

El Video About-the-Team debe explicar el proceso de trabajo seguido por TechMakers, utilizando escenas auténticas de coordinación y desarrollo, narración del proceso y testimonios ante cámara de los participantes sobre sus actividades, logros y competencias. Las secuencias y los tiempos se registrarán a partir del video final efectivamente publicado.

| Evidencia requerida | Estado al cierre de esta revisión |
|---|---|
| Video publicado en Microsoft Stream | Pendiente de incorporar enlace auténtico |
| Video publicado en YouTube | Pendiente de incorporar enlace auténtico |
| Duración total y pauta de secuencias con inicio `hh:mm:ss` | Pendiente de registrar desde el video editado |
| Fotograma representativo | Pendiente de incorporar captura real |
| Inserción en la Landing Page | Pendiente de verificar tras la publicación |

No se presenta un video como publicado ni se atribuyen testimonios que no estén documentados.

<div style="page-break-after: always;"></div>


# Bibliografía

Adzic, G. (2012). *Impact mapping: Making a big impact with software products and projects*. Provoking Thoughts. https://www.impactmapping.org/book.html

Angular. (s. f.). *Angular coding style guide*. https://angular.dev/style-guide

Atlassian. (s. f.). *Flujo de trabajo de Gitflow*. https://www.atlassian.com/es/git/tutorials/comparing-workflows/gitflow-workflow

Bokrantz, J., Skoogh, A., Berlin, C., Wuest, T., & Stahre, J. (2020). Smart Maintenance: An empirically grounded conceptualization. *International Journal of Production Economics, 223*, 107534. https://doi.org/10.1016/j.ijpe.2019.107534

Bradbury, S., Carpizo, B., Gentzel, M., Horah, D., & Thibert, J. (2018, 4 de octubre). *Digitally enabled reliability: Beyond predictive maintenance*. McKinsey & Company. https://www.mckinsey.com/capabilities/operations/our-insights/digitally-enabled-reliability-beyond-predictive-maintenance

Brandolini, A. (2021). *Introducing EventStorming: An act of deliberate collective learning*. Leanpub. https://leanpub.com/introducing_eventstorming

Brown, S. (s. f.). *The C4 model for visualising software architecture*. C4 Model. https://c4model.com/

Cucumber. (s. f.). *Gherkin reference*. https://cucumber.io/docs/gherkin/reference/

Fracttal. (s. f.). *Gestión de órdenes de trabajo - Fracttal One*. https://www.fracttal.com/es-es/gestion-de-ots

GitHub. (s. f.). *What is GitHub Pages?* GitHub Docs. https://docs.github.com/en/pages/getting-started-with-github-pages/what-is-github-pages

Google. (s. f.). *Google HTML/CSS style guide*. https://google.github.io/styleguide/htmlcssguide

Google. (s. f.). *Google Java style guide*. https://google.github.io/styleguide/javaguide.html

Google. (s. f.). *Google JavaScript style guide*. https://google.github.io/styleguide/jsguide.html

Google. (s. f.). *Google TypeScript style guide*. https://google.github.io/styleguide/tsguide.html

Gothelf, J., & Seiden, J. (2021). *Lean UX: Designing great products with agile teams* (3rd ed.). O'Reilly Media.

IBM. (s. f.). *Maximo Application Suite*. https://www.ibm.com/products/maximo

Material Design. (s. f.). *Accessibility*. Google. https://m1.material.io/usability/accessibility.html

Ministerio de la Producción. (2024). *Anuario estadístico 2023: Industrial, Mipyme y comercio interno*. Observatorio PRODUCEmpresarial. https://www.producempresarial.pe/anuario-estadistico-industrial-mipyme-y-comercio-interno-2023/

Senseye Predictive Maintenance. (2023). *The true cost of downtime 2022*. Siemens. https://assets.new.siemens.com/siemens/assets/api/uuid:3d606495-dbe0-43e4-80b1-d04e27ada920/dics-b10153-00-7600truecostofdowntime2022-144.pdf

Spring. (s. f.). *Spring Boot reference documentation*. https://docs.spring.io/spring-boot/reference/

Tamvada, J. P., Narula, S., Audretsch, D., Puppala, H., & Kumar, A. (2022). Adopting new technology is a distant dream? The risks of implementing Industry 4.0 in emerging economy SMEs. *Technological Forecasting and Social Change, 185*, 122088. https://doi.org/10.1016/j.techfore.2022.122088

UpKeep. (s. f.). *CMMS software*. https://upkeep.com/product/cmms-software/

World Wide Web Consortium. (2023). *Web Content Accessibility Guidelines (WCAG) 2.2*. https://www.w3.org/TR/WCAG22/

W3Schools. (s. f.). *HTML style guide and coding conventions*. https://www.w3schools.com/HTML/html5_syntax.asp

<div style="page-break-after: always;"></div>
