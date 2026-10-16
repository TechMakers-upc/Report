# Capítulo V: Product Implementation, Validation & Deployment

## 5.1. Software Configuration Management.

En esta sección se describen las herramientas, los repositorios y las convenciones utilizadas para organizar el desarrollo de FixCore. Se diferencia la configuración aplicada durante los Sprints 1 y 2 de la infraestructura de backend que se planifica incorporar en el Sprint 3.

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
| Java y Spring Boot | Tecnologías previstas para implementar los Web Services propios en Sprint 3. | https://spring.io/projects/spring-boot |
| Spring Data JPA | Persistencia de entidades del backend, prevista para Sprint 3. | https://spring.io/projects/spring-data-jpa |

Las versiones efectivamente utilizadas y la configuración de ejecución deben contrastarse con los archivos de cada repositorio. En particular, **Java, Spring Boot y Spring Data JPA corresponden al trabajo planificado para Sprint 3**, no a funcionalidades ya entregadas en Sprint 2.

**Software Deployment**

| Producto | Propósito de uso | Referencia |
|---|---|---|
| GitHub Pages | Publicación del sitio estático de la Landing Page. | https://pages.github.com/ |
| Vercel | Despliegue de la Web Application desarrollada en Angular. | https://vercel.com/ |
| Render | Despliegue de JSON Server durante Sprint 2; se considera también para publicar la API propia de Sprint 3. | https://render.com/ |

**Software Documentation**

| Producto o estándar | Propósito de uso | Referencia |
|---|---|---|
| Markdown | Elaboración colaborativa del informe y su organización por capítulos. | https://www.markdownguide.org/ |
| OpenAPI | Descripción de los endpoints HTTP y sus contratos para la primera API propia del Sprint 3. | https://www.openapis.org/ |

### 5.1.2. Source Code Management.

El equipo utiliza Git y GitHub para administrar las versiones de los productos y mantener evidencia de las contribuciones. Los repositorios conocidos de la organización son los siguientes:

| Repositorio | Propósito | URL |
|---|---|---|
| Report | Informe del proyecto, capítulos y evidencias de desarrollo. | https://github.com/TechMakers-upc/Report |
| Landing-Page | Sitio estático público de FixCore, incluyendo las versiones en español e inglés. | https://github.com/TechMakers-upc/Landing-Page |
| Frontend | Aplicación Angular y recursos utilizados para la demostración del Sprint 2. | https://github.com/TechMakers-upc/Frontend |
| Backend | Servicios Java y Spring Boot previstos para Sprint 3. | Repositorio y URL pendientes de confirmación por el equipo. |

Para organizar las contribuciones se aplica una estrategia basada en GitFlow. La rama `main` se reserva para versiones estables, `develop` concentra la integración del trabajo y las ramas `feature/*` permiten desarrollar cambios específicos sin modificar directamente la versión principal. Los cambios se revisan antes de su integración y se describen mediante Conventional Commits, por ejemplo `feat:`, `fix:`, `docs:` y `refactor:`.

Para las entregas que requieran preparar una versión estable, el equipo contempla el uso de ramas `release/*`; para correcciones urgentes en producción, `hotfix/*`. Estas convenciones deberán aplicarse cuando se presente la necesidad, sin afirmar que ya existen ramas de dichos tipos. Las versiones publicadas podrán identificarse mediante etiquetado compatible con Semantic Versioning una vez definido el esquema de releases.

### 5.1.3. Source Code Style Guide & Conventions.

Con el fin de facilitar la integración de cambios entre los integrantes, se establecen las siguientes convenciones de desarrollo:

- **Nomenclatura:** utilizar identificadores en inglés para archivos de código, variables, funciones, clases, interfaces y componentes. Las clases y tipos siguen las convenciones de cada lenguaje; los nombres de métodos y variables se mantienen consistentes dentro de su módulo.
- **HTML y CSS:** emplear estructura semántica, estilos organizados y reglas adaptables a diferentes tamaños de pantalla, tomando como referencia las guías de estilo web de Google.
- **JavaScript y TypeScript:** mantener funciones con responsabilidades claras y evitar la duplicación innecesaria de lógica, siguiendo las guías de estilo correspondientes.
- **Angular:** organizar vistas, componentes y servicios por responsabilidad, aplicar tipado de TypeScript y conservar un sistema de navegación consistente.
- **Java y Spring Boot:** utilizar las convenciones habituales de Java, separar las responsabilidades entre controladores, servicios y persistencia, y validar los datos recibidos. Estas decisiones se aplicarán al backend previsto para Sprint 3.
- **User Stories:** redactar criterios de aceptación verificables en formato Given–When–Then, evitando confundir requisitos de negocio con detalles de una implementación particular.
- **Git:** redactar mensajes de commit descriptivos, utilizar ramas por funcionalidad y revisar los cambios antes de integrarlos.

Como referencias se consideran las guías de Angular, Google TypeScript, Google Java, Google HTML/CSS y la documentación de Spring Boot, incluidas en la bibliografía del proyecto. La aplicación efectiva de estas convenciones deberá demostrarse mediante código y revisiones, no únicamente por su descripción en el informe.

### 5.1.4. Software Deployment Configuration.

El equipo mantiene diferentes medios de publicación según el producto de software. Cada despliegue se documenta con el entorno utilizado, la configuración necesaria y las evidencias de funcionamiento.

**Landing Page — GitHub Pages**

La Landing Page está construida con HTML, CSS y JavaScript. Su publicación se realiza mediante GitHub Pages a partir de la rama y carpeta configuradas en el repositorio. Después de integrar cambios y actualizar la versión publicada, se verifica la navegación en español e inglés, los enlaces legales, el menú responsive y los botones de acceso a la Web Application.

- Repositorio: https://github.com/TechMakers-upc/Landing-Page
- URL documentada de despliegue: https://techmakers-upc.github.io/Landing-Page/

**Web Application — Vercel**

La aplicación Angular se publicó en Vercel durante Sprint 2. El despliegue requiere instalar dependencias, compilar el proyecto y configurar los parámetros adecuados para su ejecución. Durante esa entrega, las vistas consumieron recursos de JSON Server. Para Sprint 3 se deberá configurar la dirección del nuevo backend y comprobar los flujos integrados desde el entorno publicado.

- Repositorio: https://github.com/TechMakers-upc/Frontend
- URL documentada de la aplicación: https://fixcore-frontend-eight.vercel.app/demo

**API simulada — Render (Sprint 2)**

Durante Sprint 2 se publicó una instancia de JSON Server en Render para apoyar las demostraciones. Esta API permite operaciones HTTP sobre datos de prueba, pero no implementa por sí misma las reglas de negocio, persistencia relacional ni mecanismos de seguridad exigidos para la solución final.

- URL documentada de la API simulada: https://fixcore-json-api.onrender.com/

**Web Services propios — Sprint 3 (planificación)**

Se prevé construir y desplegar una primera API RESTful con Java, Spring Boot y Spring Data JPA. Antes de su publicación, el equipo deberá seleccionar una base de datos persistente, configurar las variables de entorno y la conexión desde Angular, proteger las credenciales, definir CORS y verificar los endpoints y la documentación OpenAPI. El repositorio, el proveedor definitivo y la URL de despliegue se consignarán cuando estén confirmados. **Este despliegue todavía no se presenta como realizado.**

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

El **Sprint 3 comienza el 16 de octubre de 2026** y estará orientado a convertir una parte verificable del frontend desarrollado en el Sprint 2 en una experiencia integrada con servicios RESTful de elaboración propia. El trabajo tendrá como prioridades implementar el **inicio de sesión en Angular**, establecer el servicio de autenticación en **Java con Spring Boot**, integrar la gestión de plantas y máquinas con persistencia y preparar una nueva versión desplegada de la solución para la evaluación AV2 de la semana 12.

La aplicación ya cuenta con interfaces y flujos demostrativos, por lo que no se pretende reconstruir todos los módulos ni prometer la implementación completa del Product Backlog durante esta iteración. Se priorizarán funcionalidades capaces de probarse de extremo a extremo, desde una acción del usuario en Angular hasta una respuesta del backend y el almacenamiento de la información. Los módulos restantes podrán continuar con datos simulados mientras se construyen sus servicios definitivos, siempre que esta limitación quede clara en el informe y en la demostración.

Además de las funcionalidades del producto, AV2 requiere actualizar la Landing Page, documentar los servicios, realizar entrevistas de validación, publicar las primeras versiones de los videos About-the-Product y About-the-Team y registrar evidencias de desarrollo, despliegue y colaboración. **Este apartado constituye la planificación inicial del Sprint 3; ninguna de las tareas descritas a continuación debe interpretarse como implementada mientras no exista evidencia de ejecución.**

#### 5.2.3.1. Sprint Planning 3.

El Sprint Planning 3 se organiza a partir de las observaciones del Sprint 2: la Web Application cuenta con vistas integradas, pero depende de una API simulada y no dispone todavía de autenticación real. Por esta razón, el equipo dará prioridad a una base técnica segura y a un flujo funcional integrado con el backend. El alcance deberá revisarse durante la planificación y ajustarse a la capacidad efectiva de los integrantes.

| Campo | Información |
|---|---|
| Sprint # | Sprint 3 |
| **Sprint Planning Background** | |
| Start Date | 2026-10-16 |
| Planning Meeting Date and Time | Por confirmar y registrar al realizar la reunión |
| Location | Por confirmar (reunión presencial o virtual) |
| Prepared By | Alvar Lucas Córdova — coordinación de la planificación |
| Proposed Participants | Alvar Lucas Córdova, Sunio Danilo Landa Sánchez, Giuseppe Adrián Villanueva Rodríguez, Diego Rances Rojas Huaranga y Pierre Alessandro Mendoza Boluarte |
| Sprint 2 Review Summary | Se desarrolló y desplegó la primera versión de la Web Application en Angular, con módulos de mantenimiento industrial y consumo de datos mediante JSON Server. Se identificó como principal pendiente la implementación de Web Services propios, autenticación real y flujos integrados con persistencia. |
| Sprint 2 Retrospective Summary | El trabajo paralelo por módulos permitió avanzar con varias interfaces; sin embargo, el tamaño del backlog considerado dificultó determinar historias terminadas y aumentó el esfuerzo de integración. En el Sprint 3 se priorizará un alcance menor, criterios de aceptación comprobables y pruebas de extremo a extremo. |
| **Sprint Goal & User Stories** | |
| Sprint 3 Goal | **Our focus is on** implementing secure login and the first internally developed RESTful services for FixCore, integrating Angular with persistent data for the selected asset-management workflows. **We believe it delivers** a usable end-to-end foundation that replaces simulated requests in the prioritized flows and supports further integration. **This will be confirmed when** users can sign in with valid credentials, access the appropriate views, register and consult asset information through deployed Spring Boot endpoints, and the results are verified through functional tests and documented evidence. |
| Initial Scope | US54, TS01, TS02, US01, US03 and verification of US64 |
| Candidate Story Points | 26 SP associated with the selected Product Backlog items; **proposed scope, not completed velocity** |
| Sprint 3 Velocity | To be calculated after the Sprint Review from fully accepted stories |
| Additional Scope | TS04 and US19 only if the main scope is completed and the team confirms sufficient capacity |

**Prioritized Product Backlog items**

| Priority | ID | Product Backlog Item | Original Story Points | Sprint 3 Objective |
|---|---|---|---:|---|
| Must Have | US54 | Iniciar sesión | 3 | Crear la pantalla de inicio de sesión y permitir el acceso mediante credenciales verificadas por el backend. |
| Must Have | TS01 | Servicio de autenticación | 5 | Implementar el servicio de autenticación, el almacenamiento seguro de contraseñas y la protección de rutas y recursos. |
| Must Have | TS02 | Servicio de plantas y máquinas | 8 | Desarrollar endpoints RESTful de plantas y máquinas con validaciones y persistencia. |
| Must Have | US01 | Registrar planta | 3 | Registrar y consultar plantas mediante la API propia, para poder asociar máquinas. |
| Must Have | US03 | Registrar máquina | 5 | Registrar una máquina vinculada con una planta mediante el frontend y el backend real. |
| Must Have | US64 | Acceder a la Web Application | 2 | Verificar que los llamados a la acción de la Landing Page conduzcan al flujo adecuado de acceso a FixCore. |
| Conditional | TS04 | Servicio de fallas y órdenes de trabajo | 8 | Iniciar la integración del mantenimiento correctivo si se completa primero el alcance prioritario. |
| Conditional | US19 | Reportar falla de una máquina | 3 | Registrar una falla desde Angular mediante el servicio propio, si TS04 alcanza el nivel requerido. |

La suma de **26 Story Points** corresponde a los seis elementos prioritarios del Product Backlog (3 + 5 + 8 + 3 + 5 + 2). **No constituye una velocidad asegurada ni un compromiso irreversible**: al revisar las dependencias, el equipo podrá trasladar historias al siguiente sprint y deberá actualizar el Sprint Backlog y Trello. Si la US64 ya fue aceptada como terminada en Sprint 2, su estimación no deberá contabilizarse nuevamente como puntos completados en Sprint 3. Los 11 puntos de alcance condicional no forman parte de esa suma.

**Autenticación y registro de usuarios.** La US54 y la TS01 cubren el inicio de sesión con credenciales, la gestión de la sesión y la protección del acceso a las funciones de la aplicación. El frontend deberá ofrecer mensajes claros para credenciales inválidas y cierre de sesión. La **recuperación de contraseña (US55)** no se considera parte del alcance prioritario y se planificará por separado. Asimismo, el botón **Crear cuenta** de la Landing Page no debe confundirse con una funcionalidad de registro ya implementada: antes de desarrollar el alta autónoma de usuarios, el equipo deberá definir sus reglas de negocio, la User Story correspondiente y el tratamiento de roles y permisos. La US56 existente se refiere específicamente al registro de técnicos por un Jefe de Planta, no al registro público de cualquier visitante.

**Criterios de aceptación para la revisión.** El inicio de sesión solo podrá considerarse completado cuando las credenciales se validen contra usuarios registrados, las contraseñas no se almacenen en texto plano, las rutas protegidas rechacen usuarios no autenticados y cada perfil acceda únicamente a las vistas permitidas. La gestión de plantas y máquinas deberá consultar y guardar datos por medio de los servicios propios, con validaciones para datos obligatorios y respuesta adecuada ante errores. Las operaciones demostradas deberán contar con pruebas reproducibles y evidencia de su despliegue.

#### 5.2.3.2. Aspect Leaders and Collaborators.

Se propone la siguiente distribución para Sprint 3. **Las responsabilidades son una propuesta inicial**, pendiente de confirmación por los cinco integrantes durante la planificación. En la matriz, **L** representa la coordinación principal de un área y **C** la colaboración en su desarrollo o revisión.

| Team Member | GitHub Username | Angular Authentication & Integration | Authentication API | Assets API | Deployment & Documentation | Validation & Quality Assurance |
|---|---|:---:|:---:|:---:|:---:|:---:|
| Córdova, Alvar Lucas | AlvarLC | L | C | C | C | C |
| Villanueva Rodríguez, Giuseppe Adrián | Giuseppe152004 | C | L | C | C | C |
| Rojas Huaranga, Diego Rances | diego27-16 | C | C | L | C | C |
| Landa Sánchez, Sunio Danilo | DanLandio | C | C | C | L | C |
| Mendoza Boluarte, Pierre Alessandro | pierreale2302 | C | C | C | C | L |

La coordinación principal no implica que una persona deba realizar todas las actividades de su área. El equipo deberá trabajar con ramas de funcionalidad, Pull Requests, revisiones cruzadas y criterios de aceptación compartidos. La participación real se sustentará posteriormente con commits, Pull Requests, pruebas y evidencias del producto.

#### 5.2.3.3. Sprint Backlog 3.

El Sprint Backlog 3 mantiene la numeración consecutiva respecto al Sprint 2, cuyo último identificador fue T036. Las estimaciones siguientes representan horas de trabajo **propuestas**, no horas ejecutadas. Todos los elementos comienzan en estado **To Do** y deberán actualizarse según el avance comprobado.

| Story ID | Task ID | Task Title | Task Description | Estimation (hours) | Proposed Owner | Status |
|---|---|---|---|---:|---|---|
| TS01, TS02 | T037 | Set up Spring Boot Backend | Preparar el proyecto Java, la configuración de entornos, la persistencia con Spring Data JPA y las dependencias necesarias para iniciar los servicios. | 5 | Sunio Danilo Landa Sánchez | To Do |
| TS01 | T038 | Implement User Credentials Model | Definir las entidades de usuario y credenciales, aplicar almacenamiento seguro de contraseñas y preparar datos de prueba controlados. | 5 | Giuseppe Adrián Villanueva Rodríguez | To Do |
| TS01, US54 | T039 | Implement Authentication Endpoint | Crear el endpoint de inicio de sesión con validación de credenciales, respuestas de error y mecanismo seguro de sesión. | 5 | Giuseppe Adrián Villanueva Rodríguez | To Do |
| US54 | T040 | Build Angular Login View | Implementar el formulario de inicio de sesión, validación de campos, mensajes de error y estados de carga. | 4 | Alvar Lucas Córdova | To Do |
| US54, TS01 | T041 | Protect Frontend Routes | Integrar el servicio de autenticación, las rutas protegidas, el cierre de sesión y la navegación de acuerdo con los permisos disponibles. | 5 | Alvar Lucas Córdova | To Do |
| TS02 | T042 | Model Plants and Assets | Crear entidades, repositorios y relaciones para plantas y máquinas. | 5 | Diego Rances Rojas Huaranga | To Do |
| TS02, US01 | T043 | Implement Plants Endpoints | Implementar consulta y registro de plantas con validaciones de datos y manejo de errores. | 4 | Diego Rances Rojas Huaranga | To Do |
| TS02, US03 | T044 | Implement Assets Endpoints | Implementar consulta y registro de máquinas asociadas a plantas mediante la API propia. | 5 | Diego Rances Rojas Huaranga | To Do |
| US01, US03 | T045 | Integrate Angular Asset Management | Conectar las vistas de plantas y máquinas con la API y verificar la persistencia de registros. | 6 | Alvar Lucas Córdova | To Do |
| TS01, TS02 | T046 | Document REST Endpoints | Publicar documentación OpenAPI/Swagger de los endpoints implementados, con parámetros, respuestas y ejemplos. | 4 | Sunio Danilo Landa Sánchez | To Do |
| TS01, TS02 | T047 | Deploy Spring Boot API | Configurar el despliegue en Render u otro servicio acordado, sus variables de entorno y la conexión a una base de datos persistente. | 6 | Sunio Danilo Landa Sánchez | To Do |
| TS01, TS02 | T048 | Execute API and Integration Tests | Probar autenticación, validaciones, respuestas de error y operaciones de plantas y máquinas; registrar los resultados. | 6 | Pierre Alessandro Mendoza Boluarte | To Do |
| US64 | T049 | Verify Landing Page Access | Publicar la actualización de la Landing Page y verificar idiomas, enlaces de acceso, secciones legales y navegación hacia la aplicación. | 3 | Pierre Alessandro Mendoza Boluarte | To Do |
| Transversal | T050 | Validate End-to-End Workflows | Comprobar inicio de sesión y registro de máquinas en escritorio y móvil, incluyendo casos de error y permisos. | 5 | Pierre Alessandro Mendoza Boluarte | To Do |
| Transversal | T051 | Prepare Validation Interviews | Definir tareas, preguntas, consentimiento, segmentos de participantes y criterios de evaluación heurística. | 5 | Pierre Alessandro Mendoza Boluarte | To Do |
| Transversal | T052 | Conduct User Validation Sessions | Realizar entrevistas con representantes de los segmentos objetivo, registrar sus observaciones y consolidar hallazgos. | 12 | Equipo TechMakers | To Do |
| Transversal | T053 | Produce About-the-Product Video | Preparar y publicar la primera versión del video del producto, utilizando flujos reales y testimonios obtenidos con autorización. | 5 | Sunio Danilo Landa Sánchez | To Do |
| Transversal | T054 | Produce About-the-Team Video | Preparar y publicar el video del equipo con participación de los cinco integrantes y aportes verificables. | 5 | Pierre Alessandro Mendoza Boluarte | To Do |
| Transversal | T055 | Update Sprint Report and Evidence | Completar el informe AV2 con capturas, commits, Sprint Review, despliegues, Student Outcome, registro de versiones y conclusiones. | 6 | Alvar Lucas Córdova | To Do |

Las **19 tareas T037–T055 suman 101 horas estimadas de esfuerzo del equipo**. La T052 representa una estimación conjunta; no son 12 horas por integrante. Esta distribución es una **propuesta de planificación** que deberá trasladarse al tablero del Sprint 3 y ajustarse durante la reunión del equipo. Las estimaciones no deben utilizarse como sustituto de Story Points ni de la velocidad real. Los registros de trabajo y la evidencia de pruebas serán necesarios para marcar cada tarea como completada.

**Prioridades y dependencias.** Las tareas de autenticación y configuración del backend deberán resolverse antes de validar el inicio de sesión y la persistencia en un entorno desplegado. La integración de Angular con plantas y máquinas depende de los contratos HTTP definidos para TS02. El desarrollo de la API de fallas y órdenes de trabajo solo se incorporará al Sprint 3 si estas dependencias principales se encuentran resueltas y el equipo confirma su capacidad restante.

**Definición de terminado.** Una historia se considerará terminada si cumple sus criterios de aceptación, tiene cambios integrados en una rama compartida, dispone de pruebas satisfactorias y puede demostrarse en el entorno establecido para AV2. Las capturas de una interfaz o las respuestas de JSON Server no sustituirán las pruebas de funcionamiento de los Web Services propios.

#### 5.2.3.4. Development Evidence for Sprint Review.

Esta sección registrará el desarrollo real del Sprint 3 una vez iniciadas las implementaciones. Se incluirán, para cada producto de software, el repositorio, la rama de trabajo, el identificador del commit, el mensaje de commit, la fecha y el aporte realizado. Los Pull Requests permitirán documentar las revisiones e integraciones entre los integrantes de TechMakers.

Se dará seguimiento a los avances de la autenticación, la infraestructura de Spring Boot, los endpoints de plantas y máquinas, la integración del frontend y las pruebas. **Las evidencias todavía están pendientes de recopilación** y se añadirán conforme se aprueben los cambios.

#### 5.2.3.5. Execution Evidence for Sprint Review.

La revisión de ejecución demostrará los flujos que se hayan implementado y validado durante este sprint. Se priorizarán los siguientes escenarios:

1. Iniciar sesión con una cuenta válida y acceder a las funcionalidades autorizadas.
2. Intentar iniciar sesión con datos incorrectos y recibir un mensaje de error sin ingresar al sistema.
3. Acceder a una ruta protegida sin autenticación y comprobar la restricción de acceso.
4. Registrar una planta o seleccionar una existente y registrar una máquina desde Angular.
5. Consultar desde la aplicación la máquina registrada y comprobar que sus datos continúan disponibles después de recargar la página.
6. Comprobar la navegación desde la Landing Page hasta el flujo de acceso de la Web Application.

Para cada escenario completado se incorporarán capturas de las vistas, resultados de las pruebas y un enlace al video de demostración publicado en Microsoft Stream. Se distinguirán claramente los módulos que utilicen todavía información simulada de los que ya consuman el backend propio. **Las capturas y resultados de ejecución se incorporarán únicamente después de realizar las pruebas.**

#### 5.2.3.6. Services Documentation Evidence for Sprint Review.

Durante el Sprint 3 se elaborará la primera versión de los servicios RESTful internos de FixCore utilizando **Java, Spring Boot y Spring Data JPA**, con documentación OpenAPI. Se prevé documentar los siguientes grupos de recursos, sujetos a su implementación efectiva:

| Resource | Proposed Method | Proposed Endpoint | Purpose | Status |
|---|---|---|---|---|
| Authentication | POST | `/api/v1/auth/login` | Verificar credenciales y establecer una sesión autenticada. | Planned |
| Plants | GET | `/api/v1/plants` | Consultar las plantas disponibles para el usuario autorizado. | Planned |
| Plants | POST | `/api/v1/plants` | Registrar una planta con sus datos obligatorios. | Planned |
| Assets | GET | `/api/v1/assets` | Consultar las máquinas registradas. | Planned |
| Assets | POST | `/api/v1/assets` | Registrar una máquina vinculada a una planta. | Planned |
| Assets | GET | `/api/v1/assets/{id}` | Consultar la información de una máquina. | Planned |

**Estas rutas son propuestas de contrato, no endpoints existentes o ya publicados.** Sus nombres, códigos de respuesta, mecanismos de autorización y estructuras de request/response se confirmarán en OpenAPI cuando se implemente la API. El informe incluirá posteriormente capturas de Swagger UI, ejemplos de solicitudes y respuestas, pruebas con datos de muestra y referencias a los commits correspondientes.

La API con JSON Server del Sprint 2 continuará siendo identificada como un recurso de pruebas históricas y no como sustituto del backend Java requerido en AV2.

#### 5.2.3.7. Software Deployment Evidence for Sprint Review.

El despliegue previsto para Sprint 3 comprenderá tres productos: la Landing Page estática de FixCore, la Web Application Angular y la primera versión de los Web Services propios. Para el backend se deberán configurar las variables de entorno, la conexión a la base de datos y el acceso desde el frontend desplegado, verificando además el tratamiento de CORS y de datos sensibles.

Las evidencias de esta sección se incorporarán después de cada despliegue y deberán mostrar los pasos de configuración, las versiones publicadas, los enlaces de acceso y una prueba de funcionamiento. La API simulada utilizada en el Sprint 2 se conservará únicamente como referencia de la etapa anterior. No se afirmará que un despliegue se completó hasta comprobarlo en el entorno público correspondiente.

#### 5.2.3.8. Team Collaboration Insights during Sprint.

El equipo documentará durante el Sprint 3 el trabajo colaborativo mediante reuniones de seguimiento, actividades en Trello, ramas de Git, commits y Pull Requests de los repositorios que correspondan al frontend, backend, Landing Page e informe. Se prestará especial atención a la integración entre quienes desarrollen Angular y quienes implementen los Web Services, debido a que los contratos HTTP y las validaciones deben ser consistentes.

Al finalizar el sprint, se incorporarán capturas de la actividad y contribuciones en GitHub, el resumen de la Sprint Review y las observaciones obtenidas en la retrospectiva. Se registrarán las tareas realmente completadas, los problemas de integración y las acciones de mejora para el siguiente sprint. **Esta sección se completará con evidencias reales durante el desarrollo y no con resultados anticipados.**

### 5.3. Validation Interviews.

Para AV2, el equipo preparará y realizará entrevistas de validación en las que representantes de los segmentos objetivo interactúen con la Landing Page y los flujos de la Web Application disponibles. El enunciado solicita entrevistas de validación con usuarios de los segmentos objetivo, con registro de las tareas realizadas y evaluación heurística. Los participantes, fechas, videos y resultados deberán consignarse a partir de sesiones efectivamente realizadas. El rango de tres a cinco entrevistas por segmento indicado para el levantamiento inicial de requisitos no se asumirá automáticamente como cuota de esta etapa de validación.

#### 5.3.1. Diseño de Entrevistas.

Se seleccionarán escenarios acordes con cada segmento: conocer FixCore y evaluar su propuesta en la Landing Page; consultar una máquina y reportar una falla desde el entorno de mantenimiento; y revisar órdenes o información operativa desde los perfiles disponibles. Se definirán preguntas, tareas observables y criterios de evaluación de usabilidad, arquitectura de información y diseño inclusivo.

#### 5.3.2. Registro de Entrevistas.

Después de cada sesión se incorporará la identificación permitida del participante, su segmento, fecha, enlace al registro en video, tareas ejecutadas, observaciones y problemas detectados. No se asignarán testimonios ni resultados hasta contar con la información real de las entrevistas.

#### 5.3.3. Evaluaciones según heurísticas.

Se consolidarán los hallazgos a partir de las tareas observadas, indicando heurística o criterio evaluado, evidencia del problema, impacto en el usuario y mejora propuesta. Los resultados servirán como entrada para el refinamiento del Product Backlog y los ajustes de la siguiente iteración.

### 5.4. Video About-the-Product.

Durante el Sprint 3 se preparará y publicará la primera versión del video About-the-Product. El material presentará el problema que aborda FixCore, los segmentos objetivo, la propuesta de valor y una demostración de las funcionalidades efectivamente disponibles. Se priorizarán los flujos con backend propio cuando estén implementados y se señalarán como demostrativos aquellos que dependan todavía de datos simulados.

El informe incorporará el enlace al video y una captura representativa una vez que esté publicado. La primera versión debe incluir al menos un testimonio positivo obtenido de una entrevista de validación real, conforme al enunciado; se incorporará únicamente cuando se cuente con el registro y la autorización correspondiente.

**Video About-the-Team.** La primera versión se documentará en el apartado correspondiente de conclusiones y anexos, presentando los aportes verificables de los cinco integrantes y su relación con el Student Outcome. No se registrará como publicado antes de completar su producción y entrega.
