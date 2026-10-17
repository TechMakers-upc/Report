# Capítulo V: Product Implementation, Validation & Deployment

## 5.1. Software Configuration Management.

En esta sección se describen las herramientas, los repositorios y las convenciones utilizadas para organizar el desarrollo de FixCore. Se documenta la configuración aplicada durante los Sprints 1 y 2 y la continuidad inicial de trabajo en frontend, Landing Page e informe para Sprint 3.

### 5.1.1. Software Development Environment Configuration.

Para coordinar el trabajo del equipo se utilizan herramientas de planificación, diseño, programación, documentación y despliegue. A continuación se indica el propósito de cada una dentro del proyecto.

**Project Management**

| Producto | Propósito de uso | Referencia |
|---|---|---|
| Trello | Organizar el Product Backlog y los Sprint Backlogs, asignar tareas y registrar su seguimiento. | https://trello.com/ |
| GitHub | Gestionar los repositorios, ramas, commits, Pull Requests y revisiones de código. | https://github.com/TechMakers-upc |
| Google Drive | Almacenar y compartir archivos complementarios y materiales de entrevistas. | https://drive.google.com/ |
| WhatsApp | Resolver consultas y coordinar asuntos puntuales entre los integrantes. | https://www.whatsapp.com/ |
| Discord | Realizar reuniones virtuales y coordinar actividades del equipo. | https://discord.com/ |

**Requirements Management**

| Producto | Propósito de uso | Referencia |
|---|---|---|
| UXPressia | Elaborar User Personas, User Journey Maps y otros artefactos de investigación de usuarios. | https://uxpressia.com/ |
| FigJam | Trabajar colaborativamente en los diagramas de EventStorming y en el análisis del dominio. | https://www.figma.com/figjam/ |
| Trello | Registrar, priorizar y dar seguimiento a las historias y tareas del Product Backlog. | https://trello.com/ |

**Product UX/UI Design**

| Producto | Propósito de uso | Referencia |
|---|---|---|
| Figma | Diseñar wireframes, mock-ups, prototipos y recursos visuales de FixCore. | https://www.figma.com/ |

**Software Development**

| Producto o tecnología | Propósito de uso | Referencia |
|---|---|---|
| Visual Studio Code | Edición de archivos HTML, CSS y JavaScript de la Landing Page. | https://code.visualstudio.com/ |
| Git | Control de versiones de los productos de software y del informe. | https://git-scm.com/ |
| JetBrains WebStorm | Desarrollo y revisión de la Web Application. | https://www.jetbrains.com/webstorm/ |
| Angular y TypeScript | Implementación del frontend de FixCore, organizado en componentes, vistas y servicios. | https://angular.dev/ |
| Angular Material | Componentes de interfaz utilizados en la Web Application. | https://material.angular.dev/ |
| Node.js y npm | Instalación de dependencias y ejecución de herramientas de desarrollo del frontend. | https://nodejs.org/ |
| JSON Server | API simulada utilizada en Sprint 2 para probar solicitudes HTTP desde Angular. | https://github.com/typicode/json-server |

Las versiones efectivamente utilizadas y la configuración de ejecución deben contrastarse con los archivos de cada repositorio. La incorporación de nuevas herramientas de servidor se documentará cuando el equipo planifique esa etapa del proyecto.

**Software Deployment**

| Producto | Propósito de uso | Referencia |
|---|---|---|
| GitHub Pages | Publicación del sitio estático de la Landing Page. | https://pages.github.com/ |
| Vercel | Despliegue de la Web Application desarrollada en Angular. | https://vercel.com/ |
| Render | Despliegue de JSON Server durante Sprint 2 como API simulada. | https://render.com/ |

**Software Documentation**

| Producto o estándar | Propósito de uso | Referencia |
|---|---|---|
| Markdown | Elaboración colaborativa del informe y su organización por capítulos. | https://www.markdownguide.org/ |
| OpenAPI | Estándar que se incorporará cuando se documente una API propia en una etapa posterior. | https://www.openapis.org/ |

### 5.1.2. Source Code Management.

El equipo utiliza Git y GitHub para administrar las versiones de los productos y mantener evidencia de las contribuciones. Los repositorios conocidos de la organización son los siguientes:

| Repositorio | Propósito | URL |
|---|---|---|
| Report | Informe del proyecto, capítulos y evidencias de desarrollo. | https://github.com/TechMakers-upc/Report |
| Landing-Page | Sitio estático público de FixCore, incluyendo las versiones en español e inglés. | https://github.com/TechMakers-upc/Landing-Page |
| Frontend | Aplicación Angular y recursos utilizados para la demostración del Sprint 2. | https://github.com/TechMakers-upc/Frontend |

Para organizar las contribuciones se aplica una estrategia basada en GitFlow. La rama `main` se reserva para versiones estables, `develop` concentra la integración del trabajo y las ramas `feature/*` permiten desarrollar cambios específicos sin modificar directamente la versión principal. Los cambios se revisan antes de su integración y se describen mediante Conventional Commits, por ejemplo `feat:`, `fix:`, `docs:` y `refactor:`.

Para las entregas que requieran preparar una versión estable, el equipo contempla el uso de ramas `release/*`; para correcciones urgentes en producción, `hotfix/*`. Estas convenciones deberán aplicarse cuando se presente la necesidad, sin afirmar que ya existen ramas de dichos tipos. Las versiones publicadas podrán identificarse mediante etiquetado compatible con Semantic Versioning una vez definido el esquema de releases.

### 5.1.3. Source Code Style Guide & Conventions.

Con el fin de facilitar la integración de cambios entre los integrantes, se establecen las siguientes convenciones de desarrollo:

- **Nomenclatura:** utilizar identificadores en inglés para archivos de código, variables, funciones, clases, interfaces y componentes. Las clases y tipos siguen las convenciones de cada lenguaje; los nombres de métodos y variables se mantienen consistentes dentro de su módulo.
- **HTML y CSS:** emplear estructura semántica, estilos organizados y reglas adaptables a diferentes tamaños de pantalla, tomando como referencia las guías de estilo web de Google.
- **JavaScript y TypeScript:** mantener funciones con responsabilidades claras y evitar la duplicación innecesaria de lógica, siguiendo las guías de estilo correspondientes.
- **Angular:** organizar vistas, componentes y servicios por responsabilidad, aplicar tipado de TypeScript y conservar un sistema de navegación consistente.
- **User Stories:** redactar criterios de aceptación verificables en formato Given–When–Then, evitando confundir requisitos de negocio con detalles de una implementación particular.
- **Git:** redactar mensajes de commit descriptivos, utilizar ramas por funcionalidad y revisar los cambios antes de integrarlos.

Como referencias se consideran las guías de Angular, Google TypeScript y Google HTML/CSS, incluidas en la bibliografía del proyecto. La aplicación efectiva de estas convenciones deberá demostrarse mediante código y revisiones, no únicamente por su descripción en el informe.

### 5.1.4. Software Deployment Configuration.

El equipo mantiene diferentes medios de publicación según el producto de software. Cada despliegue se documenta con el entorno utilizado, la configuración necesaria y las evidencias de funcionamiento.

**Landing Page — GitHub Pages**

La Landing Page está construida con HTML, CSS y JavaScript. Su publicación se realiza mediante GitHub Pages a partir de la rama y carpeta configuradas en el repositorio. Después de integrar cambios y actualizar la versión publicada, se verifica la navegación en español e inglés, los enlaces legales, el menú responsive y los botones de acceso a la Web Application.

- Repositorio: https://github.com/TechMakers-upc/Landing-Page
- URL documentada de despliegue: https://techmakers-upc.github.io/Landing-Page/

**Web Application — Vercel**

La aplicación Angular se publicó en Vercel durante Sprint 2. El despliegue requiere instalar dependencias, compilar el proyecto y configurar los parámetros adecuados para su ejecución. Durante esa entrega, las vistas consumieron recursos de JSON Server. En la primera etapa del Sprint 3 se comprobarán las rutas, formularios y flujos demostrativos existentes.

- Repositorio: https://github.com/TechMakers-upc/Frontend
- URL documentada de la aplicación: https://fixcore-frontend-eight.vercel.app/demo

**API simulada — Render (Sprint 2)**

Durante Sprint 2 se publicó una instancia de JSON Server en Render para apoyar las demostraciones. Esta API permite operaciones HTTP sobre datos de prueba, pero no implementa por sí misma las reglas de negocio, persistencia relacional ni mecanismos de seguridad exigidos para la solución final.

- URL documentada de la API simulada: https://fixcore-json-api.onrender.com/


## 5.2. Landing Page, Services & Applications Implementation.

### 5.2.1. Sprint 1.

El Sprint 1 estuvo dedicado a la implementación y publicación de la primera versión de la Landing Page de FixCore. El objetivo fue presentar el problema abordado por la solución, sus funcionalidades principales, los beneficios para los segmentos objetivo y los planes del producto mediante un sitio web adaptable a computadoras y dispositivos móviles.

El equipo desarrolló el encabezado, la presentación principal, las funcionalidades, la guía de uso, los beneficios por segmento, los planes de suscripción y las preguntas frecuentes. La primera versión se publicó en GitHub Pages. Al cierre del sprint quedó pendiente completar el acceso a los términos y condiciones, por lo que se registraron **6 de 7 Story Points** como terminados. Esta cifra corresponde únicamente al resultado del Sprint 1 y no incluye las correcciones realizadas con posterioridad.

Las secciones siguientes registran la planificación original, las tareas asumidas por el equipo, las evidencias de implementación y el estado del producto al momento de la revisión del sprint.

#### 5.2.1.1. Sprint Planning 1.

La planificación del Sprint 1 se realizó mediante una reunión virtual en Discord. Durante esta sesión, definimos el objetivo del sprint, seleccionamos las User Stories relacionadas con la Landing Page y distribuimos las responsabilidades de implementación entre los integrantes del equipo.

| Campo | Información |
|---|---|
| Sprint # | Sprint 1 |
| **Sprint Planning Background** | |
| Date | 2026-09-11 |
| Time | 7:00 PM - 8:00 PM |
| Location | Discord |
| Prepared By | Alvar Lucas Córdova |
| Attendees | Alvar Lucas Córdova, Sunio Danilo Landa Sánchez, Giuseppe Adrián Villanueva Rodríguez, Diego Rances Rojas Huaranga y Pierre Alessandro Mendoza Boluarte |
| **Sprint Goal & User Stories** | |
| Sprint 1 Goal | **Our focus is on** developing and deploying a responsive Landing Page that clearly presents FixCore and its value proposition. **We believe it delivers** accessible information about the product, its main features, benefits, subscription plans and frequently asked questions for the defined target segments. **This will be confirmed when** the Landing Page is published on GitHub Pages and visitors can navigate its main sections from desktop and mobile devices. |
| Sprint 1 Velocity | 6 Story Points completados |
| Sum of Story Points | 7 Story Points planificados |

Para este sprint se seleccionaron cinco User Stories relacionadas con la presentación de FixCore: US59, US60, US61, US62 y US63. Estas historias suman 7 Story Points en el Product Backlog.

Se completaron las funcionalidades informativas principales, equivalentes a 6 Story Points. La **US63 quedó parcialmente terminada** al cierre del Sprint 1 porque aún faltaba habilitar el enlace a los términos y condiciones. Las mejoras incorporadas posteriormente se documentan como trabajo de corrección y evolución del producto, sin alterar el registro histórico de velocidad del sprint.

#### 5.2.1.2. Aspect Leaders and Collaborators.

Para organizar el trabajo del Sprint 1, elaboramos una Leadership and Collaboration Matrix en la que se asignó un responsable principal para cada sección de la Landing Page. Los demás integrantes participaron como colaboradores, apoyando en la revisión de las interfaces, integración de cambios y correcciones necesarias.

En la siguiente matriz, **L** representa al líder de la actividad y **C** a los colaboradores.

| Team Member (Last Name, First Name) | GitHub Username | Landing Page Hero & Navbar | Features & Usage Guide Section | Segmented Benefits & Testimonials | Monthly & Annual Pricing Views | FAQ Component & Support |
|---|---|---|---|---|---|---|
| Rojas Huaranga, Diego Rances | diego27-16 | L | C | C | C | C |
| Mendoza Boluarte, Pierre Alessandro | pierreale2302 | C | L | C | C | C |
| Córdova, Alvar Lucas | AlvarLC | C | C | L | C | C |
| Landa Sánchez, Sunio Danilo | DanLandio | C | C | C | L | C |
| Villanueva Rodríguez, Giuseppe Adrián | Giuseppe152004 | C | C | C | C | L |

Esta distribución permitió que cada integrante se concentrara en una sección específica del sitio, mientras el resto del equipo brindaba apoyo cuando era necesario. De esta manera, pudimos desarrollar las diferentes partes de la Landing Page en paralelo y posteriormente integrarlas en una misma versión.

#### 5.2.1.3. Sprint Backlog 1.

El Sprint Backlog 1 reúne las tareas que definimos para implementar las secciones principales de la Landing Page de FixCore. Estas actividades están relacionadas con cinco User Stories del Product Backlog y fueron distribuidas entre los integrantes del equipo según las responsabilidades establecidas durante la planificación.

Para hacer seguimiento a las actividades utilizamos Trello, donde registramos las tareas asignadas, sus responsables y sus estados durante el desarrollo del sprint.

**Enlace al Sprint Backlog 1:**

[Tablero Trello Sprint Backlog 1](https://trello.com/b/8ilypk4J/sprint-backlog-1-techmakers)

| Story ID | Story Title | Task ID | Task Title | Task Description | Estimation (hours) | Assigned To | Status |
|---|---|---|---|---|---|---|---|
| US59 | Conocer FixCore | T001 | Develop Landing Page Hero | Implementar la sección principal del Hero con la propuesta de valor y el llamado a la acción de FixCore. | 2 | Rojas Huaranga, Diego Rances | Done |
| US59 | Conocer FixCore | T002 | Add Landing Page Navbar | Implementar la barra de navegación con el logo, enlaces a las secciones de FixCore y diseño responsivo. | 2 | Rojas Huaranga, Diego Rances | Done |
| US60 | Conocer funcionalidades de FixCore | T003 | Develop Features Section | Desarrollar la sección que presenta las funcionalidades principales de FixCore y la vista referencial del dashboard. | 3 | Mendoza Boluarte, Pierre Alessandro | Done |
| US60 | Conocer funcionalidades de FixCore | T004 | Design User Guide Section | Diseñar e implementar los pasos explicativos sobre el funcionamiento general de FixCore. | 2 | Mendoza Boluarte, Pierre Alessandro | Done |
| US61 | Conocer beneficios según el segmento | T005 | Write Benefits for Each Segment | Redactar e implementar la sección de beneficios de FixCore adaptada a los diferentes segmentos objetivo. | 2 | Córdova, Alvar Lucas | Done |
| US61 | Conocer beneficios según el segmento | T006 | Add User Testimonials | Diseñar e incorporar una sección de testimonios ilustrativos para presentar situaciones de uso y beneficios esperados de FixCore. | 2 | Córdova, Alvar Lucas | Done |
| US62 | Consultar planes de FixCore | T007 | Develop Monthly Pricing Plans | Implementar las tarjetas de planes de suscripción, mostrando sus características y tarifas mensuales. | 2 | Landa Sánchez, Sunio Danilo | Done |
| US62 | Consultar planes de FixCore | T008 | Develop Annual Pricing Plans | Implementar la funcionalidad para alternar entre los precios mensuales y anuales. | 2 | Landa Sánchez, Sunio Danilo | Done |
| US63 | Consultar información adicional de FixCore | T009 | Add Frequently Asked Questions | Implementar la sección de preguntas frecuentes y el Footer para resolver dudas adicionales de los visitantes. | 3 | Villanueva Rodríguez, Giuseppe Adrián | Done |
| US63 | Consultar información adicional de FixCore | T010 | Write Terms and Conditions | Redactar los términos y condiciones de FixCore y habilitar su consulta desde el enlace correspondiente del Footer. | 2 | Villanueva Rodríguez, Giuseppe Adrián | In Progress |

Durante el desarrollo del Sprint 1 se implementaron las secciones principales del sitio, incluyendo el Hero, Navbar, funcionalidades, guía de uso, beneficios por segmento, testimonios ilustrativos, planes de suscripción, preguntas frecuentes y Footer.

La sección de preguntas frecuentes y el Footer quedaron implementados. Al cierre de este sprint, el enlace a los términos y condiciones todavía no dirigía a una página informativa funcional, motivo por el cual la T010 permaneció en estado **In Progress**. El equipo debía atender esa observación en las revisiones posteriores.

#### 5.2.1.4. Development Evidence for Sprint Review.

Durante el Sprint 1 utilizamos Git y GitHub para gestionar los cambios realizados en el código fuente de la Landing Page. Cada integrante trabajó en las funcionalidades asignadas y registró sus avances mediante commits.

La siguiente tabla presenta algunos de los commits realizados durante el desarrollo del sitio. Estos registros permiten identificar los cambios incorporados, las ramas utilizadas y las fechas en las que se realizaron.

| Repository | Branch | Commit ID | Commit Message | Commit Message Body | Committed on |
|---|---|---|---|---|---|
| Landing-Page | feature/landing-page-presentation | 0128950 | feat: Enhance index.html with meta tags and header structure | | Sep 19, 2026 |
| Landing-Page | feature/landing-page-presentation | 18ee3c6 | styles: Add base styles and CSS variables | | Sep 19, 2026 |
| Landing-Page | feature/landing-page-presentation | 51ba71f | Merge pull request #1 from TechMakers-upc/Feature/landing-page | | Sep 19, 2026 |
| Landing-Page | feature/functions-landing | c7507e1 | feat(landing): implement features section and add UI assets | | Sep 19, 2026 |
| Landing-Page | feature/functions-landing | c0f0ae4 | Merge pull request #3 from TechMakers-upc/feature/functions-landing | | Sep 19, 2026 |
| Landing-Page | feature/benefints-landing-page | ef53f10 | Update index.html | | Sep 19, 2026 |
| Landing-Page | feature/benefints-landing-page | 2b78517 | Merge pull request #4 from TechMakers-upc/feature/Benefits-Landing-Page | | Sep 19, 2026 |
| Landing-Page | main | eb0f365 | feat: add subscription plans information cards | | Sep 19, 2026 |

Los commits muestran parte del proceso de implementación de las distintas secciones de la Landing Page. La integración de estos cambios permitió reunir las funcionalidades desarrolladas por el equipo en una versión compartida del sitio web.

#### 5.2.1.5. Execution Evidence for Sprint Review.

**Video de presentación del Sprint 1:** [Ver video](https://upcedupe-my.sharepoint.com/:v:/g/personal/u202423973_upc_edu_pe/IQD6WLEWUP5oQLbSvCXtwgcqAZEWm3YKXW1kVty23sprr_g?e=01QNKW)

En esta sección presentamos las evidencias visuales de las funcionalidades implementadas durante el Sprint 1. Las capturas corresponden a la primera versión de la Landing Page y muestran las principales secciones desarrolladas.

**1. Navbar y Hero Section**

Implementamos el encabezado principal de la Landing Page, compuesto por el logo de FixCore, el menú de navegación y la sección Hero. Esta última presenta la propuesta de valor del producto y permite que los visitantes conozcan su propósito desde el inicio.

![Navbar y Hero Section](assets/images/nav-hero.png)

**2. Funcionalidades y guía de uso**

Desarrollamos una sección informativa que presenta las principales funcionalidades propuestas para FixCore. También incorporamos una guía visual que explica cómo se utilizaría la plataforma para organizar actividades de mantenimiento industrial.

La finalidad de estas secciones es que los visitantes comprendan las capacidades de la solución antes de acceder a la aplicación.

![Funcionalidades de FixCore](assets/images/funcionalidades.png)

![Guía de uso de FixCore](assets/images/flujo.png)

**3. Beneficios por segmento y testimonios**

Implementamos una sección de beneficios orientada a los segmentos objetivo de FixCore. En ella se presentan las ventajas esperadas de la plataforma para pymes manufactureras, firmas contratistas y personal técnico de mantenimiento.

También incorporamos testimonios ilustrativos que muestran situaciones relacionadas con los problemas que FixCore busca resolver. Estos ejemplos forman parte de la presentación de la propuesta y no constituyen resultados comprobados de clientes que ya utilizan el producto.

![Beneficios de FixCore](assets/images/soluciones.png)

![Testimonios ilustrativos](assets/images/testimonios.png)

**4. Planes y precios**

Desarrollamos la sección de suscripciones, donde los visitantes pueden revisar los planes propuestos para FixCore y comparar sus características principales.

Además, implementamos un selector que permite alternar entre la visualización de precios mensuales y anuales sin necesidad de cambiar de página.

![Planes y precios de FixCore](assets/images/planes.png)

**5. Preguntas frecuentes y Footer**

Implementamos la sección de preguntas frecuentes para ofrecer respuestas a dudas habituales relacionadas con FixCore, sus funcionalidades y sus planes.

Asimismo, desarrollamos el Footer con enlaces de navegación e información adicional del producto. **En la versión revisada durante el Sprint 1**, el acceso a los términos y condiciones todavía estaba pendiente de completarse.

![Preguntas frecuentes](assets/images/preguntas.png)

![Footer de FixCore](assets/images/footer.png)

#### 5.2.1.6. Services Documentation Evidence for Sprint Review.

Durante el Sprint 1 nos concentramos en desarrollar la Landing Page de FixCore como un sitio web informativo. Las actividades realizadas abarcaron la implementación de sus secciones visuales, la navegación entre contenidos, la presentación de planes y la interacción con las preguntas frecuentes.

La Landing Page fue desarrollada utilizando tecnologías web como HTML, CSS y JavaScript. Su funcionamiento no requiere una base de datos ni una API REST para presentar la información al visitante.

Por este motivo, durante este sprint no se implementaron Web Services, endpoints o servicios de backend relacionados con la gestión del mantenimiento industrial. Estas funcionalidades corresponden a etapas posteriores del desarrollo de FixCore.

En consecuencia, no se presentan endpoints ni documentación de servicios REST en esta entrega, debido a que no formaron parte del alcance del Sprint 1.

#### 5.2.1.7. Software Deployment Evidence for Sprint Review.

Al finalizar el desarrollo de la Landing Page, realizamos su publicación mediante GitHub Pages. De esta manera, el sitio quedó disponible a través de un enlace público y puede consultarse desde un navegador sin necesidad de descargar o ejecutar el proyecto localmente.

El repositorio de la Landing Page contiene el código fuente, los estilos y los recursos utilizados para presentar FixCore. También incluye versiones del sitio en español e inglés.

La versión publicada presenta las secciones desarrolladas durante el sprint: Navbar, Hero, funcionalidades, guía de uso, beneficios, testimonios ilustrativos, planes de precios, preguntas frecuentes y Footer.

**Repositorio de código fuente:**

https://github.com/TechMakers-upc/Landing-Page

**Landing Page desplegada:**

https://techmakers-upc.github.io/Landing-Page/

A continuación, se presentan las capturas utilizadas para registrar el despliegue de la Landing Page en GitHub Pages.

![Despliegue de Landing Page en GitHub Pages](assets/images/pages.png)

![Evidencia de despliegue](assets/images/evidence.png)

#### 5.2.1.8. Team Collaboration Insights during Sprint.

Durante el Sprint 1 organizamos las actividades de desarrollo mediante la distribución de responsabilidades entre los cinco integrantes de TechMakers. Cada miembro asumió el liderazgo de una sección de la Landing Page y colaboró con el resto del equipo durante las revisiones e integración de los cambios.

Para coordinar el trabajo utilizamos reuniones virtuales, Trello y GitHub. El tablero del Sprint Backlog nos permitió mantener un seguimiento de las tareas, mientras que el repositorio registró los commits y las contribuciones realizadas por los integrantes.

Trabajar con ramas independientes facilitó el desarrollo paralelo de las secciones. Sin embargo, durante la integración encontramos algunos problemas relacionados con traducciones, espaciados, colores y diferencias entre componentes. Estos detalles requirieron ajustes adicionales para mantener una presentación uniforme.

A partir de esta experiencia identificamos la importancia de mantener convenciones comunes de diseño y desarrollo, revisar los cambios antes de integrarlos y comunicar oportunamente las dificultades encontradas.

El trabajo realizado permitió completar y publicar la estructura principal de la Landing Page mediante GitHub Pages. Asimismo, el sprint ayudó a establecer convenciones para la integración de cambios y el trabajo por ramas.

**Seguimiento posterior al Sprint 1.** En las revisiones posteriores se corrigieron los enlaces de las páginas legales, la navegación entre idiomas, contenidos comerciales y aspectos visuales de la Landing Page. También se incorporaron secciones interactivas de funcionalidades, tecnología y presentación del equipo, así como los accesos a la Web Application. Estas mejoras forman parte de la evolución del producto después del cierre del Sprint 1; por tanto, no modifican retroactivamente los estados ni la velocidad consignados en su Sprint Backlog. Para AV2 corresponde actualizar las evidencias de la versión desplegada y vincular los commits o Pull Requests que acrediten dichos ajustes.

**Métricas de colaboración:**

![Métricas de colaboración del Sprint 1](assets/images/insight.png)


<div style="page-break-after: always;"></div>


### 5.2.2. Sprint 2.

En el Sprint 2, TechMakers desarrolló la primera versión de la Web Application de FixCore utilizando Angular y TypeScript. A diferencia del Sprint 1, centrado en la Landing Page, este trabajo se orientó a las interfaces de gestión de plantas y máquinas, mantenimiento preventivo, fallas, órdenes de trabajo, inventario de repuestos y consulta de indicadores operativos.

Los integrantes distribuyeron el desarrollo por módulos y posteriormente integraron las vistas en una aplicación con navegación común y experiencias diferenciadas para Jefe de Planta, Gerente de Operaciones y Técnico de Mantenimiento. Para facilitar las demostraciones, el frontend consumió una **API de prueba implementada con JSON Server y desplegada en Render**. Esta herramienta simuló el acceso a recursos mediante endpoints HTTP, pero **no constituyó todavía una API REST propia construida con Java y Spring Boot**, objetivo reservado para una etapa posterior.

La planificación consideró 27 User Stories relacionadas con la cobertura funcional del frontend, cuya estimación original ascendía a 88 Story Points. Sin embargo, esas estimaciones correspondían a las historias completas de producto, no exclusivamente a la construcción de pantallas. Por ese motivo, **no se presentan 88 puntos como velocidad lograda**. La finalización de cada historia depende de comprobar todos sus criterios de aceptación, incluidas las operaciones de servidor cuando estas resulten necesarias.

La autenticación real, la autorización basada en cuentas persistentes y la recuperación de contraseñas no formaron parte del alcance ejecutado en este sprint. La selección de perfiles utilizada para demostrar la navegación no debe confundirse con un inicio de sesión seguro.

#### 5.2.2.1. Sprint Planning 2.

La planificación del Sprint 2 tomó como referencia los resultados del Sprint 1 y las historias del Product Backlog. El trabajo se distribuyó por módulos para que los cinco integrantes desarrollaran interfaces en paralelo y posteriormente integraran sus avances en una misma aplicación web. Los datos del siguiente cuadro corresponden al registro de planificación conservado por el equipo.

| Campo | Información |
|---|---|
| Sprint # | Sprint 2 |
| **Sprint Planning Background** | |
| Date | 2026-10-08 |
| Time | 2:00 AM - 2:45 AM |
| Location | Reunión de coordinación (medio no especificado en el registro) |
| Prepared By | Alvar Lucas Córdova |
| Team Members Considered | Alvar Lucas Córdova, Sunio Danilo Landa Sánchez, Giuseppe Adrián Villanueva Rodríguez, Diego Rances Rojas Huaranga y Pierre Alessandro Mendoza Boluarte |
| Sprint 1 Review Summary | Durante el Sprint 1 se implementó la estructura principal de la Landing Page de FixCore, incluyendo sus secciones informativas, navegación, beneficios, planes y preguntas frecuentes. Posteriormente se realizaron correcciones relacionadas con las traducciones, enlaces y páginas informativas. |
| Sprint 1 Retrospective Summary | Se identificó la importancia de mantener convenciones comunes de desarrollo, mejorar la coordinación entre integrantes y realizar revisiones antes de integrar los cambios. Para el Sprint 2 se propone organizar las responsabilidades por módulos y realizar pruebas de integración durante el desarrollo. |
| **Sprint Goal & User Stories** | |
| Sprint 2 Goal | **Our focus is on** developing the main frontend interfaces of the FixCore Web Application, covering asset management, preventive maintenance, failure reporting, work orders, spare parts inventory, operational dashboards, and navigation from the Landing Page. **We believe it delivers** an integrated and navigable frontend prototype that allows users to explore the main modules and interact with representative maintenance workflows using simulated data. **This will be confirmed when** the planned interfaces are integrated, their navigation and validations are tested, and the frontend is accessible through a deployed application. |
| Sprint 1 Velocity Reference | 6 Story Points completados |
| Sprint 2 Velocity | No determinada; se requiere verificar las historias finalizadas contra sus criterios de aceptación |
| User Stories Considered for Frontend Coverage | 27 |
| Associated Product Backlog Story Points | 88 Story Points |
| Sum of Story Points | 88 SP asociados a la cobertura funcional considerada; no equivalen a SP terminados |

**User Stories consideradas para la cobertura del frontend**

| Módulo | User Stories | Cantidad | Story Points |
|---|---|---:|---:|
| Gestión de plantas y máquinas | US01, US02, US03, US04, US05, US08, US09 | 7 | 24 |
| Mantenimiento preventivo | US10, US14, US16, US17 | 4 | 16 |
| Gestión de fallas | US19, US20, US21, US22 | 4 | 10 |
| Órdenes de trabajo | US23, US25, US27, US28, US29, US30 | 6 | 21 |
| Inventario de repuestos | US31, US33, US35 | 3 | 7 |
| Dashboard y seguimiento | US41, US45 | 2 | 8 |
| Acceso desde Landing Page | US64 | 1 | 2 |
| **Total** | | **27** | **88** |

Las User Stories de la tabla se relacionaron con las principales interfaces previstas para el Sprint 2. Se organizaron por módulos para facilitar la distribución de responsabilidades y el desarrollo paralelo.

Las 27 historias consideradas sumaban 88 Story Points según el Product Backlog. Sin embargo, esos puntos correspondían al desarrollo completo de las funcionalidades, mientras que el alcance efectivo del sprint fue principalmente frontend, apoyado en una API de prueba y validaciones de interfaz.

Por lo tanto, las interfaces implementadas no implican que todas las User Stories hayan quedado completas. Las historias que necesitan persistencia, reglas de negocio o autenticación real deben volver a evaluarse cuando se integren los Web Services propios.


#### 5.2.2.2. Aspect Leaders and Collaborators.

El equipo organizó la distribución inicial del trabajo mediante la siguiente Leadership and Collaboration Matrix. Cada integrante asumió la coordinación de un módulo y colaboró con los demás durante la integración.

En la siguiente matriz, **L** representa al líder del área de trabajo y **C** a los colaboradores.

| Team Member  | GitHub Username | Plants & Machines | Preventive Maintenance | Failures & Dashboard | Work Orders & Access | Inventory & Testing |
|---|---|:---:|:---:|:---:|:---:|:---:|
| Córdova, Alvar Lucas | AlvarLC | L | C | C | C | C |
| Landa Sánchez, Sunio Danilo | DanLandio | C | L | C | C | C |
| Villanueva Rodríguez, Giuseppe Adrián | Giuseppe152004 | C | C | L | C | C |
| Rojas Huaranga, Diego Rances | diego27-16 | C | C | C | L | C |
| Mendoza Boluarte, Pierre Alessandro | pierreale2302 | C | C | C | C | L |

La distribución de responsabilidades considerada para el sprint fue la siguiente:

- **Alvar Lucas Córdova:** configuración inicial del frontend y desarrollo de las interfaces para registrar, editar y consultar información de plantas y máquinas.
- **Sunio Danilo Landa Sánchez:** desarrollo de las interfaces de mantenimiento preventivo, incluyendo programación, calendario y consultas de actividades pendientes o vencidas.
- **Giuseppe Adrián Villanueva Rodríguez:** implementación de las interfaces para reportar y consultar fallas, así como del dashboard con indicadores demostrativos.
- **Diego Rances Rojas Huaranga:** desarrollo del módulo de órdenes de trabajo y conexión entre la Landing Page y la Web Application.
- **Pierre Alessandro Mendoza Boluarte:** desarrollo de las interfaces de inventario de repuestos y apoyo en las pruebas de integración y adaptación responsive.

Esta matriz registra la asignación inicial. Las contribuciones efectivas deben sustentarse con los commits, Pull Requests y evidencias de integración incluidos en la revisión del sprint.

#### 5.2.2.3. Sprint Backlog 2.

El Sprint Backlog 2 registró las tareas definidas para implementar las interfaces principales de FixCore. Las tareas se vincularon con las User Stories consideradas para la cobertura del frontend y continuaron la numeración del Sprint Backlog 1.

La implementación utilizó componentes reutilizables, validaciones del lado del cliente y recursos suministrados mediante la API de prueba. El equipo utilizó Trello para hacer seguimiento de las tareas.

**Tablero de Sprint Backlog 2:**

https://trello.com/b/8djFNRhg/sprint-backlog-2-techmakers

**Sprint Backlog 2 — Planificación registrada**

| Story ID | Task ID | Task Title | Task Description | Estimation (hours) | Assigned To | Status |
|---|---|---|---|---:|---|---|
| Transversal | T011 | Configuración de la estructura del frontend | Configurar la estructura inicial de la aplicación, las carpetas, los componentes base y las rutas principales. | 3 | Córdova, Alvar Lucas | In Progress |
| US01, US02 | T012 | Implementar formularios de plantas | Desarrollar los formularios demostrativos para registrar y editar información de plantas. | 4 | Córdova, Alvar Lucas | In Progress |
| US03, US04 | T013 | Implementar registro de máquina | Implementar los formularios para registrar y actualizar la información de las máquinas. | 5 | Córdova, Alvar Lucas | In Progress |
| US05, US08 | T014 | Desarrollar la vista detallada de la máquina | Implementar la vista de información técnica y estado de una máquina. | 4 | Córdova, Alvar Lucas | In Progress |
| US09 | T015 | Desarrollar la vista del historial de la máquina | Implementar una vista del historial de fallas y mantenimientos con datos simulados. | 3 | Córdova, Alvar Lucas | In Progress |
| US10 | T016 | Elaborar un formulario de programación del mantenimiento | Implementar el formulario para programar mantenimientos preventivos. | 4 | Landa Sánchez, Sunio Danilo | In Progress |
| US14 | T017 | Elaborar un calendario de mantenimiento | Implementar el calendario para consultar los mantenimientos programados. | 4 | Landa Sánchez, Sunio Danilo | In Progress |
| US16 | T018 | Desarrollar la vista de próximos mantenimientos | Implementar una lista de mantenimientos próximos con fechas y estados. | 3 | Landa Sánchez, Sunio Danilo | In Progress |
| US17 | T019 | Identificar el mantenimiento atrasado| Incorporar indicadores visuales para identificar mantenimientos vencidos. | 3 | Landa Sánchez, Sunio Danilo | In Progress |
| Transversal | T020 | Integrar la navegación de mantenimiento | Integrar las pantallas del módulo de mantenimiento preventivo y comprobar su navegación. | 3 | Landa Sánchez, Sunio Danilo | In Progress |
| US19 | T021 | Elaborar un formulario de notificacion de averias | Implementar el formulario para reportar fallas de máquinas. | 4 | Villanueva Rodríguez, Giuseppe Adrián | In Progress |
| US20, US22 | T022 |Desarrollar la prioridad y los detalles del fallo | Implementar la visualización del detalle de una falla y el control de prioridad. | 4 | Villanueva Rodríguez, Giuseppe Adrián | In Progress |
| US21 | T023 | Desarrollar la vista fallos pendientes | Implementar una lista de fallas pendientes con filtros y estados. | 3 | Villanueva Rodríguez, Giuseppe Adrián | In Progress |
| US41 | T024 | Desarrollar el panel de control de operaciones | Implementar el dashboard con información demostrativa sobre las operaciones de mantenimiento. | 4 | Villanueva Rodríguez, Giuseppe Adrián | In Progress |
| US45 | T025 | Desarrollar indicadores de estado de las órdenes de trabajo | Incorporar indicadores visuales de órdenes pendientes, en progreso y completadas. | 3 | Villanueva Rodríguez, Giuseppe Adrián | In Progress |
| US23 | T026 | Elaborar un formulario de orden de trabajo correctivo | Implementar la interfaz para generar una orden correctiva desde una falla. | 5 | Rojas Huaranga, Diego Rances | In Progress |
| US25 | T027 | Desarrollar la interfaz de asignación de técnicos | Implementar el selector demostrativo para asignar técnicos a órdenes de trabajo. | 3 | Rojas Huaranga, Diego Rances | In Progress |
| US27 | T028 | Desarrollar la vista de ordenes de trabajo asignadas | Implementar la consulta de órdenes de trabajo asignadas. | 3 | Rojas Huaranga, Diego Rances | In Progress |
| US28, US29 | T029 | Desarrollar una interfaz para la ejecucion de ordenes de trabajo | Implementar las acciones para iniciar una orden y registrar el trabajo realizado. | 5 | Rojas Huaranga, Diego Rances | In Progress |
| US30 | T030 | Desarrollar la interfaz de cierre de órdenes de trabajo| Implementar el formulario y las acciones demostrativas para cerrar una orden de trabajo. | 4 | Rojas Huaranga, Diego Rances | In Progress |
| US64 | T031 | Conectar la Landing Page con la aplicación web | Incorporar un enlace funcional desde la Landing Page hacia el frontend de FixCore. | 3 | Rojas Huaranga, Diego Rances | In Progress |
| US31 | T032 | Elaborar un formulario de registro de piezas de recambio | Implementar el formulario para registrar repuestos. | 4 | Mendoza Boluarte, Pierre Alessandro | In Progress |
| US33 | T033 | Desarrollar la vista de existencias de piezas de recambio| Implementar una lista para consultar las existencias de repuestos. | 3 | Mendoza Boluarte, Pierre Alessandro | In Progress |
| US35 | T034 | Desarrollar la configuración de stock mínimo | Implementar los controles para establecer y visualizar el stock mínimo de un repuesto. | 3 | Mendoza Boluarte, Pierre Alessandro | In Progress |
| Transversal | T035 | Desarrollar componentes reutilizables para el inventario | Preparar componentes y validaciones compartidas para el módulo de inventario. | 3 | Mendoza Boluarte, Pierre Alessandro | In Progress |
| Transversal | T036 | Comprobar la integración y la capacidad de respuesta de la interfaz de usuario | Comprobar navegación, formularios, visualización responsive e integración de las interfaces. | 5 | Mendoza Boluarte, Pierre Alessandro | To Do |

**Resumen de actividades por integrante**

| Team Member | Tasks Assigned | Total Estimated Hours |
|---|---|---:|
| Córdova, Alvar Lucas | T011 - T015 | 19 |
| Landa Sánchez, Sunio Danilo | T016 - T020 | 17 |
| Villanueva Rodríguez, Giuseppe Adrián | T021 - T025 | 18 |
| Rojas Huaranga, Diego Rances | T026 - T031 | 23 |
| Mendoza Boluarte, Pierre Alessandro | T032 - T036 | 18 |
| **Total** | **26 tareas** | **95 horas** |

Las 95 horas son estimaciones del plan inicial, no horas efectivamente trabajadas ni evidencias de finalización. El alcance resultó amplio para una iteración centrada en frontend, por lo que las funcionalidades con dependencias de backend quedaron sujetas a integración y validación posteriores.

Los estados **To Do**, **In Progress** y **Done** reproducen el registro de planificación del Sprint Backlog. **No deben interpretarse como el estado final del Sprint 2**, ya que la evidencia de ejecución presenta vistas integradas con posterioridad. Antes de publicar el reporte de AV2, se deben conciliar estos estados con Trello, los commits y las pruebas realizadas, sin marcar tareas como finalizadas sin respaldo.

**Criterios para la revisión del frontend**

La revisión del Sprint 2 consideró los siguientes aspectos:

- Que las interfaces implementadas puedan abrirse y navegarse desde la aplicación.
- Que los formularios dispongan de campos adecuados y validaciones básicas.
- Que las tablas y vistas permitan presentar información de demostración.
- Que las acciones simuladas muestren resultados consistentes dentro de la interfaz.
- Que los componentes mantengan una presentación visual uniforme.
- Que las pantallas se adapten a diferentes tamaños de dispositivos.
- Que las funcionalidades desarrolladas cuenten con evidencia de pruebas y commits.

Estos criterios permiten revisar el avance del frontend. Una User Story solo debe considerarse terminada cuando cumpla los criterios de aceptación especificados en el Product Backlog; presentar una pantalla o consumir un recurso simulado no acredita necesariamente la historia completa.

#### 5.2.2.4. Development Evidence for Sprint Review.

Durante el Sprint 2 utilizamos Git y GitHub, con la extensión GitFlowHelper de Jetbrains Webstorm para gestionar los cambios realizados en el código fuente de la frontend web application. La siguiente tabla presenta los cambios de la aplicación web registrados en GitHub durante el desarrollo, identificando las ramas utilizadas, los responsables, los mensajes de commit y las fechas correspondientes.

| Repository | Branch | Commit ID | Commit Message | Commit Message Body | Committed on |
|---|---|---|---|---|---|
| Frontend | feature/frontend-setup-assets | b94f329 | chore(shared): integrate frontend services and reusable components | | Oct 8, 2026 |
| Frontend | feature/frontend-setup-assets | ad2c0d9 | feat(assets): add plant and machine management forms | | Oct 8, 2026 |
| Frontend | feature/frontend-setup-assets | 376e60f | feat(assets): add machine details and maintenance history | | Oct 8, 2026 |
| Frontend | feature/failures-dashboard | 3854c5a | feat(failures): implement failure reporting interface | | Oct 8, 2026 |
| Frontend | feature/failures-dashboard | 7f04637 | feat(failures): add failure details and pending reports | | Oct 8, 2026 |
| Frontend | feature/failures-dashboard | 93c4ca2 | feat(analytics): add operations dashboard and status indicators | | Oct 8, 2026 |
| Frontend | feature/preventive-maintenance | 4995d52 | feat(maintenance): implement preventive scheduling forms | | Oct 8, 2026 |
| Frontend | feature/preventive-maintenance | 2fe7221 | feat(maintenance): add calendar and maintenance status views| | Oct 8, 2026 |
| Frontend | feature/preventive-maintenance | 9796005 | feat(maintenance): integrate module navigation and routes| | Oct 8, 2026 |
| Frontend | feature/work-orders | fc52f8c | feat(work-orders): add work order creation and assignment | | Oct 8, 2026 |
| Frontend | feature/work-orders | 0867eb7 | feat(work-orders): implement execution and closing workflows | | Oct 8, 2026 |
| Frontend | feature/inventory-integration | 52d6549 | feat(inventory): add spare parts forms and shared validations| | Oct 8, 2026 |
| Frontend | feature/inventory-integration | d0224b4 | feat(inventory): implement stock views and minimum levels| | Oct 8, 2026 |
| Frontend | fix/frontend-integration-deployment | 5bab08c | feat: integrate FixCore Sprint 2 frontend and responsive Figma design | | Oct 8, 2026 |
| Frontend | fix/frontend-integration-deployment | 05375b4 | fix: apply Sprint 2 frontend audit corrections | | Oct 8, 2026 |


#### 5.2.2.5. Execution Evidence for Sprint Review.

**Video de presentación del Sprint 2:** [Ver video](https://upcedupe-my.sharepoint.com/:v:/g/personal/u20221c554_upc_edu_pe/IQAUYlQa0B7NQrXxJbTrLBoyAcmdZetyTMORm1Pi7hRGtfM?e=pniRwM)

Durante el Sprint 2 se implementó la primera versión de la Web Application de FixCore, desarrollada con Angular 22, TypeScript, Angular Material, RxJS y Angular Router. La aplicación está organizada por módulos orientados a la gestión del mantenimiento industrial, incluyendo Asset Management, Service Execution, Maintenance Planning, Inventory y Analytics, además de componentes y servicios compartidos para funcionalidades transversales.

La aplicación consume información desde una Fake API desplegada en Render, utilizando HttpClient para realizar las operaciones de consulta, registro, actualización y eliminación de datos. También se implementó un layout compartido mediante el componente Workspace Shell, encargado de la navegación principal, selección de planta, notificaciones y acceso a las diferentes funcionalidades según el rol del usuario.

* Selección de perfil: Pantalla inicial de FixCore donde el usuario puede seleccionar entre los perfiles Jefe de Planta, Gerente de Operaciones y Técnico de Mantenimiento, cada uno con funcionalidades específicas.

![Selección inicial de perfiles](assets/images/evidence-sprint2/image.png)

* Panel del Jefe de Planta: Dashboard con el estado general de la planta, máquinas detenidas, fallas críticas, órdenes de trabajo, mantenimientos e indicadores como tiempo muerto, MTTR y cumplimiento preventivo.

![Dashboard del jefe de planta](assets/images/evidence-sprint2/image-1.png)

* **Módulo de Máquinas — Jefe de Planta:** Gestión de máquinas y activos de la planta, con consulta de estados, información técnica y formularios de registro.

![Listado de máquinas](assets/images/evidence-sprint2/image-2.png)
![Registro de máquina](assets/images/evidence-sprint2/image-3.png)

* **Módulo de Fallas — Jefe de Planta:** Registro, consulta y seguimiento de incidencias reportadas sobre las máquinas.

![Listado de fallas](assets/images/evidence-sprint2/image-4.png)
*FILTRO DE FALLAS RESUELTAS*
![Filtro de fallas resueltas](assets/images/evidence-sprint2/image-5.png)
*REPORTAR FALLAS*
![Reporte de falla, paso 1](assets/images/evidence-sprint2/image-6.png)
*REPORTAR FALLAS 2DO PASO*
![Reporte de falla, paso 2](assets/images/evidence-sprint2/image-7.png)
*REPORTAR FALLAS 3ER PASO*
![Reporte de falla, paso 3](assets/images/evidence-sprint2/image-8.png)

* **Módulo de Órdenes de Trabajo — Jefe de Planta:** Consulta, creación y seguimiento de órdenes de trabajo asociadas con actividades de mantenimiento.

![Órdenes de trabajo](assets/images/evidence-sprint2/image-9.png)
![Registro de orden de trabajo](assets/images/evidence-sprint2/image-10.png)

* **Módulo de Mantenimiento Preventivo — Jefe de Planta:** Calendario con filtros de actividades próximas, vencidas o suspendidas, y opciones para programar o reprogramar mantenimientos.

![Calendario de mantenimiento preventivo](assets/images/evidence-sprint2/image-11.png)
*PREVENTIVOS VENCIDOS*
![Mantenimientos vencidos](assets/images/evidence-sprint2/image-12.png)
*PREVENTIVOS SUSPENDIDOS*
![Mantenimientos suspendidos](assets/images/evidence-sprint2/image-13.png)

* Módulo de Inventario - Jefe de Planta: Gestión de repuestos disponibles y seguimiento del stock utilizado en las actividades de mantenimiento.

![Inventario de repuestos](assets/images/evidence-sprint2/image-14.png)

* **Módulo de Reportes — Jefe de Planta:** Resumen de información de los módulos de mantenimiento y opciones de consulta o descarga.

![Reportes operativos](assets/images/evidence-sprint2/image-15.png)


* **Módulo Mi Planta — Jefe de Planta:** Consulta y mantenimiento de los datos generales de la planta.

![Datos de la planta](assets/images/evidence-sprint2/image-16.png)

* Resumen de Operaciones - Gerente de Operaciones: Vista general de todas las plantas con indicadores de disponibilidad, órdenes de trabajo abiertas, paradas, cumplimiento preventivo y MTTR.

![Resumen de operaciones](assets/images/evidence-sprint2/image-17.png)

* Módulo de Plantas - Gerente de Operaciones: Consulta y seguimiento del estado de las diferentes plantas gestionadas por la organización.

![Listado de plantas](assets/images/evidence-sprint2/image-18.png)

* Módulo de Técnicos - Gerente de Operaciones: Visualización de los técnicos disponibles, su planta asignada y las órdenes de trabajo pendientes.

![Listado de técnicos](assets/images/evidence-sprint2/image-19.png)

* Inicio del Técnico de Mantenimiento: Dashboard personalizado para el técnico con sus órdenes de trabajo pendientes, máquinas detenidas y próximos mantenimientos.

![Inicio del técnico](assets/images/evidence-sprint2/image-20.png)

* Mis Órdenes de Trabajo - Técnico: Listado de las órdenes asignadas al técnico, mostrando su estado, prioridad, tipo de mantenimiento y fechas.

![Órdenes asignadas al técnico](assets/images/evidence-sprint2/image-21.png)

* Módulo de Repuestos - Técnico: Consulta de los repuestos disponibles necesarios para la ejecución de las actividades de mantenimiento.

![Repuestos para mantenimiento](assets/images/evidence-sprint2/image-22.png)

* **Vista adicional de Repuestos — Técnico:** Presentación complementaria del inventario disponible para realizar actividades de mantenimiento.

![Vista adicional de repuestos del técnico](assets/images/evidence-sprint2/image-23.png)

* Reporte de Fallas - Técnico: Funcionalidad para que el técnico pueda reportar una nueva falla desde su panel de trabajo.

![Reporte de fallas del técnico](assets/images/evidence-sprint2/image-24.png)


#### 5.2.2.6. Services Documentation Evidence for Sprint Review.

Durante el Sprint 2 se configuró una **API simulada con JSON Server**. Esta implementación permitió que el frontend utilizara solicitudes HTTP para consultar, crear y actualizar recursos de demostración. Se trató de una herramienta para probar las interfaces, **no de los Web Services de desarrollo interno en Java y Spring Boot** requeridos para AV2. La documentación OpenAPI de los servicios propios se incorporará cuando se implemente el backend real.

A continuación se presentan los recursos y métodos documentados para la API simulada del Sprint 2. Estas operaciones deben distinguirse de los servicios propios previstos para la entrega AV2.

|Acción|Endpoint|Verbos HTTP|URL|
|:-----|:-------|:---------|:---------|
|Consultar usuarios de demostración (sin autenticación real)|/users|GET|https://fixcore-json-api.onrender.com/users|
|Consultar y actualizar información de plantas|/plants|GET, PUT|https://fixcore-json-api.onrender.com/plants|
|Consultar, actualizar y añadir maquinas|/assets/|GET, POST, PUT|https://fixcore-json-api.onrender.com/assets|
|Consultar, editar y agregar mantenimientos|/maintenance-plans|GET, POST ,PUT|https://fixcore-json-api.onrender.com/maintenance-plans|
|Consultar, editar y reportar fallos en maquinas|/failures|GET, POST, PUT|https://fixcore-json-api.onrender.com/failures|
|Consultar, actualizar y añadir ordenes de trabajo|/work-orders|GET, POST, PUT| https://fixcore-json-api.onrender.com/work-orders|
|Consultar, actualizar y agregar inventario de repuestos|/spare-parts|GET, POST, PUT|https://fixcore-json-api.onrender.com/spare-parts|
|Consultar y agregar movimientos de inventario |/stock-movements|GET, POST|https://fixcore-json-api.onrender.com/stock-movements|

La consulta de usuarios mediante `/users` pertenece únicamente al entorno de demostración. No debe utilizarse como sustituto de un mecanismo seguro de autenticación ni exponer contraseñas o información sensible en una API pública.

#### 5.2.2.7. Software Deployment Evidence for Sprint Review.

Durante el Sprint 2, el trabajo de despliegue se concentró en el frontend de FixCore y una API simulada con JSON Server, utilizados para demostrar las interfaces y sus operaciones HTTP.

**Publicación del Mock API**

Para publicar la mock API se ha utilizado Render, una plataforma que permite el despliegue de aplicaciones web, APIs, bases de datos, entre otros.

<div align="center">
  Se accede al sitio de Render con una cuenta creada, se hace click al botón New y se selecciona la opción Web Service<br><br>
  <img src="assets/images/sprint-2-api-deploy-1.jpeg" width="700"><br>
</div>

<div align="center">
  Dentro de la pestaña de New Web Service se vincula la cuenta de render con la de GitHub y se instala Render en el repositorio del Frontend de la organización<br><br>
  <img src="assets/images/sprint-2-api-deploy-2.jpeg" width="700"><br>
</div>


<div align="center">
  <img src="assets/images/sprint-2-api-deploy-3.jpeg" width="700"><br>
</div>

<div align="center">
  Al seleccionar Only select repositories se puede seleccionar solo el repositorio con la mock API<br><br>
  <img src="assets/images/sprint-2-api-deploy-4.jpeg" width="700"><br>
</div>

<div align="center">
  Una vez instalado, se selecciona el repositorio con la mock API, en nuestro caso se encuentra en TechMakers / Frontend<br><br>
  <img src="assets/images/sprint-2-api-deploy-5.jpeg" width="700"><br>
</div>

<div align="center">
  Se configura el nombre del servicio, la rama de la cual se desplegará, el lenguaje del servicio y otras configuraciones como la región <br><br>
  <img src="assets/images/sprint-2-api-deploy-6.jpeg" width="700"><br>
</div>

<div align="center">
  Para esta demostración se configuró el servicio `fixcore-json-api` con los comandos de instalación y ejecución de JSON Server, tomando como origen el archivo `public/mock/db.json` y utilizando el puerto asignado por Render.<br><br>
  <img src="assets/images/sprint-2-api-deploy-9.jpeg" width="700"><br>
</div>

<div align="center">
  Es posible asignarle más recursos al servidor o solo usar el plan gratis <br><br>
  <img src="assets/images/sprint-2-api-deploy-7.jpeg" width="700"><br>
</div>

<div align="center">
  Para nuestro caso se usará el plan gratis <br><br>
  <img src="assets/images/sprint-2-api-deploy-10.jpeg" width="700"><br>
</div>

<div align="center">
  Una vez configurado, se presiona el botón Deploy Web Service <br><br>
  <img src="assets/images/sprint-2-api-deploy-8.jpeg" width="700"><br>
</div>

<div align="center">
  Al desplegarse, primero se ejecuta el build command definido previamente <br><br>
  <img src="assets/images/sprint-2-api-deploy-11.jpeg" width="700"><br>
</div>

<div align="center">
  Al desplegarse, primero se ejecuta el build command definido previamente <br><br>
  <img src="assets/images/sprint-2-api-deploy-12.jpeg" width="700"><br>
</div>


Dirección del Mock API: [https://fixcore-json-api.onrender.com/](https://fixcore-json-api.onrender.com/)


**Publicación del Frontend web application**

Para el despliegue de la aplicación web de FixCore se usó Vercel, el cual es una plataforma de despliegue y alojamiento en la nube para sitios y aplicaciones web.

<div align="center">
  Se accede al sitio de Vercel con una cuenta y se selecciona la opción de GitHub como Git Provider<br><br>
  <img src="assets/images/sprint-2-frontend-deploy-1.jpeg" width="700"><br>
</div>

<div align="center">
  Se instala Vercel en el repositorio Frontend de FixCore.<br><br>
  <img src="assets/images/sprint-2-frontend-deploy-2.jpeg" width="700"><br>
</div>

<div align="center">
  Una vez instalado y vinculado, se puede importar el repositorio Frontend<br><br>
  <img src="assets/images/sprint-2-frontend-deploy-3.jpeg" width="700"><br>
</div>

<div align="center">
  Al importarlo se redirige a la pestaña de creación de proyecto<br><br>
  <img src="assets/images/sprint-2-frontend-deploy-4.jpeg" width="700"><br>
</div>

<div align="center">
  Se desglosan los menús Build and Output Settings y Environment Variables<br><br>
  <img src="assets/images/sprint-2-frontend-deploy-5.jpeg" width="700"><br>
</div>

<div align="center">
  Se realiza la configuración necesaria en Build and Output Settings, con los comandos de compilacion e instalación, asi como el directorio de salida<br><br>
  <img src="assets/images/sprint-2-frontend-deploy-6.jpeg" width="700"><br>
</div>

<div align="center">
  Al seleccionar la opción Deploy se despliega el proyecto y se continua presionando el botón Continue to Project<br><br>
  <img src="assets/images/sprint-2-frontend-deploy-7.jpeg" width="700"><br>
</div>

<div align="center">
  Dentro de la pagina del proyecto se accede a la sección Environments y se selecciona el entorno de producción<br><br>
  <img src="assets/images/sprint-2-frontend-deploy-8.jpeg" width="700"><br>
</div>

<div align="center">
  Una vez en el entorno de configuración se configura el Branch tracking<br><br>
  <img src="assets/images/sprint-2-frontend-deploy-9.jpeg" width="700"><br>
</div>

<div align="center">
  Allí se puede configurar la rama que se va a usar para el despliegue, se usa una rama fix para pruebas<br><br>
  <img src="assets/images/sprint-2-frontend-deploy-10.jpeg" width="700"><br>
</div>

<div align="center">
  En la sección de Deployments del proyecto se observa el estado de compilación del frontend<br><br>
  <img src="assets/images/sprint-2-frontend-deploy-11.jpeg" width="700"><br>
</div>


**Web Application desplegada:** [https://fixcore-frontend-eight.vercel.app/demo](https://fixcore-frontend-eight.vercel.app/demo)


#### 5.2.2.8. Team Collaboration Insights during Sprint.

Durante el Sprint 2 desarrollamos la primera versión de la Web Application de FixCore, distribuyendo las responsabilidades entre los cinco integrantes de TechMakers según los módulos y funcionalidades del sistema. Cada miembro asumió tareas específicas de implementación y colaboró con el equipo durante las revisiones, pruebas e integración de los cambios.

Para coordinar el trabajo utilizamos reuniones virtuales, Trello y GitHub. El tablero del Sprint Backlog permitió organizar las tareas, realizar un seguimiento de su progreso y asignar responsabilidades, mientras que el repositorio facilitó el control de versiones y el registro de los commits realizados por los integrantes.
El desarrollo se realizó utilizando Angular, TypeScript y Angular Material, organizando la aplicación en módulos relacionados con la gestión de activos, mantenimiento, órdenes de trabajo, inventario y analítica. Asimismo, se implementaron interfaces diferenciadas para los perfiles de Jefe de Planta, Gerente de Operaciones y Técnico de Mantenimiento, con funcionalidades adaptadas a las responsabilidades de cada usuario. Durante la integración fue necesario revisar la navegación, la presentación de los componentes y el funcionamiento de las distintas vistas para mantener una experiencia de usuario coherente.

El trabajo realizado permitió establecer y desplegar la estructura principal de la Web Application, con módulos de mantenimiento industrial, navegación compartida y vistas adaptadas a distintos perfiles. Las pruebas con JSON Server ayudaron a identificar ajustes de integración y navegación antes de incorporar el backend de elaboración interna.

**Aspectos pendientes para el Sprint 3:** implementar inicio de sesión y control de acceso sobre cuentas reales, construir y desplegar los primeros servicios RESTful con Java y Spring Boot, integrar al menos un flujo de negocio con persistencia y comprobar su funcionamiento de extremo a extremo. Las pantallas que todavía dependan de datos simulados deberán identificarse como tales en las evidencias de AV2.

Métricas de colaboración:

![Métricas de colaboración del Sprint 2](assets/images/evidence-sprint2/evidence-sprint2.png)


<div style="page-break-after: always;"></div>


### 5.2.3. Sprint 3.

El Sprint 3 inicia el **16 de octubre de 2026**. En esta primera etapa, los integrantes activos de TechMakers se concentrarán en tres productos que ya cuentan con una base de desarrollo: **Frontend Web Application, Landing Page y Project Report**. El propósito es mejorar la navegación y el diseño de FixCore, incorporar la interfaz de inicio de sesión, ajustar los flujos de mantenimiento que ya existen y mantener actualizadas las evidencias del informe.

El equipo está reorganizando sus responsabilidades para continuar el proyecto con cuatro integrantes: Alvar Lucas Córdova, Giuseppe Adrián Villanueva Rodríguez, Diego Rances Rojas Huaranga y Pierre Alessandro Mendoza Boluarte. La distribución propuesta asigna a Alvar la mayor carga de trabajo, principalmente en el frontend y la documentación, mientras los demás integrantes mantienen tareas concretas de apoyo e implementación. Los aportes de Sunio Danilo Landa Sánchez realizados en Sprint 1 y Sprint 2 permanecen en los registros históricos.

**Alcance de esta etapa:** las tareas T037–T050 abarcan exclusivamente frontend, Landing Page y Report. El backend propio, las entrevistas de validación y los videos obligatorios de AV2 **no se incluyen todavía en esta distribución de trabajo**; el equipo deberá planificarlos y documentarlos más adelante, antes de la entrega de la semana 12. Por lo tanto, este Sprint Backlog es una **planificación parcial en evolución**, no la cobertura completa de AV2 ni una lista de funcionalidades terminadas.

#### 5.2.3.1. Sprint Planning 3.

El equipo inicia Sprint 3 tomando como referencia la Web Application Angular implementada en Sprint 2, la Landing Page publicada en GitHub Pages y el informe del proyecto reorganizado por capítulos. En esta etapa se mejorarán las funcionalidades visibles y la calidad de la documentación, sin presentar como reales operaciones de autenticación o persistencia que todavía dependen de servicios no implementados.

| Campo | Información |
|---|---|
| Sprint # | Sprint 3 |
| **Sprint Planning Background** | |
| Start Date | 2026-10-16 |
| Planning Meeting Date and Time | Pendiente de confirmación por el equipo |
| Location | Pendiente de confirmación |
| Prepared By | Alvar Lucas Córdova — propuesta de coordinación |
| Proposed Participants | Alvar Lucas Córdova, Giuseppe Adrián Villanueva Rodríguez, Diego Rances Rojas Huaranga y Pierre Alessandro Mendoza Boluarte |
| Sprint 2 Review Summary | Se desarrolló la primera versión del frontend de FixCore con módulos demostrativos de plantas, máquinas, mantenimiento preventivo, fallas, órdenes de trabajo e inventario. La aplicación utilizó JSON Server y se publicó en Vercel. |
| Sprint 2 Retrospective Summary | La integración por módulos permitió completar una versión navegable, pero el alcance inicial fue amplio. Para mejorar el seguimiento se priorizarán tareas de frontend y documentación más específicas, con responsables y criterios de revisión claros. |
| **Sprint Goal & User Stories** | |
| Sprint 3 Goal | **Our focus is on** improving the existing FixCore frontend, preparing its login interface, refining key maintenance screens, updating the Landing Page, and keeping project documentation consistent. **We believe it delivers** a clearer and more reliable demonstrative experience that the team can review before integrating further services. **This will be confirmed when** the planned screens and navigation work with demonstration data, both published websites can be accessed, and the report contains traceable changes and evidence of the activities completed. |
| Initial Scope | Frontend, Landing Page and Project Report only |
| Product Backlog References | US54 (solo interfaz de Login), US64 (acceso desde Landing Page) y mejoras parciales de interfaces relacionadas con US01, US03, US19 y US23. No se atribuye cumplimiento completo de dichas historias por mejoras visuales. |
| Estimated Tasks | 14 tareas iniciales, T037–T050 |
| Estimated Workload | 58 horas propuestas para los cuatro integrantes |
| Sprint 3 Velocity | Pendiente de determinar a partir de historias íntegramente aceptadas; el avance parcial de interfaces no genera Story Points terminados automáticamente |

**Priorización de funcionalidades.** El trabajo principal comenzará por la vista de Login, sus validaciones de formulario y una navegación demostrativa de perfiles. Después se revisarán las interfaces de plantas y máquinas, la navegación común y las pantallas de fallas y órdenes de trabajo. En paralelo se verificará que los botones de la Landing Page dirijan a la aplicación, que las versiones en español e inglés mantengan el contenido adecuado y que los capítulos del informe sean consistentes con el trabajo realizado.

**Limitación del Login.** En esta etapa se implementarán la interfaz y la estructura del servicio Angular que permitirá conectarse posteriormente a una API de autenticación. Sin backend, la selección de perfiles o cualquier simulación de entrada tendrá exclusivamente fines de demostración; **no equivale a autenticar usuarios, proteger recursos o administrar sesiones seguras**. No se utilizará JSON Server para exponer contraseñas ni se afirmará que las rutas están protegidas por una autorización real.

#### 5.2.3.2. Aspect Leaders and Collaborators.

Para esta etapa del Sprint 3 se propone la siguiente distribución. **L** identifica al principal responsable del área y **C** la colaboración. Las asignaciones deberán confirmarse en la reunión del equipo y actualizarse en Trello.

| Team Member | GitHub Username | Frontend Login & Forms | Frontend UX & Navigation | Landing Page | Report & Evidence |
|---|---|:---:|:---:|:---:|:---:|
| Córdova, Alvar Lucas | AlvarLC | L | C | C | L |
| Villanueva Rodríguez, Giuseppe Adrián | Giuseppe152004 | C | L | C | C |
| Rojas Huaranga, Diego Rances | diego27-16 | C | C | L | C |
| Mendoza Boluarte, Pierre Alessandro | pierreale2302 | C | C | C | C |

Alvar coordinará el trabajo técnico de Login y formularios del frontend, además de mantener la documentación. Giuseppe se concentrará en mejorar las pantallas y la navegación ya implementadas. Diego realizará los ajustes de la Landing Page y sus enlaces con la Web Application. Pierre apoyará en pruebas de interfaz, revisión responsive y verificación de enlaces. La colaboración deberá acreditarse después mediante tareas completadas, commits y Pull Requests.

#### 5.2.3.3. Sprint Backlog 3.

El Sprint Backlog continúa la numeración del Sprint 2, cuyo último identificador es T036. **Todas las actividades siguientes se encuentran propuestas y en estado To Do** hasta verificar sus avances en GitHub y Trello. Las horas son estimaciones iniciales de esfuerzo, no registros de tiempo ejecutado.

| Story ID / Scope | Task ID | Task Title | Task Description | Estimated Hours | Proposed Owner | Status |
|---|---|---|---|---:|---|---|
| US54 (interfaz parcial) | T037 | Build Angular Login View | Crear una pantalla de Login coherente con el diseño de FixCore, con campos, etiquetas, navegación y mensajes de ayuda. | 5 | Alvar Lucas Córdova | To Do |
| US54 (interfaz parcial) | T038 | Validate Login Form and Prepare Service | Agregar validaciones de formulario y una interfaz de servicio Angular desacoplada, preparada para incorporar autenticación real posteriormente. | 4 | Alvar Lucas Córdova | To Do |
| Frontend demostrativo | T039 | Refine Profile Navigation | Mejorar la navegación demostrativa entre perfiles, el regreso al Login y la acción visual de salida, sin atribuirle seguridad real. | 4 | Alvar Lucas Córdova | To Do |
| US01, US03 (interfaz parcial) | T040 | Improve Plants and Machines Forms | Revisar campos, validaciones y mensajes de las vistas de plantas y máquinas; conservar datos de demostración cuando corresponda. | 5 | Alvar Lucas Córdova | To Do |
| US64 | T041 | Verify Landing Page Call-to-Action | Revisar los botones que conducen desde la Landing Page a la Web Application y a la futura vista de Login; corregir enlaces incorrectos. | 3 | Diego Rances Rojas Huaranga | To Do |
| Landing Page | T042 | Review Landing Page Languages and Layout | Comprobar las versiones en español e inglés, enlaces legales, navegación y presentación responsive. | 5 | Diego Rances Rojas Huaranga | To Do |
| US19, US23 (interfaz parcial) | T043 | Refine Failure and Work Order Screens | Corregir estados visuales, formularios y navegación de los flujos demostrativos de fallas y órdenes de trabajo. | 5 | Giuseppe Adrián Villanueva Rodríguez | To Do |
| Frontend | T044 | Improve Shared Navigation and Responsive UI | Revisar componentes compartidos, menú, adaptación a pantallas y consistencia visual entre perfiles. | 4 | Giuseppe Adrián Villanueva Rodríguez | To Do |
| Frontend | T045 | Test Frontend Demonstrative Flows | Comprobar Login demostrativo, vistas de máquinas y principales flujos visuales; registrar defectos encontrados. | 4 | Pierre Alessandro Mendoza Boluarte | To Do |
| Landing Page | T046 | Test Landing Page Links and Viewports | Verificar enlaces, navegación entre idiomas y visualización en escritorio y móvil. | 3 | Pierre Alessandro Mendoza Boluarte | To Do |
| Report | T047 | Review Sprint 1 and Sprint 2 Records | Conciliar los estados de tareas, commits y evidencias históricas con los registros existentes, sin alterar resultados anteriores sin sustento. | 4 | Alvar Lucas Córdova | To Do |
| Report | T048 | Document Sprint 3 Frontend and Landing Evidence | Incorporar actividades completadas, commits, capturas y resultados verificables de esta etapa del Sprint 3. | 5 | Alvar Lucas Córdova | To Do |
| Report | T049 | Update Student Outcome and Project Report | Actualizar registro de versiones, Student Outcome, conclusiones y referencias relacionadas con el avance real. | 4 | Alvar Lucas Córdova | To Do |
| Report | T050 | Validate Markdown Index and Asset References | Comprobar enlaces del README, rutas de capítulos, imágenes y presentación Markdown del informe antes de los cambios de versión. | 3 | Alvar Lucas Córdova | To Do |

**Resumen de asignaciones propuestas**

| Integrante | Tareas | Horas estimadas |
|---|---|---:|
| Córdova, Alvar Lucas | T037, T038, T039, T040, T047, T048, T049, T050 | 34 |
| Villanueva Rodríguez, Giuseppe Adrián | T043, T044 | 9 |
| Rojas Huaranga, Diego Rances | T041, T042 | 8 |
| Mendoza Boluarte, Pierre Alessandro | T045, T046 | 7 |
| **Total** | **14 tareas** | **58** |

El reparto responde a la reorganización de los integrantes activos para esta etapa. Alvar asume la mayor parte de las tareas, pero los tiempos y responsables deberán confirmarse con los demás. Sunio no tiene tareas nuevas en este plan; sus aportes históricos permanecen en la documentación de los Sprints 1 y 2.

**Criterios de revisión.** Una tarea de interfaz se marcará como terminada cuando el cambio esté integrado y se haya comprobado su comportamiento con los datos de demostración disponibles. Una tarea de documentación requerirá enlaces, capturas y commits verificables. Las User Stories que dependen de servicios propios o autenticación real permanecerán como parciales hasta cumplir todos sus criterios de aceptación. Las tareas de backend y el resto de entregables de AV2 se incorporarán mediante una actualización posterior de la planificación, antes del cierre de la semana 12.

#### 5.2.3.4. Development Evidence for Sprint Review.

Se registrarán los cambios realmente realizados en los repositorios **Frontend**, **Landing-Page** y **Report**, incluyendo la rama, el identificador del commit, su mensaje, la fecha y las responsabilidades verificadas. Las evidencias se incorporarán conforme el equipo termine las tareas y revise los Pull Requests. Por ahora no se registran commits de Sprint 3 como si ya se hubieran producido.

#### 5.2.3.5. Execution Evidence for Sprint Review.

La revisión de esta etapa presentará, cuando estén implementados y probados, los siguientes escenarios: abrir la nueva pantalla de Login y validar sus campos; navegar entre perfiles en modo demostración; consultar y registrar datos de prueba desde las vistas de plantas y máquinas; recorrer las pantallas principales de fallas y órdenes de trabajo; y acceder desde los botones de la Landing Page a las rutas correspondientes de la Web Application. Se incluirán capturas, resultados de revisión y enlaces a los videos de demostración únicamente cuando estos existan.

Se indicará expresamente qué flujos continúan utilizando datos simulados. No se presentará la interfaz de Login como inicio de sesión seguro ni se afirmará que se ha implementado persistencia propia.

#### 5.2.3.6. Services Documentation Evidence for Sprint Review.

En esta primera etapa del Sprint 3 **no se han asignado actividades de desarrollo ni documentación de Web Services propios**. La API simulada de JSON Server utilizada en Sprint 2 permanece como apoyo para las pantallas demostrativas, sin considerarse un backend de elaboración interna. Esta subsección se actualizará posteriormente cuando el equipo defina, implemente y pruebe el alcance de servicios requerido para AV2; mientras tanto, no se registran endpoints propios ni evidencias OpenAPI como completados.

#### 5.2.3.7. Software Deployment Evidence for Sprint Review.

Los productos previstos para revisión y publicación durante esta primera etapa son la **Landing Page en GitHub Pages** y la **Web Application Angular en Vercel**. La documentación mostrará las configuraciones y versiones realmente publicadas, junto con capturas y pruebas de acceso. La publicación de servicios propios queda fuera de las tareas asignadas actualmente y deberá planificarse antes de la entrega AV2.

#### 5.2.3.8. Team Collaboration Insights during Sprint.

La colaboración de los cuatro integrantes activos se registrará mediante el Sprint Backlog, commits, Pull Requests, reuniones y revisiones del frontend, la Landing Page y el Report. Al cerrar esta etapa, la sección incluirá los resultados efectivos, problemas detectados y acciones de mejora. No se atribuirá trabajo del Sprint 3 a quien no haya participado, pero se mantendrá el reconocimiento de las contribuciones históricas que correspondan.

### 5.3. Validation Interviews.

Las entrevistas de validación constituyen un requisito de AV2. **Todavía no se han asignado tareas ni fechas para esta actividad dentro de la distribución T037–T050**, limitada a frontend, Landing Page y Report. Antes de la entrega de la semana 12 el equipo deberá planificar las sesiones con representantes de los segmentos objetivo y registrar sus resultados reales.

#### 5.3.1. Diseño de Entrevistas.

Pendiente de planificación: definir participantes, tareas de interacción con los productos, preguntas y criterios de evaluación heurística. No se registrarán sesiones que todavía no se hayan programado ni realizado.

#### 5.3.2. Registro de Entrevistas.

Pendiente de ejecución: incluir las entrevistas efectivamente realizadas con sus fechas, enlaces a videos y observaciones. La información de los participantes deberá tratarse conforme a su autorización.

#### 5.3.3. Evaluaciones según heurísticas.

Pendiente de ejecución: analizar los resultados de las sesiones de validación utilizando los criterios de usabilidad, arquitectura de información y diseño inclusivo requeridos por el curso.

### 5.4. Video About-the-Product.

La primera versión de Video About-the-Product se encuentra pendiente de planificación en esta etapa. Para AV2 deberá presentar el producto, sus flujos demostrables y al menos un testimonio positivo obtenido de una entrevista de validación real, conforme al enunciado. El enlace y las capturas se incluirán después de producir y publicar el material correspondiente.

**Video About-the-Team.** También se encuentra pendiente de planificación y publicación para AV2. Su contenido deberá presentar los aportes efectivamente realizados, sin omitir las contribuciones históricas de los integrantes que participaron en sprints anteriores.
