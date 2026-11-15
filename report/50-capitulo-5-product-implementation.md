# Capítulo V: Product Implementation, Validation & Deployment

## 5.1. Software Configuration Management

Este capítulo presenta el desarrollo de FixCore desde la Landing Page inicial hasta la integración de Angular con los servicios REST de Spring Boot. Se describen las herramientas, las tareas por sprint, las pruebas realizadas y la configuración del despliegue.

El desarrollo del producto se realizó de manera progresiva. Durante el Sprint 1 se implementó la Landing Page. En el Sprint 2 se desarrolló una primera versión de la Web Application utilizando Angular y una API simulada. Finalmente, durante el Sprint 3 se implementaron servicios REST propios con Spring Boot, se integraron con Angular y se configuró el despliegue de la solución en la nube.

### 5.1.1. Software Development Environment Configuration

Para desarrollar FixCore se utilizaron herramientas de planificación, diseño, programación, pruebas, documentación y despliegue.

**Project Management**

| Herramienta | Propósito | Referencia |
|---|---|---|
| Trello | Organización del Product Backlog, Sprint Backlogs y seguimiento de tareas. | https://trello.com/ |
| GitHub | Administración de repositorios, ramas, commits y Pull Requests. | https://github.com/ |
| Discord | Coordinación técnica y reuniones virtuales. | https://discord.com/ |
| WhatsApp | Comunicación y seguimiento de actividades. | https://www.whatsapp.com/ |
| Google Drive | Almacenamiento de documentos y materiales complementarios. | https://drive.google.com/ |

**Requirements Management**

| Herramienta | Propósito | Referencia |
|---|---|---|
| Trello | Registro, organización y seguimiento de User Stories. | https://trello.com/ |
| UXPressia | Elaboración de User Personas y User Journey Maps. | https://uxpressia.com/ |
| FigJam | Elaboración colaborativa de diagramas y actividades de EventStorming. | https://www.figma.com/figjam/ |

**Product UX/UI Design**

| Herramienta | Propósito | Referencia |
|---|---|---|
| Figma | Elaboración de wireframes, mockups y prototipos de FixCore. | https://www.figma.com/ |

**Software Development**

| Tecnología o herramienta | Propósito |
|---|---|
| Visual Studio Code | Edición de archivos y desarrollo web. |
| JetBrains WebStorm | Desarrollo de la aplicación Angular. |
| Angular 22 | Implementación de la Web Application. |
| TypeScript | Desarrollo de componentes, servicios y lógica de interfaz. |
| Angular Material | Implementación de componentes visuales. |
| Node.js y npm | Administración de dependencias y ejecución del frontend. |
| Java 21 | Desarrollo del backend. |
| Spring Boot 4.0.3 | Implementación de servicios REST. |
| Spring Security | Autenticación y autorización de usuarios. |
| Spring Data JPA | Persistencia de entidades. |
| PostgreSQL | Almacenamiento relacional de información. |
| Flyway | Administración de migraciones de base de datos. |
| Maven | Compilación, dependencias y pruebas del backend. |
| Docker | Empaquetado y despliegue de servicios. |
| Postman | Pruebas de solicitudes HTTP. |
| JUnit 5 | Pruebas automatizadas del backend. |
| Git | Control de versiones. |

Durante el Sprint 2 se utilizó JSON Server para simular los recursos consumidos por Angular. En el Sprint 3 se implementó una API propia con reglas de negocio, persistencia y controles de seguridad.

**Software Deployment**

| Plataforma | Componente desplegado |
|---|---|
| GitHub Pages | Landing Page. |
| Vercel | Web Application Angular. |
| Render Web Service | Backend Spring Boot. |
| Render PostgreSQL | Base de datos de FixCore. |

**Software Documentation**

| Herramienta o estándar | Propósito |
|---|---|
| Markdown | Elaboración del informe y documentación técnica. |
| OpenAPI | Descripción de los contratos REST. |
| Swagger UI | Consulta y prueba interactiva de endpoints. |
| README.md | Instrucciones de instalación, configuración y ejecución. |

### 5.1.2. Source Code Management

El equipo utilizó Git y GitHub para administrar el código fuente, registrar modificaciones e integrar el trabajo realizado.

La organización TechMakers dispone de los siguientes repositorios:

| Repositorio | Descripción | URL |
|---|---|---|
| Landing-Page | Sitio informativo de FixCore. | https://github.com/TechMakers-upc/Landing-Page |
| Frontend | Aplicación web desarrollada con Angular. | https://github.com/TechMakers-upc/Frontend |
| Backend | API REST y lógica de negocio con Spring Boot. | https://github.com/TechMakers-upc/Backend |
| Report | Informe del proyecto y evidencias. | https://github.com/TechMakers-upc/Report |

Se utilizó una estrategia de trabajo basada en ramas:

- `main`: versiones estables del producto.
- `develop`: integración de cambios durante el desarrollo.
- `feature/*`: desarrollo de funcionalidades específicas.
- `release/*`: preparación de versiones para publicación, cuando corresponde.
- `hotfix/*`: correcciones de versiones estables, cuando corresponde.

Los commits utilizan mensajes descriptivos, incluyendo prefijos como `feat`, `fix`, `test`, `refactor`, `docs`, `build` y `ci`.

Durante el Sprint 3 se utilizaron Pull Requests para integrar funcionalidades y correcciones del backend y frontend. Este procedimiento permitió conservar la trazabilidad de los cambios y revisar las modificaciones antes de consolidarlas.

### 5.1.3. Source Code Style Guide & Conventions

Se establecieron convenciones para mantener el código organizado y facilitar la colaboración.

**Frontend**

- Utilizar nombres descriptivos en inglés.
- Organizar los componentes según sus responsabilidades.
- Separar las interfaces de los servicios HTTP.
- Utilizar el tipado proporcionado por TypeScript.
- Reutilizar componentes compartidos.
- Implementar validaciones de formularios.
- Manejar errores de comunicación con la API.
- Utilizar interceptores para autenticación y tratamiento de respuestas HTTP.

**Backend**

El backend se organizó siguiendo principios de Domain-Driven Design y Clean Architecture.

Los contextos de negocio contemplan las siguientes capas:

1. `domain`: entidades, reglas y contratos del dominio.
2. `application`: coordinación de los casos de uso.
3. `infrastructure`: persistencia e integraciones técnicas.
4. `interfaces`: exposición de operaciones mediante REST.

Los contextos principales de FixCore son:

1. Identity & Access Management.
2. Resource & Asset Management.
3. Service Design & Planning.
4. Service Execution & Monitoring.
5. Inventory & Spare Parts.
6. Analytics.
7. Notifications.

El paquete `shared` reúne componentes técnicos compartidos.

**Persistencia**

Se utilizó PostgreSQL como sistema de gestión de base de datos y Flyway para administrar las modificaciones del esquema mediante migraciones versionadas.

**Pruebas**

Se incorporaron pruebas unitarias, de integración, seguridad y arquitectura. Las pruebas de arquitectura se utilizaron para verificar la separación de responsabilidades y las reglas de dependencia entre capas.

**Control de versiones**

Los cambios se registraron mediante commits descriptivos y se integraron utilizando ramas y Pull Requests.

### 5.1.4. Software Deployment Configuration

FixCore se distribuye en tres partes: Landing Page, aplicación web Angular y API REST de Spring Boot. La base PostgreSQL almacena la información de negocio. Dentro del backend los módulos están separados por bounded contexts, pero funcionan como un monolito modular, no como servicios desplegados individualmente.

**Landing Page — GitHub Pages**

La Landing Page se desarrolló con HTML, CSS y JavaScript. Presenta la propuesta de valor de FixCore, sus funcionalidades, beneficios y planes.

- Repositorio: https://github.com/TechMakers-upc/Landing-Page
- URL: https://techmakers-upc.github.io/Landing-Page/

**Web Application — Vercel**

La Web Application se desarrolló con Angular y se publicó mediante Vercel.

El frontend realiza solicitudes HTTP a los servicios REST del backend.

- Repositorio: https://github.com/TechMakers-upc/Frontend
- URL: https://fixcore-frontend-eight.vercel.app/
- API utilizada: https://backend-zv29.onrender.com/api/v1

**Backend — Render**

El backend se desarrolló con Java y Spring Boot, utilizando Docker para su despliegue.

- Repositorio: https://github.com/TechMakers-upc/Backend
- URL: https://backend-zv29.onrender.com
- Health Check: https://backend-zv29.onrender.com/actuator/health

**Base de datos — Render PostgreSQL**

Se configuró una instancia PostgreSQL para almacenar la información relacionada con usuarios, plantas, máquinas, mantenimiento, fallas, órdenes de trabajo y repuestos.

**Variables de entorno**

| Variable | Propósito |
|---|---|
| `SPRING_PROFILES_ACTIVE` | Seleccionar el perfil de ejecución. |
| `DB_URL` | Configurar la conexión JDBC. |
| `DB_USERNAME` | Identificar al usuario de PostgreSQL. |
| `DB_PASSWORD` | Autenticar la conexión a la base de datos. |
| `JWT_SECRET` | Configurar la firma de tokens JWT. |
| `CORS_ALLOWED_ORIGINS` | Definir los orígenes permitidos para consumir la API. |
| `PORT` | Configurar el puerto utilizado por el servicio. |

Los valores confidenciales se almacenan en la configuración del entorno y no deben incluirse en el código fuente ni en las capturas públicas del informe.

La distribución adoptada separa la presentación, la lógica de negocio y la persistencia.

---

## 5.2. Landing Page, Services & Applications Implementation

Esta sección documenta los resultados de los tres primeros sprints del proyecto FixCore. Se describen la planificación, distribución de responsabilidades, tareas, evidencias de desarrollo, ejecución, servicios, despliegue y colaboración.

### 5.2.1. Sprint 1

El Sprint 1 estuvo dedicado a implementar la Landing Page de FixCore.

El objetivo fue presentar la propuesta de valor del producto, sus funcionalidades, beneficios, planes y preguntas frecuentes mediante un sitio adaptable a diferentes tamaños de pantalla.

Se completaron las principales secciones informativas y se publicó la Landing Page en GitHub Pages.

#### 5.2.1.1. Sprint Planning 1

La planificación se realizó mediante una reunión virtual en la que se seleccionaron las historias relacionadas con la Landing Page y se distribuyeron las actividades.

| Campo | Información |
|---|---|
| Sprint # | Sprint 1 |
| Date | 2026-09-11 |
| Time | 7:00 PM – 8:00 PM |
| Location | Discord |
| Prepared By | Alvar Lucas Córdova |
| Attendees | Alvar Lucas Córdova, Sunio Danilo Landa Sánchez, Giuseppe Adrián Villanueva Rodríguez, Diego Rances Rojas Huaranga y Pierre Alessandro Mendoza Boluarte |
| Sprint Goal | Desarrollar y publicar una Landing Page responsive que presente FixCore y sus principales beneficios. |
| Sum of Story Points | 7 Story Points planificados |
| Sprint Velocity | 6 Story Points completados |

Las historias consideradas fueron US59, US60, US61, US62 y US63.

La US63 quedó parcialmente terminada, debido a que la implementación de los términos y condiciones permanecía en proceso al cierre del sprint.

#### 5.2.1.2. Aspect Leaders and Collaborators

Las responsabilidades se distribuyeron según las secciones de la Landing Page.

La letra **L** representa al líder de cada aspecto y **C** a los colaboradores.

| Team Member | GitHub Username | Hero & Navbar | Features & Guide | Benefits | Pricing | FAQ & Support |
|---|---|:---:|:---:|:---:|:---:|:---:|
| Diego Rances Rojas Huaranga | diego27-16 | L | C | C | C | C |
| Pierre Alessandro Mendoza Boluarte | pierreale2302 | C | L | C | C | C |
| Alvar Lucas Córdova | AlvarLC | C | C | L | C | C |
| Sunio Danilo Landa Sánchez | DanLandio | C | C | C | L | C |
| Giuseppe Adrián Villanueva Rodríguez | Giuseppe152004 | C | C | C | C | L |

Esta distribución permitió desarrollar diferentes secciones de manera paralela e integrarlas posteriormente.

#### 5.2.1.3. Sprint Backlog 1

El Sprint Backlog 1 reunió las diez tareas relacionadas con la implementación inicial de la Landing Page.

**Tablero Trello:** https://trello.com/b/8ilypk4J/sprint-backlog-1-techmakers

![Sprint Backlog 1](assets/images/sprint1-foto.png)


| Story ID | Story Title | Task ID | Task Title | Task Description | Hours | Assigned To | Status |
|---|---|---|---|---|---:|---|---|
| US59 | Conocer FixCore | T001 | Develop Landing Page Hero | Implementar la presentación principal del producto. | 2 | Diego | Done |
| US59 | Conocer FixCore | T002 | Add Landing Page Navbar | Implementar la navegación y el encabezado responsive. | 2 | Diego | Done |
| US60 | Conocer funcionalidades de FixCore | T003 | Develop Features Section | Presentar las principales funcionalidades. | 3 | Pierre | Done |
| US60 | Conocer funcionalidades de FixCore | T004 | Design User Guide Section | Implementar la guía visual de uso. | 2 | Pierre | Done |
| US61 | Conocer beneficios según el segmento | T005 | Write Benefits for Each Segment | Presentar los beneficios para cada segmento objetivo. | 2 | Alvar | Done |
| US61 | Conocer beneficios según el segmento | T006 | Add User Testimonials | Incorporar testimonios ilustrativos. | 2 | Alvar | Done |
| US62 | Consultar planes de FixCore | T007 | Develop Monthly Pricing Plans | Presentar los planes mensuales. | 2 | Sunio | Done |
| US62 | Consultar planes de FixCore | T008 | Develop Annual Pricing Plans | Presentar los planes anuales. | 2 | Sunio | Done |
| US63 | Consultar información adicional de FixCore | T009 | Add Frequently Asked Questions | Incorporar preguntas frecuentes y enlaces informativos. | 3 | Giuseppe | Done |
| US63 | Consultar información adicional de FixCore | T010 | Write Terms and Conditions | Incorporar el contenido y acceso a términos y condiciones. | 2 | Giuseppe | In Process |

**Resumen del Sprint Backlog 1**

| Columna de Trello | Cantidad |
|---|---:|
| To Do | 0 |
| In Process | 1 |
| To Review | 0 |
| Done | 9 |
| **Total** | **10** |

Las nueve tareas terminadas se encuentran en `Done`. La T010 permanece en `In Process`, de acuerdo con el estado documentado del tablero.

#### 5.2.1.4. Development Evidence for Sprint Review

Durante el Sprint 1 se utilizó GitHub para registrar las modificaciones de la Landing Page.

| Repository | Branch | Commit ID | Commit Message | Committed on |
|---|---|---|---|---|
| Landing-Page | feature/landing-page-presentation | `0128950` | Enhance index.html with meta tags and header structure | 2026-09-19 |
| Landing-Page | feature/landing-page-presentation | `18ee3c6` | Add base styles and CSS variables | 2026-09-19 |
| Landing-Page | feature/landing-page-presentation | `51ba71f` | Merge pull request #1 | 2026-09-19 |
| Landing-Page | feature/functions-landing | `c7507e1` | Implement features section and assets | 2026-09-19 |
| Landing-Page | feature/functions-landing | `c0f0ae4` | Merge pull request #3 | 2026-09-19 |
| Landing-Page | feature/benefints-landing-page | `ef53f10` | Update index.html | 2026-09-19 |
| Landing-Page | feature/benefints-landing-page | `2b78517` | Merge pull request #4 | 2026-09-19 |
| Landing-Page | main | `eb0f365` | Add subscription plans information cards | 2026-09-19 |

Los registros permiten identificar los cambios incorporados en las principales secciones de presentación del producto.

#### 5.2.1.5. Execution Evidence for Sprint Review

**Video de presentación del Sprint 1:**

https://upcedupe-my.sharepoint.com/:v:/g/personal/u202423973_upc_edu_pe/IQD6WLEWUP5oQLbSvCXtwgcqAZEWm3YKXW1kVty23sprr_g?e=01QNKW

**Navbar y Hero**

Se implementó el encabezado, la navegación y la presentación inicial de FixCore.

![Navbar y Hero](assets/images/nav-hero.png)

**Funcionalidades y guía de uso**

Se desarrollaron secciones para presentar las funcionalidades y explicar el uso general del producto.

![Funcionalidades](assets/images/funcionalidades.png)

![Guía de uso](assets/images/flujo.png)

**Beneficios y testimonios**

Se incorporaron contenidos dirigidos a los segmentos objetivo. Los testimonios presentados en la Landing Page tienen carácter ilustrativo y no sustituyen las entrevistas de validación.

![Beneficios](assets/images/soluciones.png)

![Testimonios](assets/images/testimonios.png)

**Planes de suscripción**

Se desarrollaron tarjetas comerciales para presentar las opciones mensuales y anuales.

![Planes de suscripción](assets/images/planes.png)

**Preguntas frecuentes y Footer**

Se incorporaron preguntas frecuentes y enlaces de navegación e información.

![Preguntas frecuentes](assets/images/preguntas.png)

![Footer](assets/images/footer.png)

#### 5.2.1.6. Services Documentation Evidence for Sprint Review

Durante el Sprint 1 no se desarrollaron servicios REST propios, dado que el alcance se concentró en la implementación de una Landing Page.

El sitio fue desarrollado con HTML, CSS y JavaScript. Sus funcionalidades informativas no requerían una API REST ni una base de datos.

La implementación de servicios de negocio se reservó para los sprints posteriores.

#### 5.2.1.7. Software Deployment Evidence for Sprint Review

La Landing Page fue publicada mediante GitHub Pages.

**Repositorio:** https://github.com/TechMakers-upc/Landing-Page

**URL:** https://techmakers-upc.github.io/Landing-Page/

![Despliegue en GitHub Pages](assets/images/pages.png)

![Evidencia de publicación](assets/images/evidence.png)

La publicación permitió acceder al producto desde un navegador sin instalar herramientas adicionales.

#### 5.2.1.8. Team Collaboration Insights during Sprint

Durante el Sprint 1 se distribuyeron las responsabilidades entre los cinco integrantes.

La coordinación se realizó mediante GitHub, Trello y herramientas de comunicación virtual. Cada integrante trabajó en una sección y posteriormente participó en la integración de los cambios.

Entre las dificultades identificadas se encontraron diferencias en estilos, espaciados, traducciones y comportamiento responsive.

Estas observaciones permitieron establecer convenciones para las siguientes iteraciones.

![Colaboración Sprint 1](assets/images/insight.png)

Las mejoras realizadas después del cierre del Sprint 1 forman parte de la evolución posterior del producto y no modifican retroactivamente sus resultados.

---

### 5.2.2. Sprint 2

El Sprint 2 se concentró en desarrollar una primera versión de la Web Application de FixCore utilizando Angular y TypeScript.

Se implementaron interfaces para gestión de plantas, máquinas, mantenimiento preventivo, fallas, órdenes de trabajo, inventario y reportes.

Para facilitar la navegación y las demostraciones se utilizó JSON Server como API simulada.

Aunque esta solución permitió probar operaciones HTTP con información de ejemplo, todavía no incorporaba todas las reglas de negocio, persistencia relacional ni autenticación del backend definitivo.

#### 5.2.2.1. Sprint Planning 2

La planificación consideró los resultados del Sprint 1 y las historias del Product Backlog relacionadas con las principales funcionalidades de FixCore.

| Campo | Información |
|---|---|
| Sprint # | Sprint 2 |
| Date | 2026-10-08 |
| Time | 2:00 AM – 2:45 AM |
| Location | Reunión de coordinación; medio no especificado en el registro |
| Prepared By | Alvar Lucas Córdova |
| Team Members | Alvar Lucas Córdova, Sunio Danilo Landa Sánchez, Giuseppe Adrián Villanueva Rodríguez, Diego Rances Rojas Huaranga y Pierre Alessandro Mendoza Boluarte |
| Sprint 1 Review Summary | Se desarrolló y publicó la Landing Page con sus principales secciones informativas. |
| Sprint 1 Retrospective Summary | Se identificaron mejoras necesarias en integración, convenciones visuales y coordinación. |
| Sprint Goal | Implementar las interfaces principales de la Web Application y conectarlas con una API de demostración. |
| Sprint 1 Velocity Reference | 6 Story Points |
| Sprint 2 Velocity | No determinada mediante aceptación integral de historias. |
| User Stories Considered | 27 |
| Associated Story Points | 88 |

**Historias consideradas**

| Módulo | User Stories | Cantidad | Story Points |
|---|---|---:|---:|
| Plantas y máquinas | US01, US02, US03, US04, US05, US08, US09 | 7 | 24 |
| Mantenimiento preventivo | US10, US14, US16, US17 | 4 | 16 |
| Fallas | US19, US20, US21, US22 | 4 | 10 |
| Órdenes de trabajo | US23, US25, US27, US28, US29, US30 | 6 | 21 |
| Inventario | US31, US33, US35 | 3 | 7 |
| Dashboard | US41, US45 | 2 | 8 |
| Acceso desde Landing Page | US64 | 1 | 2 |
| **Total** | | **27** | **88** |

Los 88 Story Points corresponden a las estimaciones de las historias consideradas y no deben interpretarse como velocidad alcanzada. El sprint se concentró en el desarrollo de interfaces y operaciones de demostración.

#### 5.2.2.2. Aspect Leaders and Collaborators

La distribución inicial del trabajo se organizó por módulos.

| Team Member | GitHub Username | Plants & Machines | Preventive Maintenance | Failures & Dashboard | Work Orders | Inventory |
|---|---|:---:|:---:|:---:|:---:|:---:|
| Alvar Lucas Córdova | AlvarLC | L | C | C | C | C |
| Sunio Danilo Landa Sánchez | DanLandio | C | L | C | C | C |
| Giuseppe Adrián Villanueva Rodríguez | Giuseppe152004 | C | C | L | C | C |
| Diego Rances Rojas Huaranga | diego27-16 | C | C | C | L | C |
| Pierre Alessandro Mendoza Boluarte | pierreale2302 | C | C | C | C | L |

Las principales responsabilidades asignadas fueron:

- Alvar: gestión de plantas y máquinas.
- Sunio: mantenimiento preventivo.
- Giuseppe: fallas, dashboard e indicadores.
- Diego: órdenes de trabajo.
- Pierre: inventario y verificación de interfaces.

La matriz muestra las responsabilidades acordadas para el sprint. Los commits y Pull Requests permiten seguir los aportes realizados en cada repositorio.

#### 5.2.2.3. Sprint Backlog 2

El Sprint Backlog 2 contiene las tareas de implementación y verificación de las interfaces Angular.

**Tablero Trello:** https://trello.com/b/TsmoUxyH/sprint-backlog-2-techmakers

![Sprint Backlog 2](assets/images/sprint2-foto.png)

| Story ID | Story Title | Task ID | Task Title | Task Description | Hours | Assigned To | Status |
|---|---|---|---|---|---:|---|---|
| — | Configuración transversal del frontend | T011 | Configure Angular Project Structure | Configurar el proyecto Angular, componentes y rutas. | 3 | Alvar | To Review |
| US01–US02 | Gestión de plantas | T012 | Implement Plant Forms | Desarrollar formularios para registrar y actualizar plantas. | 4 | Alvar | To Review |
| US03–US04 | Registro de máquinas | T013 | Implement Machine Registration | Implementar el registro y edición de máquinas. | 5 | Alvar | To Review |
| US05–US08 | Consulta de máquinas | T014 | Develop Machine Details View | Desarrollar la vista con los detalles técnicos de una máquina. | 4 | Alvar | To Review |
| US09 | Historial de máquinas | T015 | Develop Machine History View | Presentar el historial de la máquina. | 3 | Alvar | To Review |
| US10 | Programación de mantenimiento | T016 | Implement Maintenance Scheduling Form | Desarrollar el formulario de programación preventiva. | 4 | Sunio | To Review |
| US14 | Calendario de mantenimiento | T017 | Develop Maintenance Calendar | Mostrar actividades programadas en un calendario. | 4 | Sunio | To Review |
| US16 | Próximos mantenimientos | T018 | Develop Upcoming Maintenance View | Mostrar los mantenimientos próximos. | 3 | Sunio | To Review |
| US17 | Mantenimientos vencidos | T019 | Implement Overdue Maintenance Indicators | Mostrar indicadores de actividades vencidas. | 3 | Sunio | To Review |
| — | Navegación del mantenimiento | T020 | Integrate Maintenance Navigation | Integrar las rutas y accesos del módulo. | 3 | Sunio | To Review |
| US19 | Reporte de fallas | T021 | Implement Failure Reporting Form | Implementar el formulario para registrar fallas. | 4 | Giuseppe | To Review |
| US20–US22 | Priorización y detalle de fallas | T022 | Develop Failure Priority and Details | Mostrar la prioridad y detalles de una falla. | 4 | Giuseppe | To Review |
| US21 | Consulta de fallas pendientes | T023 | Develop Pending Failures View | Presentar la lista de fallas pendientes. | 3 | Giuseppe | To Review |
| US41 | Dashboard de operaciones | T024 | Develop Operations Dashboard | Implementar el panel de indicadores operativos. | 4 | Giuseppe | To Review |
| US45 | Indicadores de órdenes | T025 | Implement Work Order Status Indicators | Mostrar los estados de las órdenes de trabajo. | 3 | Giuseppe | To Review |
| US23 | Registro de órdenes de trabajo | T026 | Implement Corrective Work Order Form | Desarrollar el formulario de órdenes correctivas. | 5 | Diego | To Review |
| US25 | Asignación de técnicos | T027 | Develop Technician Assignment Interface | Incorporar la interfaz para asignar técnicos. | 3 | Diego | To Review |
| US27 | Consulta de órdenes asignadas | T028 | Develop Assigned Work Orders View | Mostrar las órdenes asignadas a un técnico. | 3 | Diego | To Review |
| US28–US29 | Ejecución de órdenes | T029 | Develop Work Order Execution Interface | Desarrollar los controles para ejecutar órdenes. | 5 | Diego | To Review |
| US30 | Cierre de órdenes | T030 | Implement Work Order Closure | Implementar la interfaz de cierre. | 4 | Diego | To Review |
| US64 | Acceso desde la Landing Page | T031 | Connect Landing Page to Web Application | Conectar la Landing Page con la Web Application. | 3 | Diego | In Process |
| US31 | Registro de repuestos | T032 | Implement Spare Parts Registration | Desarrollar el formulario de repuestos. | 4 | Pierre | To Review |
| US33 | Consulta de inventario | T033 | Develop Spare Parts Stock View | Mostrar las existencias de repuestos. | 3 | Pierre | To Review |
| US35 | Configuración de stock mínimo | T034 | Implement Minimum Stock Configuration | Configurar los niveles mínimos de existencias. | 3 | Pierre | To Review |
| — | Componentes compartidos de inventario | T035 | Develop Reusable Inventory Components | Implementar componentes reutilizables del módulo. | 3 | Pierre | To Review |
| — | Verificación transversal | T036 | Verify Frontend Integration and Responsiveness | Revisar la integración y adaptación responsive. | 5 | Pierre | To Do |

**Resumen por integrante**

| Integrante | Tareas | Horas estimadas |
|---|---|---:|
| Alvar Lucas Córdova | T011–T015 | 19 |
| Sunio Danilo Landa Sánchez | T016–T020 | 17 |
| Giuseppe Adrián Villanueva Rodríguez | T021–T025 | 18 |
| Diego Rances Rojas Huaranga | T026–T031 | 23 |
| Pierre Alessandro Mendoza Boluarte | T032–T036 | 18 |
| **Total** | **26 tareas** | **95** |

**Resumen del tablero**

| Columna de Trello | Cantidad |
|---|---:|
| To Do | 1 |
| In Process | 1 |
| To Review | 24 |
| Done | 0 |
| **Total** | **26** |

El tablero conserva el estado de las tareas al cierre del Sprint 2. Las actividades en `To Review` quedaron en revisión y no se contabilizan como terminadas.

La integración posterior de algunos módulos durante el Sprint 3 no modifica automáticamente su estado histórico de revisión.

#### 5.2.2.4. Development Evidence for Sprint Review

Durante el Sprint 2 se registraron avances de los módulos Angular mediante GitHub.

| Repository | Branch | Commit ID | Commit Message | Committed on |
|---|---|---|---|---|
| Frontend | feature/frontend-setup-assets | `b94f329` | Integrate frontend services and reusable components | 2026-10-08 |
| Frontend | feature/frontend-setup-assets | `ad2c0d9` | Add plant and machine management forms | 2026-10-08 |
| Frontend | feature/frontend-setup-assets | `376e60f` | Add machine details and maintenance history | 2026-10-08 |
| Frontend | feature/failures-dashboard | `3854c5a` | Implement failure reporting interface | 2026-10-08 |
| Frontend | feature/failures-dashboard | `7f04637` | Add failure details and pending reports | 2026-10-08 |
| Frontend | feature/failures-dashboard | `93c4ca2` | Add operations dashboard and indicators | 2026-10-08 |
| Frontend | feature/preventive-maintenance | `4995d52` | Implement preventive scheduling forms | 2026-10-08 |
| Frontend | feature/preventive-maintenance | `2fe7221` | Add calendar and maintenance status views | 2026-10-08 |
| Frontend | feature/preventive-maintenance | `9796005` | Integrate maintenance navigation | 2026-10-08 |
| Frontend | feature/work-orders | `fc52f8c` | Add work order creation and assignment | 2026-10-08 |
| Frontend | feature/work-orders | `0867eb7` | Implement execution and closing workflows | 2026-10-08 |
| Frontend | feature/inventory-integration | `52d6549` | Add spare parts forms and validations | 2026-10-08 |
| Frontend | feature/inventory-integration | `d0224b4` | Implement stock views and minimum levels | 2026-10-08 |
| Frontend | fix/frontend-integration-deployment | `5bab08c` | Integrate Sprint 2 frontend | 2026-10-08 |
| Frontend | fix/frontend-integration-deployment | `05375b4` | Apply frontend audit corrections | 2026-10-08 |

Los commits documentan los avances realizados en las interfaces y permiten identificar los módulos implementados.

La revisión posterior del informe permitió conciliar referencias de commits de los Sprints 1 y 2 sin alterar sus resultados históricos.

#### 5.2.2.5. Execution Evidence for Sprint Review

**Video de presentación del Sprint 2:**

https://upcedupe-my.sharepoint.com/:v:/g/personal/u20221c554_upc_edu_pe/IQAUYlQa0B7NQrXxJbTrLBoyAcmdZetyTMORm1Pi7hRGtfM?e=pniRwM

Durante este sprint se desarrollaron interfaces adaptadas a diferentes perfiles de usuario.

**Selección inicial de perfiles**

Se incorporó una pantalla de selección de perfiles para acceder a las interfaces de demostración.

![Selección de perfiles](assets/images/evidence-sprint2/image.png)

**Jefe de Planta**

Se desarrollaron vistas para consultar indicadores, máquinas, fallas, órdenes de trabajo y mantenimiento.

![Dashboard del jefe de planta](assets/images/evidence-sprint2/image-1.png)

![Listado de máquinas](assets/images/evidence-sprint2/image-2.png)

![Registro de máquina](assets/images/evidence-sprint2/image-3.png)

![Listado de fallas](assets/images/evidence-sprint2/image-4.png)

![Filtro de fallas](assets/images/evidence-sprint2/image-5.png)

**Registro de fallas**

Se desarrolló un formulario dividido en pasos para registrar información de las fallas.

![Registro de fallas paso 1](assets/images/evidence-sprint2/image-6.png)

![Registro de fallas paso 2](assets/images/evidence-sprint2/image-7.png)

![Registro de fallas paso 3](assets/images/evidence-sprint2/image-8.png)

**Órdenes de trabajo**

Se incorporaron interfaces para consultar y registrar órdenes.

![Listado de órdenes](assets/images/evidence-sprint2/image-9.png)

![Registro de orden](assets/images/evidence-sprint2/image-10.png)

**Mantenimiento preventivo**

Se implementaron vistas de calendario y seguimiento de actividades.

![Calendario de mantenimiento](assets/images/evidence-sprint2/image-11.png)

![Mantenimientos vencidos](assets/images/evidence-sprint2/image-12.png)

![Mantenimientos suspendidos](assets/images/evidence-sprint2/image-13.png)

**Inventario y reportes**

Se desarrollaron interfaces para consultar repuestos e indicadores.

![Inventario](assets/images/evidence-sprint2/image-14.png)

![Reportes](assets/images/evidence-sprint2/image-15.png)

**Información de planta**

![Información de planta](assets/images/evidence-sprint2/image-16.png)

**Gerente de Operaciones**

Se implementaron vistas de indicadores generales, plantas y técnicos.

![Dashboard de operaciones](assets/images/evidence-sprint2/image-17.png)

![Gestión de plantas](assets/images/evidence-sprint2/image-18.png)

![Consulta de técnicos](assets/images/evidence-sprint2/image-19.png)

**Técnico de Mantenimiento**

Se incorporaron interfaces para consultar órdenes asignadas, repuestos y reportar fallas.

![Dashboard del técnico](assets/images/evidence-sprint2/image-20.png)

![Órdenes asignadas](assets/images/evidence-sprint2/image-21.png)

![Repuestos](assets/images/evidence-sprint2/image-22.png)

![Detalle de repuestos](assets/images/evidence-sprint2/image-23.png)

![Reporte de fallas](assets/images/evidence-sprint2/image-24.png)

Estas capturas representan las interfaces desarrolladas durante el Sprint 2. En esta etapa, las operaciones demostrativas dependían de JSON Server.

#### 5.2.2.6. Services Documentation Evidence for Sprint Review

Durante el Sprint 2 se utilizó JSON Server para simular una API REST y facilitar las pruebas de comunicación desde Angular.

| Recurso | Métodos utilizados | Endpoint |
|---|---|---|
| Usuarios de demostración | GET | `/users` |
| Plantas | GET, PUT | `/plants` |
| Máquinas | GET, POST, PUT | `/assets` |
| Planes de mantenimiento | GET, POST, PUT | `/maintenance-plans` |
| Fallas | GET, POST, PUT | `/failures` |
| Órdenes de trabajo | GET, POST, PUT | `/work-orders` |
| Repuestos | GET, POST, PUT | `/spare-parts` |
| Movimientos de stock | GET, POST | `/stock-movements` |

**URL histórica de la API simulada:**

https://fixcore-json-api.onrender.com/

Los recursos permitieron realizar operaciones HTTP con datos de prueba. Sin embargo, esta solución no equivalía a una implementación completa de la lógica de negocio, autorización y persistencia relacional.

#### 5.2.2.7. Software Deployment Evidence for Sprint Review

Durante el Sprint 2 se publicaron la Web Application Angular y una API de demostración.

**Publicación de la API simulada en Render**

Se configuró un servicio vinculado con GitHub para desplegar JSON Server.

![Configuración inicial de Render](assets/images/sprint-2-api-deploy-1.jpeg)

![Integración GitHub y Render](assets/images/sprint-2-api-deploy-2.jpeg)

![Configuración de repositorios](assets/images/sprint-2-api-deploy-3.jpeg)

![Selección de repositorio](assets/images/sprint-2-api-deploy-4.jpeg)

![Repositorio seleccionado](assets/images/sprint-2-api-deploy-5.jpeg)

![Configuración del servicio](assets/images/sprint-2-api-deploy-6.jpeg)

![Selección de recursos](assets/images/sprint-2-api-deploy-7.jpeg)

![Creación del servicio](assets/images/sprint-2-api-deploy-8.jpeg)

![Configuración de comandos](assets/images/sprint-2-api-deploy-9.jpeg)

![Plan de despliegue](assets/images/sprint-2-api-deploy-10.jpeg)

![Proceso de compilación](assets/images/sprint-2-api-deploy-11.jpeg)

![Resultado del despliegue](assets/images/sprint-2-api-deploy-12.jpeg)

**Publicación del frontend en Vercel**

Se vinculó el repositorio Frontend con Vercel para publicar la aplicación Angular.

![Integración Vercel y GitHub](assets/images/sprint-2-frontend-deploy-1.jpeg)

![Selección del repositorio](assets/images/sprint-2-frontend-deploy-2.jpeg)

![Importación del repositorio](assets/images/sprint-2-frontend-deploy-3.jpeg)

![Creación del proyecto](assets/images/sprint-2-frontend-deploy-4.jpeg)

![Configuración de variables](assets/images/sprint-2-frontend-deploy-5.jpeg)

![Configuración de compilación](assets/images/sprint-2-frontend-deploy-6.jpeg)

![Proceso de despliegue](assets/images/sprint-2-frontend-deploy-7.jpeg)

![Entorno de producción](assets/images/sprint-2-frontend-deploy-8.jpeg)

![Configuración de rama](assets/images/sprint-2-frontend-deploy-9.jpeg)

![Selección de rama](assets/images/sprint-2-frontend-deploy-10.jpeg)

![Resultado del despliegue](assets/images/sprint-2-frontend-deploy-11.jpeg)

**URL documentada del Sprint 2:**

https://fixcore-frontend-eight.vercel.app/demo

#### 5.2.2.8. Team Collaboration Insights during Sprint

Durante el Sprint 2 se organizaron las actividades por módulos funcionales.

La coordinación mediante GitHub, Trello y comunicación virtual permitió integrar una primera versión navegable de la Web Application.

Durante la integración se identificaron oportunidades de mejora relacionadas con la consistencia visual, navegación, tratamiento de datos y comunicación HTTP.

Estas observaciones contribuyeron a definir las prioridades técnicas del Sprint 3: desarrollar servicios propios, incorporar persistencia, implementar autenticación y ampliar las pruebas de integración.

![Evidencia de colaboración Sprint 2](assets/images/evidence-sprint2/evidence-sprint2.png)

---

### 5.2.3. Sprint 3

Durante el Sprint 3 se implementó una versión integrada de FixCore mediante servicios REST propios y su conexión con la Web Application Angular.

Las actividades documentadas comprenden el período del 18 de octubre al 3 de noviembre de 2026.

El trabajo incluyó la preparación de la arquitectura backend, implementación de servicios de negocio, integración del frontend, autenticación, autorización, persistencia PostgreSQL, pruebas automatizadas y despliegue.

Las contribuciones de implementación identificadas en los repositorios corresponden a Alvar Lucas Córdova, Giuseppe Adrián Villanueva Rodríguez y Diego Rances Rojas Huaranga.



#### 5.2.3.1. Sprint Planning 3

El objetivo del Sprint 3 fue integrar Angular con servicios REST que permitieran administrar información de mantenimiento industrial de manera persistente y segura.

Se priorizaron los módulos de autenticación, plantas, máquinas, mantenimiento preventivo, fallas, órdenes de trabajo, inventario e indicadores.

| Campo | Información |
|---|---|
| Sprint # | Sprint 3 |
| Date | 2026-10-06 |
| Time | 7:00 PM – 8:00 PM|
| Location | Discord|
| Prepared By | Alvar Lucas Córdova |
| Implementation Contributors | Alvar Lucas Córdova, Giuseppe Adrián Villanueva Rodríguez y Diego Rances Rojas Huaranga |
| Sprint 2 Review Summary | Se desarrollaron las interfaces principales de Angular utilizando una API simulada mediante JSON Server. |
| Sprint 2 Retrospective Summary | Se identificó la necesidad de incorporar persistencia real, autenticación, autorización y contratos REST estables. |
| Sprint Goal | Integrar la Web Application con servicios propios que permitan realizar operaciones persistentes y controladas según el rol del usuario. |
| Sprint Velocity | No calculada. El tablero registra tareas técnicas terminadas, pero no identifica las User Stories aceptadas que permitirían sumar la velocidad. |
| Sum of Story Points | No se asignó una suma independiente para Sprint 3: la planificación se hizo por 19 tareas técnicas y 145 horas estimadas. Los rangos de User Stories son referencias funcionales, no puntos aceptados. |
| Work Items | T037–T055 |
| Planning Meeting Duration | 60 min (de 7:00 PM a 8:00 PM). |
| Estimated Workload | 145 horas estimadas para 19 tareas (T037–T055); no son horas efectivamente trabajadas. |

**Sprint Goal**

Our focus is on enabling operations managers, plant managers and maintenance technicians to perform the main FixCore activities through an integrated web application connected to persistent services.

We believe it delivers reliable maintenance management, controlled access to operational data and improved tracking of plants, machines, work orders and spare parts.

This will be confirmed when authenticated users can interact with the deployed Angular application, its services persist information in PostgreSQL and the principal business operations can be verified through the REST API.

El Sprint Backlog 3 reúne 19 tareas con 145 horas estimadas. La planificación se realizó el 6 de octubre y el historial de implementación revisado comienza el 18 de octubre.

**Cronología de implementación**

| Período | Actividades documentadas |
|---|---|
| 18–21 de octubre | Preparación de Spring Boot, PostgreSQL, Flyway, arquitectura y pruebas iniciales. |
| 22–27 de octubre | Implementación progresiva de servicios REST y módulos de negocio. |
| 28–30 de octubre | Integración con Angular y configuración de entornos. |
| 31 de octubre–2 de noviembre | Correcciones de autenticación, formularios y comunicación entre frontend y backend. |
| 3 de noviembre | Refuerzo de seguridad, integridad de datos, pruebas y consolidación de versiones. |

La cronología corresponde a los hitos técnicos identificados en el historial de desarrollo y no sustituye las actas de reuniones.

#### 5.2.3.2. Aspect Leaders and Collaborators

La distribución de responsabilidades consideró las principales áreas técnicas del Sprint 3.

En la matriz, **L** representa al líder del aspecto y **C** a un colaborador.

| Team Member | GitHub Username | Backend Foundation | Business Services | Frontend Integration | Security & Testing | Deployment & Report |
|---|---|:---:|:---:|:---:|:---:|:---:|
| Alvar Lucas Córdova | AlvarLC | L | C | L | C | L |
| Giuseppe Adrián Villanueva Rodríguez | Giuseppe152004 | C | L | C | C | C |
| Diego Rances Rojas Huaranga | diego27-16 | C | C | C | L | C |



**Alvar Lucas Córdova**

Participó en la configuración inicial del backend, arquitectura y persistencia. También desarrolló integraciones y correcciones del frontend Angular relacionadas con servicios HTTP, formularios, navegación y pruebas. Asimismo, participó en el despliegue y documentación del proyecto.

**Giuseppe Adrián Villanueva Rodríguez**

Participó en la implementación de servicios backend relacionados con autenticación, plantas, máquinas, mantenimiento, inventario, fallas, órdenes de trabajo, analítica y notificaciones. También realizó correcciones de integración en Angular.

**Diego Rances Rojas Huaranga**

Participó en la integración del frontend con servicios REST, pruebas de órdenes e inventario y correcciones de seguridad e integridad del backend. Sus cambios incluyeron controles de acceso y medidas para proteger operaciones sobre datos.

La distribución de tareas del Sprint Backlog identifica responsables de coordinación. La autoría concreta del código se determina mediante los commits y Pull Requests de cada integrante.

#### 5.2.3.3. Sprint Backlog 3

El Sprint Backlog 3 contiene diecinueve actividades técnicas, numeradas desde T037 hasta T055.

**Tablero Trello:** https://trello.com/b/c8HvDAIU/1-sprint-backlog-3-techmakers

![Sprint Backlog 3](assets/images/sprintfoto-3.png)

| Story ID | Story Title / Scope | Task ID | Task Title | Task Description | Hours | Assigned To | Status |
|---|---|---|---|---|---:|---|---|
| — | Inicialización del backend | T037 | Coordinate Spring Boot Initialization | Coordinar la configuración inicial de Spring Boot y sus dependencias. | 6 | Alvar | Done |
| — | Arquitectura de software | T038 | Define Bounded Contexts and Clean Architecture | Definir los Bounded Contexts, capas y dependencias del sistema. | 6 | Alvar | Done |
| — | Persistencia e infraestructura | T039 | Coordinate PostgreSQL and Flyway Configuration | Coordinar la conexión con PostgreSQL y las migraciones Flyway. | 8 | Alvar | Done |
| — | Autenticación e integración | T040 | Integrate Angular Authentication with JWT | Integrar el inicio de sesión de Angular con autenticación JWT. | 6 | Alvar | Done |
| US01–US35 | Integración de funcionalidades | T041 | Integrate Angular Views with REST Services | Integrar las vistas de Angular con los servicios REST del backend. | 7 | Alvar | Done |
| — | Verificación de seguridad e integración | T042 | Verify Authentication, Access and Integration | Verificar autenticación, accesos por rol y comunicación de componentes. | 5 | Alvar | Done |
| — | Landing Page y documentación | T043 | Update Landing Page and Project Report | Actualizar la Landing Page y documentar las evidencias del proyecto. | 8 | Alvar | Done |
| — | Interfaces de autenticación | T044 | Integrate Authentication and Role Interfaces | Integrar las interfaces de acceso y los perfiles de usuario. | 9 | Giuseppe | Done |
| US01–US09 | Gestión de plantas y máquinas | T045 | Integrate Plants and Machines Management | Integrar las operaciones de plantas y máquinas. | 8 | Giuseppe | Done |
| US10–US17 | Mantenimiento preventivo | T046 | Integrate Preventive Maintenance | Integrar programación y consulta de mantenimientos. | 8 | Giuseppe | Done |
| US19–US30 | Fallas y órdenes de trabajo | T047 | Integrate Failures and Work Orders | Integrar el registro de fallas y las operaciones de órdenes. | 8 | Giuseppe | Done |
| US31–US40 | Gestión de inventario | T048 | Integrate Inventory Management | Integrar repuestos, existencias y movimientos de inventario. | 8 | Giuseppe | Done |
| US41–US47; US48–US53 | Analítica y notificaciones | T049 | Integrate Analytics and Notifications | Integrar indicadores, reportes y alertas. | 8 | Giuseppe | Done |
| — | Integración del frontend | T050 | Verify Frontend Integration and Versions | Revisar compatibilidad entre servicios, versiones y componentes. | 8 | Giuseppe | Done |
| — | Usuarios y calidad visual | T051 | Verify Users, Roles and Responsive Design | Verificar perfiles, restricciones y comportamiento responsive. | 10 | Giuseppe | Done |
| — | Dominio y persistencia backend | T052 | Implement Spring Boot Domain and Persistence | Implementar y ajustar el dominio, repositorios y persistencia. | 8 | Diego | Done |
| — | Servicios y pruebas REST | T053 | Implement and Test REST Endpoints | Implementar, integrar y probar endpoints REST. | 8 | Diego | Done |
| — | Seguridad y autorización | T054 | Implement Backend Security and Authorization | Reforzar permisos, autenticación y restricciones por usuario y planta. | 8 | Diego | Done |
| — | Calidad y endurecimiento del backend | T055 | Perform Backend Hardening and Final Tests | Implementar correcciones de integridad y pruebas de regresión. | 8 | Diego | Done |

**Resumen por integrante**

| Integrante | Tareas | Horas estimadas |
|---|---|---:|
| Alvar Lucas Córdova | T037–T043 | 46 |
| Giuseppe Adrián Villanueva Rodríguez | T044–T051 | 67 |
| Diego Rances Rojas Huaranga | T052–T055 | 32 |
| **Total** | **19 tareas** | **145** |

**Resumen del tablero**

| Columna de Trello | Cantidad |
|---|---:|
| To Do | 0 |
| In Process | 0 |
| To Review | 0 |
| Done | 19 |
| **Total** | **19** |

Según el tablero de Trello, las 19 tareas están en `Done`. La aceptación de las User Stories se evalúa por separado, a partir de las pruebas y los resultados de cada funcionalidad.

Las 145 horas son la suma de las estimaciones de las 19 tareas. No deben interpretarse como horas trabajadas ni convertirse directamente a Story Points; para calcular la velocidad se necesita la lista de User Stories aceptadas por el equipo.

#### 5.2.3.4. Development Evidence for Sprint Review

Durante el Sprint 3 se implementaron funcionalidades y correcciones en los repositorios Backend, Frontend y Landing-Page.

La siguiente tabla presenta commits representativos de los cambios realizados.

| Repository | Branch integrada | Commit ID | Commit Message | Commit Message Body | Author | Committed on |
|---|---|---|---|---|---|---|
| Backend | main | `f6764451` | chore: initialize Spring Boot backend | Sin cuerpo adicional | AlvarLC | 2026-10-20 |
| Backend | main | `07f4d101` | chore: configure PostgreSQL datasource | Sin cuerpo adicional | AlvarLC | 2026-10-20 |
| Backend | main | `1d4f117f` | fix: enable Flyway auto-configuration | Sin cuerpo adicional | AlvarLC | 2026-10-20 |
| Backend | main | `ac134bec` | test: enforce clean architecture dependency rules | Sin cuerpo adicional | AlvarLC | 2026-10-21 |
| Backend | main | `462c8b8d` | fix(asset): let plant managers update their own plant | Sin cuerpo adicional | Giuseppe152004 | 2026-11-03 |
| Backend | main | `5a06831b` | build: set version 1.0.1 | Sin cuerpo adicional | Giuseppe152004 | 2026-11-03 |
| Backend | main | `4f9d7737` | fix(workorders): lock work orders during mutations | Sin cuerpo adicional | diego27-16 | 2026-11-03 |
| Backend | main | `b8bb1411` | fix(inventory): prevent integer overflow when receiving stock | Sin cuerpo adicional | diego27-16 | 2026-11-03 |
| Frontend | develop/main | `2ec408e6` | feat: integrate plant deletion with Spring Boot | Sin cuerpo adicional | AlvarLC | 2026-10-30 |
| Frontend | develop/main | `4908ae10` | feat(alerts): integrate backend mark-as-read endpoint | Sin cuerpo adicional | AlvarLC | 2026-11-03 |
| Frontend | develop/main | `bc022973` | ci(frontend): verify pipeline and resolve session injection conflict | Sin cuerpo adicional | AlvarLC | 2026-11-03 |
| Frontend | develop/main | `3d14560d` | fix(iam): map numeric user and plant ids from the API to string ids | Sin cuerpo adicional | Giuseppe152004 | 2026-11-03 |
| Frontend | develop/main | `f6a159c2` | fix(analytics): skip analytics requests for technicians | Sin cuerpo adicional | Giuseppe152004 | 2026-11-03 |
| Frontend | develop/main | `435662ca` | fix(frontend): use Spring Boot authentication instead of public demo flow | Sin cuerpo adicional | diego27-16 | 2026-11-02 |
| Frontend | develop/main | `f712bc2e` | test(work-orders): start only assigned orders | Sin cuerpo adicional | diego27-16 | 2026-11-02 |
| Frontend | develop/main | `d27aa7f4` | test(inventory): map real spare part resources | Sin cuerpo adicional | diego27-16 | 2026-11-02 |
| Landing-Page | main | `1cb02e44` | fix(styles): clean up responsive breakpoints and mobile layout | Elimina reglas CSS duplicadas; mejora selector ES/EN, media queries, planes y botones en móvil; ajusta enlaces y espacios. Resumen del cuerpo original. | Giuseppe152004 | 2026-10-25 |

Estos commits representan una selección de cambios. Los mensajes y la presencia o ausencia de cuerpo adicional se comprobaron en el historial de GitHub. En Landing Page se presenta un resumen del cuerpo extenso para que la tabla sea legible.

**Pull Requests de Backend**

- https://github.com/TechMakers-upc/Backend/pull/1
- https://github.com/TechMakers-upc/Backend/pull/3
- https://github.com/TechMakers-upc/Backend/pull/6
- https://github.com/TechMakers-upc/Backend/pull/8
- https://github.com/TechMakers-upc/Backend/pull/10
- https://github.com/TechMakers-upc/Backend/pull/16
- https://github.com/TechMakers-upc/Backend/pull/17

**Pull Requests de Frontend**

- https://github.com/TechMakers-upc/Frontend/pull/8
- https://github.com/TechMakers-upc/Frontend/pull/9
- https://github.com/TechMakers-upc/Frontend/pull/10

Los commits seleccionados muestran los cambios realizados en el backend, el frontend y la Landing Page durante la integración del Sprint 3.

#### 5.2.3.5. Execution Evidence for Sprint Review

Durante el Sprint 3 se integraron interfaces Angular con servicios REST propios de Spring Boot.

La aplicación contempla los perfiles Gerente de Operaciones, Jefe de Planta y Técnico de Mantenimiento.

**Autenticación**

Se integró el inicio de sesión de Angular con los servicios de autenticación del backend. El mecanismo utiliza JWT para identificar al usuario y permitir operaciones según sus permisos.

![login](<assets/images/01a-login.png>)

![sesion autenticada](<assets/images/01b-sesion-autenticada.png>)

![comprobacion api](<assets/images/01c-comprobacion-api.png>)

**Gerente de Operaciones**

El Gerente de Operaciones dispone de un panel para consultar información de plantas, indicadores y reportes.

Durante las verificaciones se realizaron consultas y operaciones seleccionadas de creación y eliminación de registros temporales.

![Dashboard del Gerente de Operaciones](<assets/images/evidence-sprint3/foto-gerente de operaciones.png>)

![Gestion de plantas](<assets/images/02-plantas.png>)

**Jefe de Planta**

El Jefe de Planta puede consultar la información correspondiente a sus plantas, máquinas, mantenimientos, fallas e inventario, según los permisos establecidos.

Durante las pruebas se realizó la creación y eliminación de una máquina temporal mediante servicios REST.

![Dashboard del Jefe de Planta](<assets/images/evidence-sprint3/foto-jefe de planta.png>)

![Modulo de maquinas](<assets/images/03-maquinas.png>)

**Técnico de Mantenimiento**

El Técnico dispone de interfaces para consultar sus órdenes asignadas, revisar repuestos y reportar fallas.

En las verificaciones se comprobó la visualización de una orden asignada al usuario correspondiente.

![Dashboard del Técnico de Mantenimiento](assets/images/evidence-sprint3/foto-tecnico.png)

![Ordenes de tecnico](<assets/images/04a-ordenes-del-tecnico.png>)

![Detalle asignado](<assets/images/04b-detalle-asignado.png>)

**Órdenes de trabajo**

Se implementaron servicios para registrar órdenes, asignar técnicos, consultar información y administrar operaciones relacionadas con su ejecución.

Las verificaciones realizadas confirmaron la creación de una orden de prueba y su aparición en la vista del técnico asignado.

Las evidencias complementarias incluidas en este apartado documentan la ejecución de órdenes, el uso de repuestos y el cierre de una intervención desde la aplicación desplegada.

![Modulo de ordenes de trabajo](<assets/images/05-modulo-ordenes.png>)

![Formulario creado](<assets/images/06a-formulario-creacion.png>)

![Orden creada](<assets/images/06b-orden-creada.png>)

![Asignar tecnico](<assets/images/06c-asignar-tecnico.png>)

![Orden asignada](<assets/images/06d-orden-asignada.png>)

![Orden en ejecucion](<assets/images/06e-orden-en-ejecucion.png>)

![Avance registrado](<assets/images/06f-avance-registrado.png>)

![Formulario cierre](<assets/images/06g-formulario-cierre.png>)

![Orden cerrada](<assets/images/06h-orden-cerrada.png>)

**Inventario**

Se implementaron operaciones para consultar repuestos, administrar existencias y registrar movimientos.

El backend incorpora validaciones destinadas a proteger la integridad de los datos de inventario.

![Inventario](<assets/images/07a-inventario.png>)

![Postgresql](<assets/images/07b-postgresql.png>)

**Analítica y reportes**

Se incorporaron consultas de indicadores y vistas para presentar información de mantenimiento.

Se verificó la disponibilidad de las interfaces y la exportación CSV. Además, se generó y abrió un PDF de mantenimiento mediante el diálogo de impresión del navegador. La exactitud de indicadores con datos históricos complejos requiere pruebas adicionales.

![dashboard indicadores](<assets/images/08a-dashboard-indicadores.png>)

![Reportes](<assets/images/08b-reportes.png>)




**Evidencias complementarias de ejecución — Sprint 3**

Las pruebas se realizaron el 15 de noviembre de 2026 en la versión desplegada de FixCore, utilizando cuentas de Gerente de Operaciones, Jefe de Planta y Técnico de Mantenimiento.

**Caso 1. Registro, ejecución y cierre de órdenes de trabajo**

Se creó una orden correctiva y se revisó su asignación, ejecución y cierre desde los perfiles correspondientes.

![Registro de orden correctiva](assets/images/evidence-sprint3/1-ordenes.png)

*Figura E-01. Registro de una orden de trabajo correctiva.*

![Detalle de orden registrada](assets/images/evidence-sprint3/2-ordenes.png)

*Figura E-02. Consulta del detalle y estado de la orden registrada.*

![Orden asignada al tecnico](assets/images/evidence-sprint3/3-ordenes.png)

*Figura E-03. Seguimiento de la orden desde la cuenta del técnico asignado.*

![Ejecucion de orden de trabajo](assets/images/evidence-sprint3/4-ordenes.png)

*Figura E-04. Registro de actividades durante la ejecución de la orden.*

![Resultado de orden de trabajo](assets/images/evidence-sprint3/5-ordenes.png)

*Figura E-05. Consulta del resultado de la orden de trabajo.*

**Resultado:** FixCore mostró la creación y ejecución de órdenes de trabajo, incluido el cierre de una intervención.

**Caso 2. Registro de repuestos y actualización de inventario**

Se registró un repuesto de prueba con SKU `3232323`, denominado `asdasd`, categoría Mecánicos y stock inicial de 100 unidades. Posteriormente se documentó el uso de 20 unidades en una orden de trabajo y la visualización de 80 unidades disponibles en el inventario.

![Formulario de inventario](assets/images/evidence-sprint3/1-inventario.png)

*Figura E-06. Formulario de registro del repuesto con stock inicial de 100 unidades.*

![Inventario inicial](assets/images/evidence-sprint3/2-inventario.png)

*Figura E-07. Ficha del repuesto registrado con stock de 100 unidades y movimiento de ingreso inicial.*

![Inventario actualizado](assets/images/evidence-sprint3/4-inventario.png)

*Figura E-08. Listado de inventario con 80 unidades disponibles para el SKU `3232323`.*

**Resultado:** el stock del repuesto pasó de 100 a 80 unidades después de registrar el uso de 20 unidades en una orden. Esta prueba confirma el cambio visible en la aplicación, pero no sustituye una consulta directa a PostgreSQL.

**Caso 3. Generación y revisión de reportes PDF**

Desde el perfil Gerente de Operaciones se utilizó la función de impresión del módulo Reportes para guardar un documento en formato PDF. Se comprobó visualmente que el archivo generado podía abrirse y mostraba la estructura del reporte de mantenimiento, el período seleccionado, los indicadores y las secciones de trabajos, tiempo muerto, repuestos y fallas.

![Vista previa del reporte PDF](assets/images/evidence-sprint3/1-reporte.png)

*Figura E-09. Vista previa del reporte de mantenimiento con la opción Guardar como PDF.*

![Documento PDF abierto](assets/images/evidence-sprint3/2-reporte.png)

*Figura E-10. Archivo PDF generado y abierto en el visor del navegador.*

**Resultado:** el documento PDF se generó y abrió correctamente. Para los filtros seleccionados, el reporte mostró cero órdenes y cero fallas. No se comprobaron cálculos con otros conjuntos de datos.

**Resumen de las evidencias complementarias**

| Caso evaluado | Resultado sustentado por las capturas |
|---|---|
| Gestión de órdenes | Creación, consulta y ejecución de órdenes documentadas visualmente; se muestra una intervención completada. |
| Inventario | Registro de un repuesto con stock de 100 unidades y posterior visualización de 80 unidades tras el uso de 20. |
| Exportación PDF | Generación mediante el diálogo de impresión y apertura del documento resultante. |

Los resultados corresponden a las operaciones observadas en la aplicación web. La verificación directa de los datos almacenados en PostgreSQL queda fuera de estas pruebas.

**Resultados de verificación**

| Funcionalidad | Resultado documentado |
|---|---|
| Autenticación de los tres perfiles | Verificada en pruebas realizadas. |
| Acceso a vistas según perfil | Verificado en operaciones seleccionadas. |
| Consulta de plantas y máquinas | Verificada. |
| Creación y eliminación de registros de prueba | Verificada en operaciones seleccionadas. |
| Creación y asignación de órdenes | Verificada. |
| Visualización de órdenes asignadas | Verificada. |
| Ejecución y cierre completo de órdenes | Las capturas del Sprint 3 y la entrevista E03 muestran el inicio, ejecución y cierre de órdenes. La verificación directa de persistencia y permisos se evalúa por separado. |
| Consumo de repuestos durante una orden | Las capturas complementarias muestran 100 unidades iniciales, uso de 20 unidades y 80 unidades disponibles. No se realizó una comprobación SQL directa. |
| Exportación CSV | Verificada. |
| Validación del contenido PDF | Se generó y abrió un PDF real; se comprobó visualmente su estructura, período e indicadores para una selección sin operaciones registradas. |
| Pruebas automatizadas del backend | Ejecutadas durante la integración. |
| Integración continua del frontend | Se registraron ejecuciones satisfactorias en GitHub Actions. |

**Alcance:** se verificaron operaciones de órdenes, actualización visible del inventario y generación de PDF. No se realizaron consultas SQL adicionales ni una prueba integral de autorización entre plantas.

**Video de navegación del producto — Sprint 3**

El video de navegación del Sprint 3 muestra distintas pantallas y operaciones de FixCore como complemento de las capturas incluidas en esta sección.

[Ver video de navegación del Sprint 3 en Microsoft Stream](https://upcedupe-my.sharepoint.com/:v:/g/personal/u202324461_upc_edu_pe/IQAmjsCEEoO2RpFwsr6v6JFrAYjzXHwygwx15IxXrxnUXBs?nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJTdHJlYW1XZWJBcHAiLCJyZWZlcnJhbFZpZXciOiJTaGFyZURpYWxvZy1MaW5rIiwicmVmZXJyYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6InZpZXcifX0%3D&e=ynn4Vg)



Los recorridos registrados durante las entrevistas de validación se documentan en [5.3.2. Registro de Entrevistas](#532-registro-de-entrevistas).
#### 5.2.3.6. Services Documentation Evidence for Sprint Review

Durante el Sprint 3 se desarrolló una API REST propia utilizando Java, Spring Boot, Spring Security, Spring Data JPA y PostgreSQL.

Los servicios se organizaron según los contextos de negocio de FixCore.

**Repositorio:** https://github.com/TechMakers-upc/Backend

**Base URL:** https://backend-zv29.onrender.com/api/v1

**Swagger UI local:** http://localhost:8080/swagger-ui.html

La exposición de Swagger en producción depende de la configuración del entorno. Para evitar divulgar información técnica innecesaria, su acceso público puede permanecer deshabilitado.

**Endpoints principales documentados**

| Módulo | Método | Endpoint | Descripción |
|---|---|---|---|
| Authentication | POST | `/authentication/sign-in` | Autenticar usuario. |
| Authentication | POST | `/authentication/sign-up` | Registrar usuario mediante una cuenta con rol de gerencia autorizada; no es un registro público. |
| Users | GET | `/users/me` | Consultar al usuario autenticado. |
| Plants | GET | `/plants` | Consultar plantas. |
| Plants | POST | `/plants` | Registrar planta. |
| Plants | PUT | `/plants/{id}` | Actualizar planta. |
| Plants | DELETE | `/plants/{id}` | Eliminar planta. |
| Assets | GET | `/assets` | Consultar máquinas. |
| Assets | POST | `/assets` | Registrar máquina. |
| Assets | PUT | `/assets/{id}` | Actualizar máquina. |
| Assets | DELETE | `/assets/{id}` | Eliminar máquina. |
| Maintenance | GET | `/maintenance-plans` | Consultar planes de mantenimiento. |
| Maintenance | POST | `/maintenance-plans` | Registrar plan. |
| Inventory | GET | `/spare-parts` | Consultar repuestos. |
| Inventory | POST | `/spare-parts` | Registrar repuesto. |
| Inventory | GET | `/stock-movements` | Consultar movimientos de existencias. |
| Failures | GET | `/failures` | Consultar fallas. |
| Failures | POST | `/failures` | Reportar falla. |
| Work Orders | GET | `/work-orders` | Consultar órdenes de trabajo. |
| Work Orders | POST | `/work-orders` | Registrar orden. |
| Work Orders | PATCH | `/work-orders/{id}/assignment` | Asignar técnico. |
| Work Orders | DELETE | `/work-orders/{id}` | Eliminar una orden cuando las reglas lo permiten. |
| Work Orders | POST | `/work-orders/{id}/start` | Iniciar una orden asignada conforme a las reglas de acceso. |
| Work Orders | POST | `/work-orders/{id}/work-logs` | Registrar el trabajo realizado en una orden. |
| Work Orders | POST | `/work-orders/{id}/part-usages` | Registrar repuestos utilizados en una orden. |
| Work Orders | POST | `/work-orders/{id}/completion` | Solicitar el cierre de una orden con las validaciones correspondientes. |
| Analytics | GET | `/analytics/summary` | Consultar indicadores. |
| Notifications | GET | `/alerts` | Consultar alertas. |

**Entradas y resultados de las operaciones del Sprint 3**

Las rutas siguientes usan la base `/api/v1`. Salvo el inicio de sesión, requieren un token JWT en `Authorization: Bearer`. En cada solicitud de escritura se envía un JSON conforme al contrato publicado en Swagger. El siguiente resumen explica qué datos se envían y qué resultado se espera; no sustituye los DTO ni afirma que cada operación haya sido probada en producción.

| Módulo | Método y ruta | Parámetros o cuerpo de la solicitud | Resultado esperado o caso de error |
|---|---|---|---|
| IAM | `POST /authentication/sign-in` | JSON con `email` y `password` | Sesión con información de cuenta y token; acceso rechazado si las credenciales no son válidas. |
| IAM | `POST /authentication/sign-up` | JSON con datos del usuario, rol y planta, según Swagger; requiere una cuenta de gerencia autorizada | Nueva cuenta si cumple las reglas; `403` sin permisos. El registro no es público. |
| IAM | `GET /users/me` | Token JWT; sin cuerpo | Datos de la cuenta autenticada; `401` si la sesión no es válida. |
| Plantas | `GET /plants` | Token JWT; sin cuerpo | Lista de plantas permitidas por los permisos del usuario. |
| Plantas | `POST /plants` | JSON con nombre y datos de ubicación de la planta | Registro de planta o error de validación/autorización. |
| Plantas | `PUT /plants/{id}` | `id` en ruta y JSON con los campos a actualizar | Planta actualizada, o `403` si no puede modificarla. |
| Plantas | `DELETE /plants/{id}` | `id` en ruta | Eliminación autorizada o conflicto con reglas de negocio. |
| Activos | `GET /assets` | Token JWT; sin cuerpo | Activos visibles para el usuario. |
| Activos | `POST /assets` | JSON con los datos de la máquina y su relación con una planta | Nuevo activo o error de validación. |
| Activos | `PUT /assets/{id}` | `id` y JSON del activo | Cambios guardados si pertenece al alcance autorizado. |
| Activos | `DELETE /assets/{id}` | `id` en ruta | Eliminación cuando las restricciones lo permiten. |
| Mantenimiento | `GET /maintenance-plans` | Token JWT; sin cuerpo | Relación de planes accesibles. |
| Mantenimiento | `POST /maintenance-plans` | JSON con activo, programación y datos requeridos por Swagger | Plan registrado o error de validación. |
| Inventario | `GET /spare-parts` | Token JWT; sin cuerpo | Relación de repuestos accesibles. |
| Inventario | `POST /spare-parts` | JSON con datos del repuesto y stock según contrato | Repuesto creado o rechazo por validaciones. |
| Inventario | `GET /stock-movements` | Token JWT; sin cuerpo | Movimientos de existencias permitidos. |
| Fallas | `GET /failures` | Token JWT; sin cuerpo | Fallas que el usuario puede consultar. |
| Fallas | `POST /failures` | JSON con datos de la falla y activo relacionado | Falla registrada o error de validación. |
| Órdenes | `GET /work-orders` | Token JWT; sin cuerpo | Órdenes visibles según planta y responsabilidad. |
| Órdenes | `POST /work-orders` | JSON con datos de la intervención y referencias requeridas | Orden registrada si cumple las reglas. |
| Órdenes | `PATCH /work-orders/{id}/assignment` | `id` y datos de asignación del técnico | Asignación registrada; `403` si el técnico o la orden queda fuera del alcance permitido. |
| Órdenes | `DELETE /work-orders/{id}` | `id` en ruta | Eliminación únicamente cuando el estado y permisos lo permiten. |
| Órdenes | `POST /work-orders/{id}/start` | `id` y sesión del usuario autorizado | Inicio de orden o `409` si su estado no permite iniciarla. |
| Órdenes | `POST /work-orders/{id}/work-logs` | `id` y JSON con el trabajo realizado | Registro de avance asociado a la orden. |
| Órdenes | `POST /work-orders/{id}/part-usages` | `id` y JSON con el repuesto y cantidad utilizados | Uso registrado o error por reglas de inventario. |
| Órdenes | `POST /work-orders/{id}/completion` | `id` y datos de cierre definidos en el contrato | Orden completada cuando se satisfacen sus validaciones. |
| Analítica | `GET /analytics/summary` | Token JWT; sin cuerpo | Indicadores autorizados según el rol. |
| Alertas | `GET /alerts` | Token JWT; sin cuerpo | Alertas disponibles para la cuenta. |

**Otras rutas del backend.** El README técnico también registra `GET /users`, `GET /users/{id}`, `GET /roles`, cambios de estado y manuales de activos, programación y suspensión de planes, entradas y ajustes de stock, cambios de prioridad o resolución de fallas, métricas de tiempo muerto y rendimiento técnico, y lectura de alertas. Sus parámetros y cuerpos completos deben consultarse en Swagger de la versión utilizada para las pruebas; no se reproducen esquemas JSON no contrastados.

**Ejemplo de consulta protegida** (reemplazar el token con una credencial temporal del entorno de pruebas):

```http
GET /api/v1/work-orders HTTP/1.1
Host: backend-zv29.onrender.com
Authorization: Bearer TOKEN_DE_PRUEBA
```

Una respuesta satisfactoria devuelve las órdenes autorizadas para el usuario. El backend emplea `400` ante datos inválidos, `401` cuando la autenticación no es válida, `403` si faltan permisos, `404` cuando no existe el recurso y `409` cuando se incumple una regla de negocio. El formato común de error contiene `status`, `message` y `timestamp`.


Los endpoints listados resumen los principales servicios REST del proyecto. La documentación OpenAPI permite consultar los parámetros y formatos de respuesta de cada operación.

La mayoría de las operaciones requiere autenticación mediante JWT.

**Ejemplo 1. Inicio de sesión**

Método:

`POST /api/v1/authentication/sign-in`

Request Body:

```json
{
  "email": "usuario@fixcore.demo",
  "password": "CONTRASENA_DE_PRUEBA"
}
```

Una solicitud satisfactoria devuelve un código HTTP `200 OK` y los datos necesarios para mantener una sesión autenticada.

Ejemplo ilustrativo de respuesta abreviada:

```json
{
  "account": {
    "id": 1,
    "email": "usuario@fixcore.demo"
  },
  "token": "TOKEN_JWT_DE_EJEMPLO"
}
```

**Ejemplo 2. Registro de planta**

Método:

`POST /api/v1/plants`

Request Body:

```json
{
  "name": "Planta de Prueba",
  "city": "Lima",
  "address": "Dirección de prueba"
}
```

Una operación satisfactoria de creación puede devolver `201 Created` y la información del registro generado.

**Ejemplo 3. Consulta de máquina**

Método:

`GET /api/v1/assets/{id}`

Parámetro:

- `id`: identificador de la máquina.

Respuestas posibles:

- `200 OK`: recurso encontrado.
- `403 Forbidden`: acceso no autorizado.
- `404 Not Found`: recurso inexistente.

**Ejemplo 4. Eliminación de una orden de trabajo**

Método:

`DELETE /api/v1/work-orders/{id}`

Parámetro:

- `id`: identificador de la orden.

La operación depende de las restricciones implementadas por el backend. Cuando se completa correctamente y no devuelve contenido, puede utilizarse `204 No Content`.

**Manejo de errores**

| Código HTTP | Significado |
|---|---|
| 400 | Solicitud inválida. |
| 401 | Autenticación ausente o inválida. |
| 403 | Operación no autorizada. |
| 404 | Recurso no encontrado. |
| 409 | Conflicto con una regla de negocio. |

**Documentación interactiva**

![Swagger](<assets/images/09-swagger-ui.png>)

![Swagger endpoint](<assets/images/10-endpoint-swagger-200.png>)



#### 5.2.3.7. Software Deployment Evidence for Sprint Review

Durante el Sprint 3 se configuró el despliegue de FixCore utilizando GitHub Pages, Vercel y Render.

**1. Configuración de PostgreSQL**

Se creó una instancia PostgreSQL en Render para proporcionar almacenamiento persistente a los servicios del backend.

![Configuración inicial de PostgreSQL](assets/images/evidence-sprint3/deploy1.jpeg)

*Figura 1. Configuración inicial de PostgreSQL en Render.*

Posteriormente se configuraron los recursos disponibles para la instancia.

![Configuración de recursos PostgreSQL](assets/images/evidence-sprint3/deploy2.jpeg)

*Figura 2. Configuración de recursos de la instancia PostgreSQL.*

**2. Configuración del backend**

Se creó un Web Service vinculado con el repositorio Backend de TechMakers.

El servicio se configuró utilizando Docker y la rama `main` como origen del código.

![Configuración del backend](assets/images/evidence-sprint3/deploy3.jpeg)

*Figura 3. Configuración del servicio backend en Render.*

**3. Variables de entorno**

Se configuraron las variables utilizadas por Spring Boot para establecer la conexión con PostgreSQL, seleccionar el perfil de producción y administrar la autenticación.

Entre ellas se encuentran `DB_URL`, `DB_USERNAME`, `DB_PASSWORD`, `JWT_SECRET`, `SPRING_PROFILES_ACTIVE` y `CORS_ALLOWED_ORIGINS`.

![variables redactadas](<assets/images/11-variables-redactadas.png>)

*Figura 4. Variables de entorno del backend con los secretos protegidos.*

Las variables de entorno utilizadas en Render contienen parámetros de configuración y credenciales que no deben publicarse en el informe ni en capturas compartidas.

**4. Inicialización de la base de datos**

Se utilizó Flyway para ejecutar y validar las migraciones del esquema PostgreSQL.

Se documentaron once migraciones Flyway. La captura adjunta recoge la comprobación técnica del esquema; para confirmar su ejecución en producción se deben revisar los registros de Render.

![flyway postgresql](<assets/images/12-flyway-postgresql.png>)

*Figura 5. Evidencia de migraciones y conexión con la base de datos.*

**5. Publicación del backend**

El backend fue configurado y publicado como Web Service de Render.

**Repositorio:** https://github.com/TechMakers-upc/Backend

**URL:** https://backend-zv29.onrender.com

**Health Check:** https://backend-zv29.onrender.com/actuator/health

![Backend publicado en Render](assets/images/evidence-sprint3/backend-live.png)
*Figura 6. Backend de FixCore publicado en Render.*

![Render](assets/images/render.jpeg)
*Figura 7. Backend de FixCore publicado en Render.*

**6. Publicación del frontend**

La Web Application Angular fue publicada mediante Vercel y configurada para comunicarse con la API de Spring Boot.

**Repositorio:** https://github.com/TechMakers-upc/Frontend

**URL:** https://fixcore-frontend-eight.vercel.app/

![Frontend publicado en Vercel](assets/images/evidence-sprint3/fronted-live.png)

*Figura 8. Frontend de FixCore publicado en Vercel.*

**7. Publicación de la Landing Page**

La Landing Page se mantuvo publicada en GitHub Pages e incorporó mejoras relacionadas con diseño responsive y presentación.

**Repositorio:** https://github.com/TechMakers-upc/Landing-Page

**URL:** https://techmakers-upc.github.io/Landing-Page/

![Landing Page de FixCore](assets/images/evidence-sprint3/foto-landingpage.png)

*Figura 9. Landing Page publicada.*

**Resumen de despliegues**

| Componente | Plataforma | Estado documentado |
|---|---|---|
| Landing Page | GitHub Pages | Publicado |
| Web Application Angular | Vercel | Publicado |
| Backend Spring Boot | Render | Publicado |
| PostgreSQL | Render | Configurado e integrado |

La arquitectura de despliegue separa las responsabilidades del frontend, backend y base de datos, permitiendo que los usuarios accedan a FixCore desde un navegador.

#### 5.2.3.8. Team Collaboration Insights during Sprint

Durante el Sprint 3, las contribuciones de implementación identificadas se concentraron en Alvar Lucas Córdova, Giuseppe Adrián Villanueva Rodríguez y Diego Rances Rojas Huaranga.

La integración de los cambios se realizó mediante Git y GitHub, utilizando commits descriptivos, ramas y Pull Requests.

**Alvar Lucas Córdova**

Participó en la configuración inicial del backend, arquitectura modular, persistencia, pruebas de estructura, integración Angular, correcciones de formularios, comunicación HTTP y despliegue.

**Giuseppe Adrián Villanueva Rodríguez**

Participó principalmente en la implementación de servicios backend relacionados con autenticación, activos, mantenimiento, inventario, fallas, órdenes, indicadores y notificaciones. También realizó correcciones en el frontend.

**Diego Rances Rojas Huaranga**

Participó en la integración del frontend con los servicios reales y en pruebas de órdenes e inventario. Además, realizó correcciones de seguridad, autorización, concurrencia e integridad de datos del backend.

**Resultados de la colaboración**

Durante la integración se identificaron diferencias entre los modelos de datos, identificadores, permisos y comportamiento de determinadas operaciones.

Estas observaciones dieron lugar a ajustes en los contratos REST, validaciones y pruebas de regresión.

Las principales lecciones obtenidas fueron:

- Coordinar los contratos REST antes de integrar las funcionalidades.
- Comprobar los permisos tanto en el frontend como en el backend.
- Utilizar pruebas automatizadas para identificar regresiones.
- Proteger las operaciones concurrentes sobre inventario y órdenes de trabajo.
- Mantener la documentación alineada con el desarrollo efectivo.

**Evidencias de colaboración**

![Contribuciones del backend](assets/images/evidence-sprint3/contribuciones-backend.png)

*Figura 9. Evidencia de contribuciones en el repositorio Backend.*

![Contribuciones del frontend](assets/images/evidence-sprint3/contribuciones-fronted.png)

*Figura 10. Evidencia de contribuciones en el repositorio Frontend.*

![Contribuciones de la Landing Page](assets/images/evidence-sprint3/contribuciones-landingpage.png)

*Figura 11. Evidencia de contribuciones en el repositorio Landing-Page.*

Durante el período revisado no se identificaron contribuciones de implementación de Sunio Danilo Landa Sánchez ni Pierre Alessandro Mendoza Boluarte. Sus participaciones anteriores permanecen registradas en los sprints correspondientes.

El principal resultado técnico del Sprint 3 fue integrar la Web Application con servicios REST propios, persistencia, autenticación y mecanismos de control de acceso.

Las pruebas complementarias documentan el cierre de órdenes y la actualización visible del inventario. Queda por completar la verificación directa en PostgreSQL y las pruebas integrales de restricciones de acceso.

---

### 5.3. Validation Interviews

Durante el Sprint 3 se grabaron **tres sesiones de interacción** con la Landing Page y la aplicación de FixCore. Este apartado recoge las pantallas visitadas, las tareas realizadas y los momentos más relevantes de cada grabación.

Las tres sesiones recorren la Landing Page y tareas de los perfiles Jefe de Planta, Gerente de Operaciones y Técnico. El análisis de opiniones y dificultades requiere revisar las respuestas de los participantes.

#### 5.3.1. Diseño de Entrevistas

**Objetivo:** evaluar la comprensión del Landing Page, la navegación, la ejecución de tareas relevantes y la claridad de mensajes en la Web Application. Se consideran usabilidad, arquitectura de información y diseño inclusivo.

Los segmentos objetivo del Capítulo II son (1) pymes manufactureras, (2) empresas consultoras y contratistas de ingeniería industrial y (3) técnicos de mantenimiento. Las grabaciones se organizaron por perfiles de acceso a FixCore: Gerente de Operaciones, Jefe de Planta y Técnico. La ocupación real y el segmento de cada participante aún deben confirmarse.

| Grabación | Rol utilizado en FixCore | Escenarios mostrados en la grabación | Objetivo de la observación |
|---|---|---|---|
| E01 | Jefe de Planta | Landing Page, máquinas, fallas, órdenes e inventario | Revisar el acceso y la organización de operaciones de mantenimiento |
| E02 | Gerente de Operaciones | Landing Page, plantas, tablero, órdenes, planificación y reportes | Revisar la visualización de información para supervisión |
| E03 | Técnico | Landing Page, órdenes asignadas, repuestos y cierre de orden | Revisar la secuencia de atención y registro del trabajo |

**Guía de validación:** ¿qué entiende el participante al visitar la Landing Page?, ¿qué información identifica primero?, ¿puede encontrar las opciones de su perfil?, ¿comprende los campos y estados?, ¿qué tarea le resulta más fácil o difícil?, ¿qué mejoraría?, ¿utilizaría FixCore en su trabajo y por qué? La guía se utiliza para organizar el análisis y contrastar las respuestas registradas.

Las fichas de las sesiones incluyen el rol utilizado y el recorrido observado. Para completarlas faltan algunos datos personales y profesionales, la fecha de cada sesión y el análisis de las respuestas. Las cuentas utilizadas durante las pruebas son usuarios de FixCore, no identidades de los participantes.

#### 5.3.2. Registro de Entrevistas

Se dispone de **tres grabaciones MP4** de sesiones de validación, con una duración conjunta aproximada de **34 minutos y 2 segundos**.

| ID | Participante identificado en Teams | Rol de prueba | Duración del MP4 | Fecha de la entrevista | Estado de registro |
|---|---|---|---|---|---|
| E01 | «George» (apellido por confirmar) | Jefe de Planta | 11:59.70 | Por confirmar | Recorrido documentado; audio por analizar |
| E02 | «Alberca Saavedra, Víctor Manuel» (nombre visible en Teams) | Gerente de Operaciones | 13:36.63 | Por confirmar | Recorrido documentado; audio por analizar |
| E03 | «cabanillas anderson» (nombre visible en Teams) | Técnico | 08:25.97 | Por confirmar | Recorrido documentado; audio por analizar |

**Enlaces de Microsoft Stream proporcionados por el equipo** (en el orden en que fueron compartidos):

- [Enlace de validación 1 — Microsoft Stream](https://upcedupe-my.sharepoint.com/:v:/g/personal/u202324461_upc_edu_pe/IQAP5e8dn0yhQY3L36LRTBe_ATyEYBqREHub17NjnAOoeBs?nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJTdHJlYW1XZWJBcHAiLCJyZWZlcnJhbFZpZXciOiJTaGFyZURpYWxvZy1MaW5rIiwicmVmZXJyYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6InZpZXcifX0%3D&e=uwNoPi)
- [Enlace de validación 2 — Microsoft Stream](https://upcedupe-my.sharepoint.com/:v:/g/personal/u202324461_upc_edu_pe/IQCgWLgTjns1T6HIqOm0lbuZAWSdUbm4AuT0lfSPbGicQQ8?nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJTdHJlYW1XZWJBcHAiLCJyZWZlcnJhbFZpZXciOiJTaGFyZURpYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6InZpZXcifX0%3D&e=OhDqkm)
- [Enlace de validación 3 — Microsoft Stream](https://upcedupe-my.sharepoint.com/:v:/g/personal/u202324461_upc_edu_pe/IQALFPlFxumyQrXU888fIzevAWpVsdnZGXzEaKdIgfr2ZPo?nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJTdHJlYW1XZWJBcHAiLCJyZWZlcnJhbFZpZXciOiJTaGFyZURpYWxvZy1MaW5rIiwicmVmZXJyYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6InZpZXcifX0%3D&e=w0a8ne)

**Enlaces de las sesiones:** se mantienen los enlaces aportados por el equipo. La correspondencia entre cada dirección de Stream y los archivos E01–E03 debe confirmarse con los títulos de las grabaciones.

**E01 — Interacción con el perfil de Jefe de Planta («George»)**

- Archivo aportado: `WhatsApp Video 2026-11-10 at 02.13.01.mp4`.
- Identificación: el nombre visible en la videollamada es «George». Faltan apellido, edad, distrito, ocupación y segmento objetivo.
- **00:20:** Landing Page y presentación de FixCore; **00:50–02:20:** secciones de características y planes.
- **02:50–03:50:** vista de Jefe de Planta y listado de máquinas con filtros.
- **04:20–05:50:** formulario de registro y ficha de una máquina.
- **06:20–08:50:** reporte de falla y creación/detalle de una Orden de Trabajo.
- **09:20–11:50:** inventario, registro de repuesto y consulta de movimientos.
**Resumen de la sesión:** se recorrieron las pantallas de registro y consulta de máquinas, fallas, órdenes e inventario. El análisis de las dificultades que encontró el participante requiere revisar sus respuestas.

![E01: captura real de la grabación de validación del Jefe de Planta](assets/images/validation-sprint3/av2-validacion-e01-jefe-planta.jpg)

*Figura E01. Captura de la sesión con el formulario de registro de máquina y participantes de la videollamada; archivo original E01.*

**E02 — Interacción con el perfil de Gerente de Operaciones (Víctor Manuel Alberca Saavedra)**

- Archivo aportado: `WhatsApp Video 2026-11-10 at 01.26.11.mp4`.
- Identificación: nombre registrado en Teams. Faltan edad, distrito, ocupación y segmento objetivo.
- **00:20–02:20:** Landing Page y pantalla de inicio de sesión.
- **02:50–05:50:** dashboard, indicadores, plantas y detalle de planta.
- **06:20–08:20:** consulta/creación de órdenes y mantenimiento preventivo.
- **08:50–10:50:** desempeño de técnicos, indicadores y vista previa de reportes.
- **11:50–13:20:** regreso al resumen y consulta de órdenes.
**Resumen de la sesión:** el participante recorrió módulos de plantas, órdenes y reportes. Se mostró una vista previa, pero aún no se ha comprobado la descarga y el contenido del PDF.

![E02: captura real de la grabación de validación de Gerencia](assets/images/validation-sprint3/av2-validacion-e02-gerente-operaciones.jpg)

*Figura E02. Captura del resumen de plantas e indicadores del perfil de Gerente de Operaciones; archivo original E02.*

**E03 — Interacción con el perfil de Técnico («cabanillas anderson»)**

- Archivo aportado: `entrevista de validación (técnico).mp4`.
- Identificación: nombre registrado en Teams. Faltan edad, distrito, ocupación y segmento objetivo.
- **00:20–02:20:** Landing Page, ingreso a la aplicación y panel de Técnico.
- **02:50–03:50:** consulta de órdenes asignadas y máquinas.
- **04:20–05:20:** consulta de una orden y visualización del cambio de pendiente a en progreso.
- **04:50–06:50:** consulta de repuestos y registro de un repuesto de prueba asociado a la orden.
- **07:20–08:20:** formulario de cierre y visualización final de una orden con estado `COMPLETADA`.
**Resumen de la sesión:** se registró el avance y cierre de una Orden de Trabajo hasta el estado `COMPLETADA` en la interfaz. Falta contrastar el descuento de stock, los datos de PostgreSQL y los permisos sobre órdenes ajenas.

![E03: captura de la sesión del Técnico](assets/images/validation-sprint3/av2-validacion-e03-tecnico.jpg)

*Figura E03-A. Panel y órdenes del rol Técnico, con la videollamada visible.*

![E03: orden completada al final de la grabación](assets/images/validation-sprint3/av2-validacion-e03-orden-completada.jpg)

*Figura E03-B. Una Orden de Trabajo aparece como `COMPLETADA` al final de la grabación.*

**Matriz de resultados observables (sin atribuir opiniones)**


##### Análisis de resultados de las entrevistas

Se analizaron los recorridos registrados en las tres sesiones de validación, considerando las tareas realizadas y los resultados observados en la aplicación.

###### E01. Análisis de la entrevista — Jefe de Planta

**Interacción documentada**

Durante la sesión se presentó la Landing Page y se recorrieron las principales funcionalidades del Jefe de Planta. Se revisaron el listado y registro de máquinas, los filtros de búsqueda, el reporte de fallas, las órdenes de trabajo y la administración de repuestos.

**Resultados observados**

- Se recorrieron las opciones de consulta y registro de máquinas.
- Se visualizaron los formularios de reporte de fallas y órdenes de trabajo.
- Se revisaron las funcionalidades de consulta y registro de repuestos.
- Se documentó la navegación entre módulos relacionados con la administración del mantenimiento.

**Análisis**

El recorrido permitió observar la distribución de las funcionalidades destinadas a la administración de activos y mantenimiento industrial. Las pantallas revisadas muestran cómo se organizan las operaciones de registro, consulta y seguimiento.

**Conclusión**

La sesión documentó los principales recorridos funcionales del Jefe de Planta. Constituye evidencia de navegación y uso de interfaces, pero no permite establecer el nivel de satisfacción, las dificultades percibidas ni la persistencia de las operaciones sin revisar las respuestas del participante y realizar pruebas adicionales.

###### E02. Análisis de la entrevista — Gerente de Operaciones

**Interacción documentada**

Durante la sesión se recorrieron las funcionalidades de supervisión de FixCore. Se revisaron el dashboard, los indicadores, las plantas, las órdenes de trabajo, el mantenimiento preventivo, el rendimiento de técnicos y la vista previa de reportes.

**Resultados observados**

- Se visualizaron indicadores generales e información de plantas.
- Se recorrieron los módulos de órdenes de trabajo y planificación.
- Se consultaron las interfaces relacionadas con el desempeño de los técnicos.
- Se mostró la vista previa de reportes de mantenimiento.
- No se verificó la descarga ni el contenido final de un documento PDF.

**Análisis**

El recorrido permitió documentar cómo están organizadas las interfaces utilizadas para supervisar las operaciones de mantenimiento. Se observaron módulos de consulta de información y seguimiento de actividades de distintas plantas.

**Conclusión**

La sesión aporta evidencia visual de las funcionalidades de supervisión y consulta del Gerente de Operaciones. No demuestra por sí sola la exactitud de los indicadores, la correcta exportación de los reportes ni la valoración del participante.

###### E03. Análisis de la entrevista — Técnico de Mantenimiento

**Interacción documentada**

Durante la sesión se recorrieron las funcionalidades correspondientes al Técnico de Mantenimiento. Se consultaron órdenes asignadas, máquinas y repuestos, se registró un repuesto de prueba y se visualizó el cierre de una orden de trabajo.

**Resultados observados**

- Se consultaron las órdenes asignadas al técnico.
- Se visualizó el cambio de una orden pendiente a en progreso.
- Se revisaron los repuestos disponibles.
- Se registró un repuesto asociado a una intervención.
- Se utilizó el formulario de cierre.
- Se observó una orden con estado COMPLETADA al finalizar el recorrido.

**Análisis**

La sesión permitió documentar una secuencia operativa que abarcó diferentes estados de una orden de trabajo. Se observó la utilización de interfaces para registrar actividades y consultar los recursos relacionados con la intervención.

**Conclusión**

La sesión muestra el recorrido del Técnico desde la consulta de una orden hasta su finalización visible en la aplicación. La evidencia no confirma por sí sola el descuento real del inventario, la persistencia en PostgreSQL ni todas las restricciones de autorización.

###### Análisis comparativo de las entrevistas

| Criterio | E01 — Jefe de Planta | E02 — Gerente | E03 — Técnico |
|---|---|---|---|
| Funcionalidades | Máquinas, fallas, órdenes e inventario | Plantas, indicadores y reportes | Órdenes, repuestos y cierre |
| Evidencia principal | Formularios y navegación | Dashboard y reportes | Orden completada |
| Aspectos por verificar | Persistencia y respuestas | Contenido PDF y respuestas | Stock, persistencia y permisos |

###### Conclusiones generales

1. Las tres sesiones documentaron recorridos diferenciados para los perfiles de Jefe de Planta, Gerente de Operaciones y Técnico de Mantenimiento.

2. Se observaron funcionalidades relacionadas con máquinas, mantenimiento, indicadores, órdenes de trabajo y repuestos.

3. La entrevista del Técnico aportó evidencia visual de una orden que llegó al estado COMPLETADA.

4. Las grabaciones documentadas permiten analizar la cobertura funcional observada, pero no establecer la satisfacción o aceptación del producto sin estudiar las respuestas de los participantes.

5. Las comprobaciones técnicas de persistencia, autorización, consumo de inventario y exportación de reportes deben complementarse mediante pruebas funcionales.

###### Limitaciones y trabajo pendiente

Se debe confirmar la fecha de las entrevistas, la correspondencia de cada grabación con Microsoft Stream y el segmento objetivo de los participantes. También falta analizar las respuestas habladas y las dificultades expresadas, sin atribuir opiniones no verificadas.

El informe establece un mínimo de nueve entrevistas distribuidas entre los tres segmentos objetivo. Actualmente se documentan tres sesiones, por lo que la cobertura exigida todavía no está completa.

#### 5.3.3. Evaluaciones según heurísticas

**Evaluación de experiencia de usuario: usabilidad, arquitectura de información y diseño inclusivo**

| Dato | Información |
|---|---|
| Carrera y curso | Ingeniería de Software — Desarrollo de Aplicaciones Open Source |
| Proyecto y producto | TechMakers — FixCore |
| Auditor | Equipo TechMakers |
| Aplicaciones revisadas | [Landing Page de FixCore](https://techmakers-upc.github.io/Landing-Page/) y [aplicación web FixCore](https://fixcore-frontend-eight.vercel.app/) |
| Método | Inspección del código de las interfaces y de sus rutas, componentes y respuestas previstas |
| Alcance de la evidencia | Hallazgos sustentados en el código de GitHub. La reproducción en el despliegue y las capturas de los problemas deben completarse con una comprobación visual. No se atribuyen estos hallazgos a los entrevistados E01, E02 o E03. |

**Objetivo y tareas evaluadas**

Se revisaron los recorridos necesarios para acceder al producto desde la Landing Page, iniciar sesión, consultar reportes, utilizar el lector QR y recuperarse de un error al consultar información. La inspección también consideró la navegación mediante teclado en el cuadro de diálogo del lector QR.

Las tareas analizadas fueron: (1) seleccionar «Crear cuenta» desde la Landing Page; (2) utilizar la opción «PDF» en los reportes de mantenimiento; (3) intentar escanear el código QR de una máquina; (4) recuperar un reporte después de una solicitud fallida; y (5) cerrar el lector QR y continuar mediante teclado. No se evaluaron pagos, contratación de planes, recuperación de contraseña ni aplicaciones móviles nativas.

**Escala de severidad (Anexo D del Final Project Statement)**

| Nivel | Significado |
|---|---|
| **1** | Problema superficial o poco frecuente; prioridad baja. |
| **2** | Problema menor que dificulta la tarea, pero puede superarse; prioridad baja de corrección. |
| **3** | Problema mayor que puede impedir completar la tarea o se presenta con frecuencia; prioridad alta. |
| **4** | Problema muy grave que impide continuar utilizando la herramienta; requiere corrección antes del lanzamiento. |

Las severidades siguientes son **estimaciones iniciales basadas en el código**. Su confirmación requiere reproducir cada caso en la versión desplegada y revisar su impacto real sobre los usuarios.

**Tabla resumen de problemas**

| N.º | Problema identificado | Severidad inicial | Heurística o principio relacionado | Evidencia técnica |
|---|---|:---:|---|---|
| **H01** | El enlace «Crear cuenta» de la Landing Page dirige al inicio de sesión, no a un formulario de registro público. | **3** | Arquitectura de información: facilidad para encontrar la función; usabilidad: correspondencia entre etiqueta y resultado. | Landing Page `index-es.html` y rutas Angular `app.routes.ts`. |
| **H02** | La acción «PDF» del módulo de reportes abre el cuadro de impresión del navegador en lugar de iniciar una descarga directa. | **2** | Usabilidad: consistencia y estándares; visibilidad del resultado de la acción. | `maintenance-report.html` y método `print()` de `maintenance-report.ts`. |
| **H03** | El lector QR depende de `BarcodeDetector`; cuando esa API no existe, el componente presenta el estado «no compatible» sin ofrecer un segundo mecanismo de escaneo con cámara. | **2** | Diseño inclusivo: experiencias comparables; usabilidad: flexibilidad de uso. | Componente `qr-scanner.ts` y su plantilla HTML. |
| **H04** | Un fallo al cargar los datos de un reporte muestra un mensaje de error sin una acción visible «Reintentar» en esa pantalla. | **2** | Usabilidad: recuperación ante errores y control del usuario. | `maintenance-report.html` y control de errores de `maintenance-report.ts`. |
| **H05** | El lector QR se implementa como un cuadro de diálogo personalizado sin gestión explícita de retorno del foco al cerrarlo ni un mecanismo de contención de foco dentro del diálogo. | **2** | Diseño inclusivo: navegación por teclado y manejo del foco. | `qr-scanner.html` y `qr-scanner.ts`. |

##### Problema H01. La opción «Crear cuenta» lleva al inicio de sesión

**Severidad inicial:** 3. **Principios:** arquitectura de información — *findability*; usabilidad — correspondencia entre las opciones y sus resultados.

**Descripción.** En la Landing Page, las opciones «Crear cuenta» y «Iniciar sesión» apuntan a la misma dirección `/start`. En las rutas de Angular, `/start` redirige a `/login`. Por lo tanto, las dos opciones conducen al formulario de acceso y no existe un recorrido de registro público diferenciado. Esto puede impedir que un visitante que espera registrarse complete la tarea indicada por el botón.

**Evidencia técnica:** [Landing Page, `index-es.html`](https://github.com/TechMakers-upc/Landing-Page/blob/main/index-es.html) y [rutas de Angular, `app.routes.ts`](https://github.com/TechMakers-upc/Frontend/blob/main/src/app/app.routes.ts).

**Captura de pantalla:** incorporar una captura de «Crear cuenta» en la Landing Page y otra de la pantalla de inicio de sesión a la que dirige. La imagen debe corresponder al despliegue revisado.

**Recomendación.** Si la creación de cuentas depende de un responsable autorizado, cambiar «Crear cuenta» por una acción coherente, como «Solicitar acceso», y explicar el proceso. Si se habilita el registro público en el futuro, crear un recorrido específico y ajustar el enlace.

##### Problema H02. La acción «PDF» requiere utilizar la función de impresión

**Severidad inicial:** 2. **Principios:** usabilidad — consistencia y estándares; visibilidad del resultado.

**Descripción.** El botón identificado como «PDF» ejecuta `window.print()`. Esto abre el diálogo de impresión del navegador, donde el usuario debe elegir una opción como «Guardar como PDF». El texto del botón puede sugerir que el archivo se descargará directamente, por lo que el comportamiento puede generar dudas sobre el siguiente paso.

**Evidencia técnica:** [plantilla de reportes](https://github.com/TechMakers-upc/Frontend/blob/main/src/app/analytics/presentation/views/maintenance-report/maintenance-report.html) y [función `print()`](https://github.com/TechMakers-upc/Frontend/blob/main/src/app/analytics/presentation/views/maintenance-report/maintenance-report.ts).

**Evidencia visual:**

![H02 - evidencia real de FixCore](assets/images/heuristicas/reportepdf.png)

**Figura H02.** El botón de exportación PDF abre el cuadro de impresión del navegador y requiere seleccionar «Guardar como PDF».

Captura real del frontend de FixCore en el módulo de reportes.

**Recomendación.** Si la función seguirá usando el navegador, cambiar el texto a «Imprimir / guardar PDF» y añadir una indicación breve. Otra opción es implementar una descarga directa de PDF y mantener «Descargar PDF» como etiqueta.

##### Problema H03. El lector QR no dispone de un segundo mecanismo de escaneo

**Severidad inicial:** 2. **Principios:** diseño inclusivo — experiencias comparables; usabilidad — flexibilidad.

**Descripción.** Antes de iniciar el escaneo, el componente comprueba la disponibilidad de `BarcodeDetector` y `getUserMedia`. Si alguna de estas capacidades falta, muestra un estado de incompatibilidad y no intenta otra biblioteca o procedimiento de escaneo por cámara. El formulario de reporte de fallas permite buscar la máquina manualmente, por lo que la tarea principal tiene una alternativa, pero el escaneo QR deja de estar disponible en esos entornos.

**Evidencia técnica:** [lógica del lector QR](https://github.com/TechMakers-upc/Frontend/blob/main/src/app/shared/presentation/components/qr-scanner/qr-scanner.ts), [plantilla del lector](https://github.com/TechMakers-upc/Frontend/blob/main/src/app/shared/presentation/components/qr-scanner/qr-scanner.html) y [búsqueda manual de máquinas](https://github.com/TechMakers-upc/Frontend/blob/main/src/app/service-execution/presentation/views/failure-report/failure-report.html).

**Evidencia visual:**

![H03 - evidencia real de FixCore](assets/images/heuristicas/QR.png)

**Figura H03.** El lector QR informa que el navegador no puede leer códigos QR desde esta pantalla.

Captura real del lector QR en el formulario de reporte de fallas. La compatibilidad depende del navegador.

**Recomendación.** Incorporar una alternativa compatible para leer códigos QR o mostrar, dentro del mismo diálogo, un acceso visible a la búsqueda manual de máquinas. Probar el flujo en los navegadores incluidos en el alcance del producto.

##### Problema H04. El reporte no presenta un botón directo para reintentar la carga

**Severidad inicial:** 2. **Principios:** usabilidad — reconocimiento y recuperación de errores; control del usuario.

**Descripción.** Cuando falla una solicitud del reporte, la interfaz muestra un mensaje general de carga fallida. La plantilla no ofrece una acción «Reintentar» junto al mensaje. Aunque cambiar un filtro puede solicitar los datos nuevamente, el usuario no dispone de una acción directa para repetir la misma consulta, con la misma planta y fechas.

**Evidencia técnica:** [vista de reportes](https://github.com/TechMakers-upc/Frontend/blob/main/src/app/analytics/presentation/views/maintenance-report/maintenance-report.html) y [tratamiento de fallos de las solicitudes](https://github.com/TechMakers-upc/Frontend/blob/main/src/app/analytics/presentation/views/maintenance-report/maintenance-report.ts).

**Evidencia visual:**

![H04 - evidencia real de FixCore](assets/images/heuristicas/fallonetwork.png)

**Figura H04.** El reporte presenta un error al cargar indicadores sin un botón visible «Reintentar».

Captura tomada con la red configurada como Offline en DevTools; se observan solicitudes fallidas.

**Recomendación.** Añadir un botón «Reintentar» que repita la consulta de la planta y el periodo seleccionados. Mantener los filtros del usuario e indicar el estado de carga.

##### Problema H05. Falta verificar el control del foco en el lector QR

**Severidad inicial:** 2. **Principios:** diseño inclusivo — navegación con teclado y foco.

**Descripción.** El lector QR utiliza un contenedor con `role="dialog"` y `aria-modal="true"`. El código enfoca el botón «Cerrar» cuando se abre; sin embargo, no se observa una función que devuelva el foco al botón que abrió el lector al cerrarlo ni un mecanismo que limite el recorrido del teclado al diálogo. Esto representa un riesgo para quienes navegan sin ratón y requiere una prueba manual con las teclas Tab, Shift+Tab y Escape.

**Evidencia técnica:** [plantilla del diálogo QR](https://github.com/TechMakers-upc/Frontend/blob/main/src/app/shared/presentation/components/qr-scanner/qr-scanner.html) y [lógica de apertura/cierre](https://github.com/TechMakers-upc/Frontend/blob/main/src/app/shared/presentation/components/qr-scanner/qr-scanner.ts).

**Captura de pantalla:** incorporar la pantalla del lector abierto con el indicador de foco visible; documentar adicionalmente el resultado de la prueba por teclado. Una imagen por sí sola no prueba el funcionamiento del foco.

**Recomendación.** Utilizar un cuadro de diálogo con gestión de foco o implementar el retorno del foco al botón de apertura y la contención del teclado mientras el lector está activo. Verificar el comportamiento con teclado y lector de pantalla.

**Resultados y límites de la evaluación**

La inspección del código permitió identificar **cinco puntos de mejora** en la relación entre etiquetas y rutas, exportación de reportes, compatibilidad del lector QR, recuperación de errores y navegación con teclado. Estos hallazgos son técnicos y no representan opiniones expresadas por los participantes de las entrevistas de validación. Los hallazgos H02, H03 y H04 cuentan con capturas reales incorporadas en esta sección; H01 y H05 aún requieren evidencia complementaria y comprobación del comportamiento. Las severidades deben ajustarse si las pruebas posteriores lo justifican.

---

### 5.4. Video About-the-Product

El equipo TechMakers incorporó un video **About-the-Product** para presentar FixCore como una aplicación de gestión del mantenimiento industrial. Esta evidencia complementa la Landing Page y permite al visitante acceder a una presentación audiovisual del producto. No debe confundirse con el video About-the-Team ni con las grabaciones de validación de la sección 5.3.

**Enlaces de la evidencia audiovisual**

| Medio | Evidencia y comprobación |
|---|---|
| Landing Page publicada | [Ver la sección «Descubre cómo funciona FixCore»](https://techmakers-upc.github.io/Landing-Page/#product-video) |
| YouTube | [Ver About-the-Product](https://www.youtube.com/watch?v=5l8ZtW_ztyQ) |
| Microsoft Stream | [Enlace facilitado por el equipo](https://upcedupe-my.sharepoint.com/:v:/g/personal/u202324461_upc_edu_pe/IQD3Y-222unpSqLHrugg2zeNAXK9ADnGeW4TyY1WH0SVX4I?nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJTdHJlYW1XZWJBcHAiLCJyZWZlcnJhbFZpZXciOiJTaGFyZURpYWxvZy1MaW5rIiwicmVmZXJyYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6InZpZXcifX0%3D&e=vIHqJF) |
| Implementación en español | [Código `index-es.html`, sección `product-video`](https://github.com/TechMakers-upc/Landing-Page/blob/main/index-es.html) |
| Implementación en inglés | [Código `index.html`, sección `product-video`](https://github.com/TechMakers-upc/Landing-Page/blob/main/index.html) |

**Integración comprobable en el repositorio.** Los dos archivos HTML de la Landing Page contienen la sección `id="product-video"` y un reproductor `iframe` con origen `https://www.youtube-nocookie.com/embed/5l8ZtW_ztyQ`. Ambos incluyen un enlace alternativo que conduce al video en YouTube. Así queda sustentada la implementación de la integración en el código publicado.

**Propósito y alcance.** El video está ubicado en la presentación pública del producto, cerca de la explicación de FixCore. Su objetivo es complementar las descripciones escritas mediante un recurso audiovisual accesible desde la Landing Page. La presencia del reproductor en el HTML no demuestra por sí sola que el video se pueda reproducir en todos los navegadores o cuentas.

**Comprobaciones finales para entrega:**

- [ ] Abrir la Landing Page pública en una ventana sin sesión de la universidad y reproducir el video completo.
- [ ] Confirmar que el enlace de YouTube funciona y registrar la duración exacta desde el reproductor.
- [ ] Verificar que el enlace de Microsoft Stream permite acceso al evaluador o conservar YouTube como alternativa pública.
- [ ] Comprobar que el iframe funciona en escritorio y móvil; si falla, registrar el error sin marcar la reproducción como validada.

**Estado:** el video está integrado en la Landing Page. Falta comprobar su reproducción pública, los permisos de acceso y su duración.
