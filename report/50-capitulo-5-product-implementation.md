# Capítulo V: Product Implementation, Validation & Deployment

## 5.1. Software Configuration Management

En este capítulo se documenta el proceso de implementación, integración, pruebas y despliegue de FixCore, producto desarrollado por la startup TechMakers. Se presentan las herramientas utilizadas, la administración del código fuente, las convenciones de desarrollo y las evidencias correspondientes a los tres primeros sprints.

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

FixCore utiliza servicios independientes para sus principales componentes.

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

La matriz representa la distribución de responsabilidades planificada. Las contribuciones de código deben contrastarse con el historial de GitHub.

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

Los estados reflejan el tablero documentado del Sprint 2. Las tareas ubicadas en `To Review` representan trabajo pendiente de aceptación formal, por lo que no deben presentarse como tareas terminadas.

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

Los integrantes Sunio Danilo Landa Sánchez y Pierre Alessandro Mendoza Boluarte permanecen registrados como miembros del equipo. No obstante, no se identificaron contribuciones de implementación suyas durante el período de Sprint 3 revisado.

#### 5.2.3.1. Sprint Planning 3

El objetivo del Sprint 3 fue integrar Angular con servicios REST que permitieran administrar información de mantenimiento industrial de manera persistente y segura.

Se priorizaron los módulos de autenticación, plantas, máquinas, mantenimiento preventivo, fallas, órdenes de trabajo, inventario e indicadores.

| Campo | Información |
|---|---|
| Sprint # | Sprint 3 |
| Date | 2026-10-6 |
| Time | 7:00 PM – 8:00 PM|
| Location | Discord|
| Prepared By | Alvar Lucas Córdova |
| Implementation Contributors | Alvar Lucas Córdova, Giuseppe Adrián Villanueva Rodríguez y Diego Rances Rojas Huaranga |
| Sprint 2 Review Summary | Se desarrollaron las interfaces principales de Angular utilizando una API simulada mediante JSON Server. |
| Sprint 2 Retrospective Summary | Se identificó la necesidad de incorporar persistencia real, autenticación, autorización y contratos REST estables. |
| Sprint Goal | Integrar la Web Application con servicios propios que permitan realizar operaciones persistentes y controladas según el rol del usuario. |
| Sprint Velocity | Pendiente de determinar mediante aceptación de User Stories completas. |
| Sum of Story Points | Pendiente de conciliar con el Product Backlog. |
| Work Items | T037–T055 |
| Estimated Workload | 30 min |

**Sprint Goal**

Our focus is on enabling operations managers, plant managers and maintenance technicians to perform the main FixCore activities through an integrated web application connected to persistent services.

We believe it delivers reliable maintenance management, controlled access to operational data and improved tracking of plants, machines, work orders and spare parts.

This will be confirmed when authenticated users can interact with the deployed Angular application, its services persist information in PostgreSQL and the principal business operations can be verified through the REST API.

Las estimaciones de horas representan el esfuerzo previsto para las tareas técnicas. No constituyen horas efectivamente registradas ni Story Points aceptados.

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
| Sunio Danilo Landa Sánchez | DanLandio | — | — | — | — | — |
| Pierre Alessandro Mendoza Boluarte | pierreale2302 | — | — | — | — | — |

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
| US31–US35 | Gestión de inventario | T048 | Integrate Inventory Management | Integrar repuestos, existencias y movimientos de inventario. | 8 | Giuseppe | Done |
| US41–US45 | Analítica y notificaciones | T049 | Integrate Analytics and Notifications | Integrar indicadores, reportes y alertas. | 8 | Giuseppe | Done |
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

Las diecinueve actividades se encuentran registradas en `Done` en Trello. Este estado documenta su cierre en el tablero, pero no sustituye las evidencias técnicas necesarias para comprobar cada flujo funcional.

Las horas corresponden a estimaciones de trabajo y no a registros efectivos de tiempo.

#### 5.2.3.4. Development Evidence for Sprint Review

Durante el Sprint 3 se implementaron funcionalidades y correcciones en los repositorios Backend, Frontend y Landing-Page.

La siguiente tabla presenta commits representativos de los cambios realizados.

| Repository | Branch integrada | Commit ID | Commit Message | Author | Committed on |
|---|---|---|---|---|---|
| Backend | main | `f6764451` | Initialize Spring Boot backend | AlvarLC | 2026-10-20 |
| Backend | main | `07f4d101` | Configure PostgreSQL datasource | AlvarLC | 2026-10-20 |
| Backend | main | `1d4f117f` | Enable Flyway auto-configuration | AlvarLC | 2026-10-20 |
| Backend | main | `ac134bec` | Enforce clean architecture dependency rules | AlvarLC | 2026-10-21 |
| Backend | main | `462c8b8d` | Allow plant managers to update their plant | Giuseppe152004 | 2026-11-03 |
| Backend | main | `5a06831b` | Set version 1.0.1 | Giuseppe152004 | 2026-11-03 |
| Backend | main | `4f9d7737` | Lock work orders during mutations | diego27-16 | 2026-11-03 |
| Backend | main | `b8bb1411` | Prevent integer overflow in stock | diego27-16 | 2026-11-03 |
| Frontend | develop/main | `2ec408e6` | Integrate plant deletion with Spring Boot | AlvarLC | 2026-10-30 |
| Frontend | develop/main | `4908ae10` | Integrate backend mark-as-read endpoint | AlvarLC | 2026-11-03 |
| Frontend | develop/main | `bc022973` | Verify pipeline and resolve session injection conflict | AlvarLC | 2026-11-03 |
| Frontend | develop/main | `3d14560d` | Map numeric user and plant IDs | Giuseppe152004 | 2026-11-03 |
| Frontend | develop/main | `f6a159c2` | Skip analytics requests for technicians | Giuseppe152004 | 2026-11-03 |
| Frontend | develop/main | `435662ca` | Use Spring Boot authentication | diego27-16 | 2026-11-02 |
| Frontend | develop/main | `f712bc2e` | Start only assigned work orders | diego27-16 | 2026-11-02 |
| Frontend | develop/main | `d27aa7f4` | Map real spare part resources | diego27-16 | 2026-11-02 |
| Landing-Page | main | `1cb02e44` | Improve responsive breakpoints and mobile layout | Giuseppe152004 | 2026-10-25 |

Estos commits representan una selección de los cambios implementados, no la totalidad de las contribuciones.

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

Los registros muestran la evolución de FixCore desde una aplicación con interfaces demostrativas hacia una solución integrada con servicios de negocio, persistencia y mecanismos de seguridad.

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

El flujo completo de inicio, ejecución, consumo de repuestos y cierre requiere una evidencia integral adicional.

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

Se verificó la disponibilidad de las interfaces y la opción de exportación CSV. La validación integral del contenido de los archivos PDF permanece pendiente.

![dashboard indicadores](<assets/images/08a-dashboard-indicadores.png>)

![Reportes](<assets/images/08b-reportes.png>)

**Resultados de verificación**

| Funcionalidad | Resultado documentado |
|---|---|
| Autenticación de los tres perfiles | Verificada en pruebas realizadas. |
| Acceso a vistas según perfil | Verificado en operaciones seleccionadas. |
| Consulta de plantas y máquinas | Verificada. |
| Creación y eliminación de registros de prueba | Verificada en operaciones seleccionadas. |
| Creación y asignación de órdenes | Verificada. |
| Visualización de órdenes asignadas | Verificada. |
| Ejecución y cierre completo de órdenes | Pendiente de evidencia integral. |
| Consumo de repuestos durante una orden | Pendiente de evidencia integral. |
| Exportación CSV | Verificada. |
| Validación del contenido PDF | Pendiente. |
| Pruebas automatizadas del backend | Ejecutadas durante la integración. |
| Integración continua del frontend | Se registraron ejecuciones satisfactorias en GitHub Actions. |

Los resultados describen las comprobaciones realizadas y no constituyen una certificación de todos los flujos funcionales.

**Video de ejecución del Sprint 3**

[EVIDENCIA PENDIENTE: URL del video de demostración del Sprint 3]

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
| Authentication | POST | `/authentication/sign-up` | Registrar usuario. |
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
| Analytics | GET | `/analytics/summary` | Consultar indicadores. |
| Notifications | GET | `/alerts` | Consultar alertas. |

La relación presentada corresponde a los endpoints documentados para el proyecto. Antes de la entrega debe contrastarse con el contrato OpenAPI de la versión efectivamente desplegada.

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

Las capturas deben mostrar solicitudes y respuestas con datos de prueba, sin divulgar contraseñas, JWT ni otros secretos.

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

La captura original `deploy4.jpeg` no debe incorporarse sin censurar, porque puede revelar valores sensibles. Los secretos expuestos en una captura compartida deben reemplazarse.

**4. Inicialización de la base de datos**

Se utilizó Flyway para ejecutar y validar las migraciones del esquema PostgreSQL.

El registro técnico documenta la validación de once migraciones. La captura de los logs correspondiente a esta ejecución todavía debe incorporarse para sustentar visualmente el resultado.

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

Se mantiene pendiente incorporar evidencia completa de algunos flujos de extremo a extremo.

---

### 5.3. Validation Interviews

Durante el Sprint 3 se registraron **tres grabaciones de sesiones de interacción** con la Landing Page y la aplicación web de FixCore. Esta sección documenta los recorridos visibles en los archivos MP4 proporcionados por el equipo. Las capturas y los tiempos señalados son evidencias audiovisuales; **no se interpretan como declaraciones u opiniones del entrevistado**, porque el audio todavía no cuenta con una transcripción verificable.

El propósito de la validación es identificar si personas representativas de los segmentos objetivo comprenden la propuesta de valor y pueden realizar actividades en la aplicación. Las demostraciones existentes permiten documentar pantallas y operaciones, pero aún no permiten medir autónomamente el éxito de tareas, la satisfacción de los participantes ni sus sugerencias.

#### 5.3.1. Diseño de Entrevistas

**Objetivo:** evaluar la comprensión del Landing Page, la navegación, la ejecución de tareas relevantes y la claridad de mensajes en la Web Application. Se consideran usabilidad, arquitectura de información y diseño inclusivo.

Los **segmentos objetivo comerciales** identificados en el Capítulo II son (1) pymes de manufactura y producción, (2) firmas consultoras y contratistas de ingeniería industrial, y (3) técnicos y operarios de mantenimiento industrial. Los **roles de prueba** en FixCore (Gerente de Operaciones, Jefe de Planta y Técnico) son perfiles de acceso al software; no se debe suponer que por probar un rol se pertenece a un segmento comercial determinado.

| Grabación | Rol utilizado en FixCore | Escenarios mostrados en la grabación | Objetivo de la observación |
|---|---|---|---|
| E01 | Jefe de Planta | Landing Page, máquinas, fallas, órdenes e inventario | Revisar el acceso y la organización de operaciones de mantenimiento |
| E02 | Gerente de Operaciones | Landing Page, plantas, tablero, órdenes, planificación y reportes | Revisar la visualización de información para supervisión |
| E03 | Técnico | Landing Page, órdenes asignadas, repuestos y cierre de orden | Revisar la secuencia de atención y registro del trabajo |

**Guía de preguntas de validación:** ¿qué comprende de FixCore al visitar la Landing Page?, ¿qué información encuentra primero?, ¿puede ubicar las opciones necesarias para su rol?, ¿entiende los campos y estados?, ¿qué tarea le resulta más fácil o difícil?, ¿qué problema o mejora identifica?, ¿utilizaría la herramienta en su contexto laboral y por qué? Estas preguntas constituyen la guía de análisis; **no se afirma que todas hayan sido formuladas en las grabaciones**.

Para cada participante, el registro completo debe contrastar los resultados observados con nombre y apellidos, edad, distrito, ocupación, segmento objetivo, tiempo de tarea y observaciones expresadas. Los datos no visibles ni verificados se mantienen expresamente sin confirmar. Se utilizaron cuentas de prueba, que no deben confundirse con las identidades de los participantes.

#### 5.3.2. Registro de Entrevistas

Se dispone de **tres archivos MP4**, con una duración total de aproximadamente **34 minutos y 2 segundos**. Se registran únicamente esas tres sesiones; se han eliminado las diez filas vacías que no correspondían a entrevistas efectivamente aportadas.

| ID | Participante identificado en Teams | Rol de prueba | Duración del MP4 | Fecha de la entrevista | Estado de registro |
|---|---|---|---|---|---|
| E01 | «George» (apellido no verificado) | Jefe de Planta | 11:59.70 | Por confirmar | Grabación disponible; respuestas orales pendientes de verificar |
| E02 | «Alberca Saavedra, Víctor Manuel» (nombre visible en Teams) | Gerente de Operaciones | 13:36.63 | Por confirmar | Grabación disponible; respuestas orales pendientes de verificar |
| E03 | «cabanillas anderson» (nombre visible en Teams) | Técnico | 08:25.97 | Por confirmar | Grabación disponible; respuestas orales pendientes de verificar |

**Enlaces de Microsoft Stream proporcionados por el equipo** (en el orden en que fueron compartidos):

- [Enlace de validación 1 — Microsoft Stream](https://upcedupe-my.sharepoint.com/:v:/g/personal/u202324461_upc_edu_pe/IQAP5e8dn0yhQY3L36LRTBe_ATyEYBqREHub17NjnAOoeBs?nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJTdHJlYW1XZWJBcHAiLCJyZWZlcnJhbFZpZXciOiJTaGFyZURpYWxvZy1MaW5rIiwicmVmZXJyYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6InZpZXcifX0%3D&e=uwNoPi)
- [Enlace de validación 2 — Microsoft Stream](https://upcedupe-my.sharepoint.com/:v:/g/personal/u202324461_upc_edu_pe/IQCgWLgTjns1T6HIqOm0lbuZAWSdUbm4AuT0lfSPbGicQQ8?nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJTdHJlYW1XZWJBcHAiLCJyZWZlcnJhbFZpZXciOiJTaGFyZURpYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6InZpZXcifX0%3D&e=OhDqkm)
- [Enlace de validación 3 — Microsoft Stream](https://upcedupe-my.sharepoint.com/:v:/g/personal/u202324461_upc_edu_pe/IQALFPlFxumyQrXU888fIzevAWpVsdnZGXzEaKdIgfr2ZPo?nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJTdHJlYW1XZWJBcHAiLCJyZWZlcnJhbFZpZXciOiJTaGFyZURpYWxvZy1MaW5rIiwicmVmZXJyYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6InZpZXcifX0%3D&e=w0a8ne)

**Control de correspondencia:** los tres enlaces no se han podido abrir para comparar sus títulos y duraciones. Por ello, **aún no se asigna de manera definitiva cada enlace a E01, E02 o E03**; antes de la entrega se deberá confirmar esa correspondencia y los permisos de visualización en Stream. Los nombres de los MP4 se muestran en cada ficha.

**E01 — Interacción con el perfil de Jefe de Planta («George»)**

- Archivo aportado: `WhatsApp Video 2026-11-10 at 02.13.01.mp4`.
- Identificación: en la videollamada aparece el nombre «George». **Edad, distrito, apellido, cargo laboral real y segmento objetivo: sin verificar**.
- **00:20:** Landing Page y presentación de FixCore; **00:50–02:20:** secciones de características y planes.
- **02:50–03:50:** vista de Jefe de Planta y listado de máquinas con filtros.
- **04:20–05:50:** formulario de registro y ficha de una máquina.
- **06:20–08:50:** reporte de falla y creación/detalle de una Orden de Trabajo.
- **09:20–11:50:** inventario, registro de repuesto y consulta de movimientos.
- **Resumen sustentado:** se observan pantallas de registro, búsqueda, creación y consulta correspondientes a máquinas, fallas, órdenes e inventario. No es posible deducir a partir de la pantalla qué tan fácil le resultaron estas tareas al entrevistado ni si las realizó sin ayuda.

![E01: captura real de la grabación de validación del Jefe de Planta](assets/images/validation-sprint3/av2-validacion-e01-jefe-planta.jpg)

*Figura E01. Captura de la sesión con el formulario de registro de máquina y participantes de la videollamada; archivo original E01.*

**E02 — Interacción con el perfil de Gerente de Operaciones (Víctor Manuel Alberca Saavedra)**

- Archivo aportado: `WhatsApp Video 2026-11-10 at 01.26.11.mp4`.
- Identificación: nombre visible en Teams. **Edad, distrito, cargo laboral real y segmento objetivo: sin verificar**.
- **00:20–02:20:** Landing Page y pantalla de inicio de sesión.
- **02:50–05:50:** dashboard, indicadores, plantas y detalle de planta.
- **06:20–08:20:** consulta/creación de órdenes y mantenimiento preventivo.
- **08:50–10:50:** desempeño de técnicos, indicadores y vista previa de reportes.
- **11:50–13:20:** regreso al resumen y consulta de órdenes.
- **Resumen sustentado:** se observan módulos de supervisión de plantas, seguimiento de órdenes y reportes. La vista previa del reporte no permite concluir que el PDF fue descargado ni que sus métricas fueron verificadas.

![E02: captura real de la grabación de validación de Gerencia](assets/images/validation-sprint3/av2-validacion-e02-gerente-operaciones.jpg)

*Figura E02. Captura del resumen de plantas e indicadores del perfil de Gerente de Operaciones; archivo original E02.*

**E03 — Interacción con el perfil de Técnico («cabanillas anderson»)**

- Archivo aportado: `entrevista de validación (técnico).mp4`.
- Identificación: nombre visible en Teams. **Edad, distrito, profesión real y segmento objetivo: sin verificar**.
- **00:20–02:20:** Landing Page, ingreso a la aplicación y panel de Técnico.
- **02:50–03:50:** consulta de órdenes asignadas y máquinas.
- **04:20–05:20:** consulta de una orden y visualización del cambio de pendiente a en progreso.
- **04:50–06:50:** consulta de repuestos y registro de un repuesto de prueba asociado a la orden.
- **07:20–08:20:** formulario de cierre y visualización final de una orden con estado `COMPLETADA`.
- **Resumen sustentado:** se muestra una secuencia de ejecución de una orden que culmina con una orden completada en la interfaz. No se demuestra solo con el video el descuento real de inventario, los registros persistidos en PostgreSQL ni el bloqueo de acceso a órdenes de otros técnicos.

![E03: captura de la sesión del Técnico](assets/images/validation-sprint3/av2-validacion-e03-tecnico.jpg)

*Figura E03-A. Panel y órdenes del rol Técnico, con la videollamada visible.*

![E03: orden completada al final de la grabación](assets/images/validation-sprint3/av2-validacion-e03-orden-completada.jpg)

*Figura E03-B. Una Orden de Trabajo aparece como `COMPLETADA` al final de la grabación.*

**Datos y resultados aún no comprobados:** no se dispone de edad, distrito ni ocupación confirmados, de la fecha exacta de cada sesión, de transcripciones de las respuestas orales ni de evidencia para afirmar citas textuales, niveles de satisfacción, dificultad percibida o aprobación de funcionalidades por los participantes. Los videos sí permiten registrar recorridos y momentos de interacción visual.

**Alcance respecto a la rúbrica:** el Final Project Statement, sección *Validation Interviews*, solicita **de 3 a 5 entrevistas por cada uno de los tres segmentos objetivo** (mínimo 9 entrevistas). El equipo ha proporcionado **solo tres grabaciones en total**; por tanto, esta documentación representa la totalidad de las evidencias disponibles, pero **no satisface el mínimo de participantes de la rúbrica** y tampoco acredita por sí sola tres segmentos distintos. No se incorporan entrevistas inexistentes ni se declaran hallazgos de participantes que no puedan corroborarse.

#### 5.3.3. Evaluaciones según heurísticas

La evaluación se organiza según el enfoque exigido por el Anexo D del Final Project Statement: **usabilidad, arquitectura de información y diseño inclusivo**. Se distingue entre elementos visibles en las grabaciones y problemas realmente expresados u observados en el comportamiento del usuario. Sin transcripción del audio ni registro sistemático de errores, **no es válido inventar infracciones heurísticas, severidades o porcentajes de éxito**.

| ID | Área / heurística o principio | Evidencia visible y minuto aproximado | Valoración sustentada | Severidad | Acción de verificación o mejora |
|---|---|---|---|---|---|
| H01 | Usabilidad: visibilidad del estado | E03, 04:20–08:20: estados pendiente, en progreso y completada | Se observan indicadores de estado. No se verifica si fueron comprendidos sin ayuda | Sin calificar | Preguntar qué significa cada estado sin ofrecer pistas |
| H02 | Usabilidad: prevención de errores | E03, 07:20: formulario de cierre y validación de descripción | Se observa validación del formulario. No se puede evaluar la claridad percibida del mensaje | Sin calificar | Comprobar mensajes ante campos vacíos y corrección autónoma |
| H03 | Arquitectura de información: organización y búsqueda | E01, 03:20–03:50; E02, 06:20–07:50: listas y filtros | Existen opciones de filtrado y consulta. No se ha medido facilidad para encontrarlas | Sin calificar | Solicitar búsquedas sin guía y anotar desvíos o errores |
| H04 | Usabilidad: información y retroalimentación | E02, 09:50–10:50: vista previa del reporte | Se muestra una previsualización, pero no se acredita una exportación PDF completa; es una limitación de evidencia, no un defecto UX demostrado | Sin calificar | Ejecutar exportación y revisar archivo, mensajes de error y comprensión de datos |
| H05 | Diseño inclusivo: idioma, accesibilidad y adaptación | E01/E02/E03: selector de idioma visible en la aplicación | La presencia del selector no demuestra navegación por teclado, compatibilidad con lector de pantalla ni adecuación en móvil | Sin calificar | Verificar contraste, foco, etiquetas ARIA, lectura de mensajes y responsive |

**Formato de registro para hallazgos reales:** para cada dificultad identificada posteriormente, registrar la pantalla y tarea, nombre del principio vulnerado, descripción del problema, evidencia audiovisual con tiempo, escala de severidad 0–4 del Anexo D y la mejora propuesta. A la fecha de esta revisión no se atribuyen afirmaciones orales a los participantes ni se presentan problemas hipotéticos como si estuvieran confirmados.

**Conclusión de la validación disponible:** las tres grabaciones muestran recorridos funcionales de FixCore desde roles diferentes, incluyendo un flujo de Orden de Trabajo hasta un estado completado. La conclusión es **descriptiva y limitada a lo observable**: no acredita satisfacción de usuarios, facilidad de aprendizaje, cumplimiento del número mínimo por segmento ni validación integral de permisos y persistencia. Se recomienda completar primero la verificación de identidad, el audio y los hallazgos antes de emitir recomendaciones basadas en opiniones de entrevistados.

---### 5.4. Video About-the-Product

El Video About-the-Product tiene como objetivo presentar FixCore, explicar el problema de mantenimiento industrial que aborda y demostrar sus principales funcionalidades.

La estructura propuesta comprende:

1. Presentación de FixCore y TechMakers.
2. Descripción del problema de mantenimiento industrial.
3. Explicación de la propuesta de valor.
4. Demostración de la Landing Page.
5. Demostración de la Web Application.
6. Presentación de las funcionalidades según el perfil del usuario.
7. Ejemplo de un proceso de mantenimiento industrial.
8. Testimonio positivo auténtico de un participante de las entrevistas de validación.
9. Cierre y presentación de los beneficios del producto.

**Evidencia del video**

| Campo | Información |
|---|---|
| Producto | FixCore |
| Startup | TechMakers |
| Microsoft Stream | Pendiente de incorporar |
| YouTube | Pendiente de incorporar |
| Duración | Pendiente de registrar |
| Estado | Pendiente de evidencia de publicación |

[EVIDENCIA PENDIENTE: captura del Video About-the-Product]

La versión final del video deberá incluir una demostración real del producto y al menos un testimonio auténtico obtenido durante las entrevistas de validación.

El material deberá mantener coherencia con las funcionalidades implementadas y con los resultados documentados en los tres sprints.
