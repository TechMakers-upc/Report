<div align="center">

<img src="Assets/Images/UPC_logo_transparente.png" alt="Logo de la Universidad" style="width:20%; height: auto;">

## Universidad Peruana de Ciencias Aplicadas

**Facultad:** Ingeniería

**Carrera:** Ingeniería de Software 

**Ciclo:** 2026-20

**Curso:** 1ASI0729 - Desarrollo de Aplicaciones Open Source

**NRC:** 16692

**Profesor:** Ángel Augusto Velásquez Núñez

**"Informe de Trabajo Final"**

**Startup:** TechMakers

**Producto:** 

**Relación de integrantes:**

| Integrante                              | Código      |
|-----------------------------------------|-------------|
|Alvar Lucas Córdova                      |u202324461   |
|Sunio Danilo Landa Sánchez               |u202423973   |
|Giuseppe Adrián Villanueva Rodríguez     |u20221c554   |
|Diego Rances Rojas Huaranga              |u20241E096   |
|Pierre Alessandro Mendoza Boluarte       |u202320973   |

**Setiembre, 2026**
</div>

# Registro de Versiones del Informe 

|Versión|Fecha|Autor|Fecha de modificación|
|:------|:----|:----|:--------------------|
|||||

# Project Report Collaboration Insights 

# Contenido 

## Tabla de contenidos 
- [Registro de Versiones del Informe](#registro-de-versiones-del-informe)
- [Project Report Collaboration Insights](#project-report-collaboration-insights)
- [Contenido](#contenido)
  - [Tabla de contenidos](#tabla-de-contenidos)
- [Student Outcome](#student-outcome)
- [Capítulo I: Introducción](#capítulo-i-introducción)
  - [1.1. Startup Profile](#11-startup-profile)
    - [1.1.1. Descripción de la Startup](#111-descripción-de-la-startup)
    - [1.1.2. Perfiles de integrantes del equipo](#112-perfiles-de-integrantes-del-equipo)
  - [1.2. Solution Profile](#12-solution-profile)
    - [1.2.1 Antecedentes y problemática](#121-antecedentes-y-problemática)
    - [1.2.2 Lean UX Process.](#122-lean-ux-process)
      - [1.2.2.1. Lean UX Problem Statements.](#1221-lean-ux-problem-statements)
      - [1.2.2.2. Lean UX Assumptions.](#1222-lean-ux-assumptions)
      - [1.2.2.3. Lean UX Hypothesis Statements.](#1223-lean-ux-hypothesis-statements)
      - [1.2.2.4. Lean UX Canvas.](#1224-lean-ux-canvas)
  - [1.3. Segmentos objetivo.](#13-segmentos-objetivo)
- [Capítulo II: Requirements Elicitation \& Analysis](#capítulo-ii-requirements-elicitation--analysis)
  - [2.1. Competidores.](#21-competidores)
    - [2.1.1. Análisis competitivo.](#211-análisis-competitivo)
    - [2.1.2. Estrategias y tácticas frente a competidores.](#212-estrategias-y-tácticas-frente-a-competidores)
  - [2.2. Entrevistas.](#22-entrevistas)
    - [2.2.1. Diseño de entrevistas.](#221-diseño-de-entrevistas)
    - [2.2.2. Registro de entrevistas.](#222-registro-de-entrevistas)
    - [2.2.3. Análisis de entrevistas.](#223-análisis-de-entrevistas)
  - [2.3. Needfinding.](#23-needfinding)
    - [2.3.1. User Personas.](#231-user-personas)
    - [2.3.2. User Task Matrix.](#232-user-task-matrix)
    - [2.3.3. User Journey Mapping.](#233-user-journey-mapping)
    - [2.3.4. Empathy Mapping.](#234-empathy-mapping)
  - [2.4. Big Picture EventStorming.](#24-big-picture-eventstorming)
  - [2.5. Ubiquitous Language.](#25-ubiquitous-language)
- [Capítulo III: Requirements Specification](#capítulo-iii-requirements-specification)
  - [3.1. User Stories.](#31-user-stories)
  - [3.2. Impact Mapping.](#32-impact-mapping)
  - [3.3. Product Backlog.](#33-product-backlog)
- [Capítulo IV: Product Design](#capítulo-iv-product-design)
  - [4.1. Style Guidelines.](#41-style-guidelines)
    - [4.1.1. General Style Guidelines.](#411-general-style-guidelines)
    - [4.1.2. Web Style Guidelines.](#412-web-style-guidelines)
  - [4.2. Information Architecture.](#42-information-architecture)
    - [4.2.1. Organization Systems.](#421-organization-systems)
    - [4.2.2. Labeling Systems.](#422-labeling-systems)
    - [4.2.3. SEO Tags and Meta Tags](#423-seo-tags-and-meta-tags)
    - [4.2.4. Searching Systems.](#424-searching-systems)
    - [4.2.5. Navigation Systems.](#425-navigation-systems)
  - [4.3. Landing Page UI Design.](#43-landing-page-ui-design)
    - [4.3.1. Landing Page Wireframe.](#431-landing-page-wireframe)
    - [4.3.2. Landing Page Mock-up.](#432-landing-page-mock-up)
  - [4.4. Web Applications UX/UI Design.](#44-web-applications-uxui-design)
    - [4.4.1. Web Applications Wireframes.](#441-web-applications-wireframes)
    - [4.4.2. Web Applications Wireflow Diagrams.](#442-web-applications-wireflow-diagrams)
    - [4.4.2. Web Applications Mock-ups.](#442-web-applications-mock-ups)
    - [4.4.3. Web Applications User Flow Diagrams.](#443-web-applications-user-flow-diagrams)
  - [4.5. Web Applications Prototyping.](#45-web-applications-prototyping)
  - [4.6. Domain-Driven Software Architecture.](#46-domain-driven-software-architecture)
    - [4.6.1. Design-Level EventStorming.](#461-design-level-eventstorming)
    - [4.6.2. Software Architecture Context Diagram.](#462-software-architecture-context-diagram)
    - [4.6.3. Software Architecture Container Diagrams.](#463-software-architecture-container-diagrams)
    - [4.6.4. Software Architecture Components Diagrams.](#464-software-architecture-components-diagrams)
  - [4.7. Software Object-Oriented Design.](#47-software-object-oriented-design)
    - [4.7.1. Class Diagrams.](#471-class-diagrams)
  - [4.8. Database Design.](#48-database-design)
    - [4.8.1. Database Diagrams.](#481-database-diagrams)
- [Capítulo V: Product Implementation, Validation \& Deployment](#capítulo-v-product-implementation-validation--deployment)
  - [5.1. Software Configuration Management.](#51-software-configuration-management)
    - [5.1.1. Software Development Environment Configuration.](#511-software-development-environment-configuration)
    - [5.1.2. Source Code Management.](#512-source-code-management)
    - [5.1.3. Source Code Style Guide \& Conventions.](#513-source-code-style-guide--conventions)
    - [5.1.4. Software Deployment Configuration.](#514-software-deployment-configuration)
  - [5.2. Landing Page, Services \& Applications Implementation.](#52-landing-page-services--applications-implementation)
    - [5.2.1. Sprint 1](#521-sprint-1)
      - [5.2.1.1. Sprint Planning 1.](#5211-sprint-planning-1)
      - [5.2.1.2. Aspect Leaders and Collaborators.](#5212-aspect-leaders-and-collaborators)
      - [5.2.1.3. Sprint Backlog 1.](#5213-sprint-backlog-1)
      - [5.2.1.4. Development Evidence for Sprint Review.](#5214-development-evidence-for-sprint-review)
      - [5.2.1.5. Execution Evidence for Sprint Review.](#5215-execution-evidence-for-sprint-review)
      - [5.2.1.6. Services Documentation Evidence for Sprint Review.](#5216-services-documentation-evidence-for-sprint-review)
      - [5.2.1.7. Software Deployment Evidence for Sprint Review.](#5217-software-deployment-evidence-for-sprint-review)
      - [5.2.1.8. Team Collaboration Insights during Sprint.](#5218-team-collaboration-insights-during-sprint)
- [Conclusiones](#conclusiones)
- [Bibliografía](#bibliografía)
- [Anexos](#anexos)



# Student Outcome 

<br>
<br>

<div align="center">
  <img src="Assets/Images/capitulo-1.png" 
  alt="Capitulo 1" />
</div>

<br>
<br>

## 1.1. Startup Profile

### 1.1.1. Descripción de la Startup

TechMakers es una startup desarrollada por un grupo de estudiantes de Ingeniería de Software que tienen como objetivo crear soluciones tecnológicas que puedan ayudar a mejorar la forma en que trabajan distintos negocios. La idea de este proyecto surge al tener en cuenta cómo se realizan actualmente algunas actividades de mantenimiento en empresas del sector industrial. En muchos casos el control de estas actividades todavía se realiza mediante cuadernos, pizarras o archivos de Excel.

Esta forma de trabajar puede dificultar el acceso y seguimiento de la información ya que cuando no se cuenta con un registro adecuado de los mantenimientos podría ocurrir que una actividad como el mantenimiento no sea realizada en la fecha que se debía hacer. Esto aumenta la posibilidad de que una máquina presente algún problema inesperado, generando interrupciones en la producción y gastos que podrían evitarse con una mejor planificación.

Es por esto que se creó **FixCore**, la propuesta consiste en reunir en una misma plataforma la información y las actividades relacionadas con el mantenimiento de los equipos industriales. Una de las características principales de Fixcore es la posibilidad de contar con un registro digital de cada activo. En este registro se puede almacenar información como la marca, el modelo y los manuales correspondientes, de modo que los técnicos puedan consultar la información cuando sea necesaria.

### Misión

La misión de TechMakers es ofrecer a empresas manufactureras y contratistas una herramienta que facilite la organización de sus actividades de mantenimiento. Mediante Fixcore se busca centralizar la información para mejorar la programación de los mantenimientos y llevar un mejor control de los repuestos contribuyendo así a reducir las interrupciones a causa de problemas en los equipos.

### Visión

La visión de TechMakers es conseguir que Fixcore se convierta progresivamente en una alternativa reconocida en el Perú para la gestión de mantenimientos industriales. El proyecto busca aprovechar las ventajas de las tecnologías para ofrecer una plataforma que pueda adaptarse al crecimiento de las empresas y que contribuya a digitalizar procesos que actualmente se realizan de forma manual.

### 1.1.2. Perfiles de integrantes del equipo


## 1.2. Solution Profile 

### 1.2.1 Antecedentes y problemática 

Para entender el contexto de Fixcore, analizamos la situación del sector manufacturero en el Perú el cual es un pilar fundamental para la economía que necesita optimización constante. Según datos del Instituto Nacional de Estadística e Informática (INEI), en el año 2023 el sector manufactura contribuyó con un 12,2 % al Producto Bruto Interno (PBI) nacional, sin embargo este sector experimentó una disminución del 6,6 % en su producción durante ese mismo año haciendo que las empresas industriales busquen mayor eficiencia y reducir sobrecostos operativos. Una de las principales vías para lograrlo es la modernización de la gestión de sus activos físicos. Investigaciones como la de la firma consultora McKinsey & Company demuestran que el pasar de un modelo de mantenimiento reactivo a enfoques preventivos y predictivos permite reducir los costos generales de mantenimiento entre un 18 % y un 25 %.También se podemos decir que la implementación de estas tecnologías logran disminuir el tiempo de inactividad no planificado hasta en un 50 %.
Aunque el impacto positivo de la digitalización es notoria apreciamos que los contratistas de servicios técnicos y los administradores de pymes industriales sufren graves fricciones en su operación diaria. El problema se centra en las dificultades para gestionar eficientemente las programaciones de mantenimiento y el inventario de repuestos necesarios. Esto pasa porque la gran mayoría sigue empleando métodos como cuadernos de cargo, pizarras o herramientas digitales como hojas de Excel, que no brindan soporte adecuado a un modelo de negocio que puede escalar. Al no contar con un sistema especializado las fechas de servicio preventivo caducan sin previo aviso, se sufre de falta de stock en piezas clave y los equipos fallan de repente. Entonces esta carencia de control provoca paradas de emergencia en las líneas de producción lo que eleva drásticamente los costos de reparación y afecta la rentabilidad de las empresas involucradas.


---
### Técnica de The 5 'W's y 2 'H's

| Pregunta | Formulación | Respuesta |
| :--- | :--- | :--- |
| **Who?** | ¿Quienes son los afectados? | Firmas contratistas de servicio técnico industrial y dueños o administradores de Pymes del sector manufacturero. |
| **What?** | ¿Cual es el problema? | Dificultades para planificar fechas de mantenimiento y controlar el inventario de repuestos debido al uso de registros manuales y sistemas desconectados. |
| **Where?** | ¿Dónde ocurre? | En plantas de producción, fábricas, talleres industriales, negocios con equipamiento industrial en el Perú. |
| **When?** | ¿Cuando se hace la evidencia? | Durante la operación diaria, especialmente cuando caduca la fecha de revisión de una máquina y puede llegar a ocurrir una falla imprevista o se requiere un repuesto urgente que no está en almacén a falta de stock que no se previó anteriormente. |
| **Why?** | ¿Por qué ocurre? | Porque dependen de cuadernos de cargo, pizarras y hojas de excel, lo que impide generar alertas automáticas, rastrear el historial técnico y sincronizar el inventario. |
| **How?** | ¿Cómo se manifiesta? | A través de paradas de planta no planificadas a causa de máquinas paralizadas sin previo aviso por fallas técnicas, falta de stock de piezas críticas y desorganización en las visitas de los técnicos. |
| **How Much?** | ¿Cuál es la magnitud? | Las paradas de emergencia y fallas imprevistas pueden llegar a paralizar líneas enteras de producción, lo que genera sobrecostos operativos no esperados, por reparaciones reactivas que impactan directamente en la rentabilidad de los afectados. |


---

### 1.2.2 Lean UX Process. 

#### 1.2.2.1. Lean UX Problem Statements. 

El estado actual del mantenimiento industrial se ha centrado principalmente en contratistas de servicio técnico y pymes manufactureras que aún dependen de cuadernos de cargo, pizarras acrílicas o tablas de Excel aisladas para programar sus revisiones y controlar los repuestos utilizados. Lo que los productos y servicios actuales no logran resolver es una plataforma web accesible y adaptable que unifique la programación preventiva de los equipos con el control de inventario y el seguimiento operativo, sin requerir implementaciones de software costosas o complejas. Nuestro producto abordará esta brecha mediante Fixcore, una aplicación web SaaS intuitiva que centraliza los perfiles técnicos de la maquinaria, ofrece un calendario interactivo de mantenimientos, automatiza alertas de vencimiento y descuenta repuestos en tiempo real. Nuestro enfoque inicial serán las firmas contratistas de mantenimiento industrial y los administradores de planta en pymes manufactureras. Sabremos que tenemos éxito cuando al menos el 75% de los operarios utilice la aplicación web desde sus dispositivos durante su turno, los clientes reduzcan sus paradas de máquina no planificadas en al menos un 30% y los quiebres de stock de repuestos críticos disminuyan en un 25%.

#### 1.2.2.2. Lean UX Assumptions. 

**Business Assumptions**
* Creemos que nuestros clientes necesitan dejar de usar cuadernos y hojas de cálculo porque la información se pierde o desactualiza, y requieren un historial centralizado de sus máquinas.
* Estas necesidades se pueden resolver con una aplicación web moderna donde cada máquina tenga su propia ficha técnica digital accesible de forma rápida.
* Nuestros clientes iniciales son los jefes de mantenimiento de fábricas y los dueños de empresas que prestan servicios tecnicos.
* El valor principal que un cliente busca es evitar paradas imprevistas en la línea de producción y tener control total sobre sus activos físicos.
* El cliente también se beneficiará al poder ver de forma ágil el rendimiento de sus técnicos y los costos de reparación asociados.
* Conseguiremos clientes ofreciendo pruebas piloto directas en una línea de producción de sus instalaciones para demostrar el valor de la plataforma.
* Ganaremos dinero cobrando una suscripción mensual (SaaS) escalonada según la cantidad de equipos o sucursales registradas en el sistema.
* Nuestra competencia principal son los programas tipo ERP (que son muy costosos y complejos de implementar) y los registros manuales tradicionales en papel o Excel. 
* Los venceremos ofreciendo una interfaz web especializada en flujos de servicio técnico, rápida de desplegar y muy fácil de usar en el día a día.
* Nuestro mayor riesgo de producto es que los técnicos tengan pantallas de celular pequeñas y la plataforma web se vuelva incómoda de leer o usar en la planta. 
* Resolveremos esto aplicando un diseño web adaptable usando botones grandes y contrastes claros para que cargue perfecto en cualquier navegador móvil o de escritorio.

**Business Outcome Assumptions**
* Creemos que el gasto en repuestos de emergencia bajará un 15% porque el sistema web avisará con tiempo qué piezas se están agotando.
* Creemos que los técnicos completarán sus reportes un 20% más rápido al no tener que transcribir documentos de papel al final del día.
* Creemos que el 85% de los clientes renovará su suscripción mensual tras ver el orden operativo en sus talleres.

**User Assumptions**
* **¿Quién es el usuario?** El supervisor o jefe de mantenimiento, que organiza la programación y el técnico operario que consulta tareas y reporta desde la planta.
* **¿Dónde encaja nuestro producto?** En la rutina diaria del taller y de la planta de producción, sirviendo como la bitácora oficial y centralizada del negocio.
* **¿Qué problemas tiene?** La falta de alertas en las revisiones y el desconocimiento del stock real de piezas.
* **¿Cuándo y cómo es usado?** De manera continua durante los turnos de trabajo mediante navegadores web desde PCs, tablets o smartphones.
* **¿Qué características son importantes?** Calendario interactivo, perfiles digitales de máquinas, control de repuestos y notificaciones automáticas.
* **¿Cómo debe verse?** Una interfaz web limpia, moderna, con navegación intuitiva y diseñada bajo los estándares para facilitar la lectura.

**User Outcome and Benefit Assumptions**
* Creemos que los jefes quieren organizar mejor las tareas para evitar el pago excesivo de horas extras por emergencias.
* Creemos que los técnicos quieren saber si hay un repuesto disponible en el almacén sin tener que caminar largas distancias para preguntar.
* Creemos que los dueños quieren reportes web automáticos para conocer el estado de sus equipos sin revisar cuadernos físicos.
* Creemos que todos los involucrados quieren eliminar los errores causados por documentos extraviados o ilegibles.

**Feature Assumptions**
* El calendario interactivo permitirá visualizar y reasignar mantenimientos diarios de manera ágil.
* Los perfiles de maquinaria digitalizarán manuales, marcas y modelos en una vista centralizada.
* El módulo de inventario actualizará las existencias automáticamente al cerrar una orden de servicio.
* El sistema de notificaciones enviará alertas antes de que caduquen las fechas de revisión preventiva.
* El panel principal (Dashboard) mostrará métricas y resúmenes gráficos del estado de las operaciones.

#### 1.2.2.3. Lean UX Hypothesis Statements. 

* **Hipótesis 1:** Creemos que reduciremos las compras de emergencia en un 15% si los jefes de mantenimiento obtienen alertas automáticas cuando un repuesto se está acabando con el módulo de control de inventario en tiempo real.
* **Hipótesis 2:** Creemos que los técnicos reportan sus trabajos un 20% más rápido si los operarios de campo obtienen un acceso inmediato a las fichas técnicas y manuales desde cualquier dispositivo con la aplicación web adaptable.
* **Hipótesis 3:** Creemos que lograremos una alta adopción de la plataforma si el personal técnico obtiene un flujo de trabajo simplificado para registrar reparaciones sin escribir de más con las órdenes de trabajo digitales de la interfaz web.
* **Hipótesis 4:** Creemos que el 85% de las empresas se quedarán con nosotros si los dueños y gerentes obtienen reportes claros sobre el comportamiento de sus máquinas con el panel de control analítico de la plataforma.

#### 1.2.2.4. Lean UX Canvas. 

<div align="center">
  <p><b>Gráfico 1</b>: Lean UX Canvas FixCore</p>
  <img src="Assets/Images//lean-ux-canvas.png" alt="Lean UX Canvas FixCore" />
</div>

## 1.3. Segmentos objetivo. 

## Segmento 1: Pymes de Manufactura y Producción

* **Segmento objetivos:** Jefes de planta, coordinadores de producción y gerentes de mantenimiento interno en pequeñas y medianas empresas del sector manufacturero.
* **Descripción:** Unidades productivas que dependen de la disponibilidad continua de su maquinaria (como envasadoras, tornos o fajas transportadoras). Su necesidad principal es reducir los tiempos de inactividad, solicitar asistencia técnica de forma inmediata y llevar un control sobre sus equipos para evitar paradas de emergencia en su línea de producción.
* **Edad:** 30 a 55 años.
* **Sexo:** Hombres y mujeres.
* **Ubicación:** Sectores de actividad industrial y fábricas a nivel nacional, abarcando cualquier planta que cuente con conectividad a internet para plataformas web.
* **Formación educativa:** Estudios técnicos industriales, Ingeniería Industrial o profesionales con formación basada en la experiencia para la supervisión de líneas de producción.
* **Poder adquisitivo:** Medio y Medio-alto.
* **Clase social:** B y C.
* **Datos de sustento:** Durante el último año, el sector manufacturero peruano experimentó una contracción del 6,65 % en su producción; sin embargo, la inversión en bienes de capital (compra de nueva maquinaria) aumentó cerca de un 8 % (INEI, 2024). Este escenario obliga a las fábricas a proteger su nueva inversión, maximizando la vida útil de sus máquinas y reduciendo al mínimo los gastos por fallas imprevistas mediante plataformas de gestión centralizada.

## Segmento 2: Firmas Consultoras y Contratistas de Ingeniería Industrial

* **Segmento objetivos:** Dueños, gerentes de operaciones o supervisores de planificación en empresas proveedoras de servicios de consultoría, mantenimiento industrial y reparación de maquinaria.
* **Descripción:** Organizaciones B2B dedicadas a ejecutar planes de mantenimiento preventivo y correctivo para terceros. Requieren centralizar la asignación de técnicos en campo, gestionar inventarios de repuestos y asegurar el cumplimiento de sus tiempos de atención mediante herramientas digitales que eliminen el uso de papel.
* **Edad:** 35 a 60 años.
* **Sexo:** Hombres y mujeres.
* **Ubicación:** Zonas industriales, parques empresariales y polos de desarrollo a nivel nacional, con operaciones tanto en oficinas como en campo.
* **Formación educativa:** Titulados técnicos o profesionales en Ingeniería Industrial, Ingeniería Mecánica o Administración, generalmente con experiencia en gestión de activos.
* **Poder adquisitivo:** Medio-alto y Alto.
* **Clase social:** A y B.
* **Datos de sustento:** Según un estudio de McKinsey Global Institute (2015), la transición hacia modelos de mantenimiento preventivo soportados por herramientas digitales permite a las firmas consultoras y contratistas reducir los costos de reparación entre un 18 % y un 25 %. Además, la digitalización incrementa la productividad de los técnicos en campo, lo que genera una demanda directa de software especializado (SaaS) que reemplace las hojas de cálculo tradicionales para poder atender a más fábricas a la vez.

# Capítulo II: Requirements Elicitation & Analysis 

## 2.1. Competidores. 

### 2.1.1. Análisis competitivo. 

### 2.1.2. Estrategias y tácticas frente a competidores. 

## 2.2. Entrevistas. 

### 2.2.1. Diseño de entrevistas. 

### 2.2.2. Registro de entrevistas. 

### 2.2.3. Análisis de entrevistas. 

## 2.3. Needfinding. 

### 2.3.1. User Personas. 

### 2.3.2. User Task Matrix. 

### 2.3.3. User Journey Mapping. 

### 2.3.4. Empathy Mapping. 

## 2.4. Big Picture EventStorming. 

## 2.5. Ubiquitous Language. 



# Capítulo III: Requirements Specification 

## 3.1. User Stories. 

|Epic / Story ID|Título|Descripción|Criterios de aceptación|Relacionado con|
|:--------------|:-----|:----------|:----------------------|:--------------|
||||||

## 3.2. Impact Mapping. 


## 3.3. Product Backlog. 

|# Orden|User Story ID|Título|Descripción|Story Points|
|:--------------|:-----|:----------|:----------------------|:--------------|
||||||

# Capítulo IV: Product Design 

## 4.1. Style Guidelines. 

### 4.1.1. General Style Guidelines. 

### 4.1.2. Web Style Guidelines. 

## 4.2. Information Architecture. 

### 4.2.1. Organization Systems. 

### 4.2.2. Labeling Systems. 

### 4.2.3. SEO Tags and Meta Tags 

### 4.2.4. Searching Systems. 

### 4.2.5. Navigation Systems. 

## 4.3. Landing Page UI Design. 

### 4.3.1. Landing Page Wireframe. 

### 4.3.2. Landing Page Mock-up. 

## 4.4. Web Applications UX/UI Design. 

### 4.4.1. Web Applications Wireframes. 

### 4.4.2. Web Applications Wireflow Diagrams. 

### 4.4.2. Web Applications Mock-ups. 

### 4.4.3. Web Applications User Flow Diagrams. 

## 4.5. Web Applications Prototyping. 

## 4.6. Domain-Driven Software Architecture. 

### 4.6.1. Design-Level EventStorming. 

### 4.6.2. Software Architecture Context Diagram. 

### 4.6.3. Software Architecture Container Diagrams. 

### 4.6.4. Software Architecture Components Diagrams. 

## 4.7. Software Object-Oriented Design. 

### 4.7.1. Class Diagrams. 

## 4.8. Database Design. 

### 4.8.1. Database Diagrams. 


# Capítulo V: Product Implementation, Validation & Deployment  


## 5.1. Software Configuration Management. 

### 5.1.1. Software Development Environment Configuration. 

### 5.1.2. Source Code Management. 

### 5.1.3. Source Code Style Guide & Conventions. 

### 5.1.4. Software Deployment Configuration. 

## 5.2. Landing Page, Services & Applications Implementation. 

### 5.2.1. Sprint 1 

#### 5.2.1.1. Sprint Planning 1. 

#### 5.2.1.2. Aspect Leaders and Collaborators. 

#### 5.2.1.3. Sprint Backlog 1. 

#### 5.2.1.4. Development Evidence for Sprint Review. 

#### 5.2.1.5. Execution Evidence for Sprint Review. 

#### 5.2.1.6. Services Documentation Evidence for Sprint Review. 

#### 5.2.1.7. Software Deployment Evidence for Sprint Review. 

#### 5.2.1.8. Team Collaboration Insights during Sprint. 


# Conclusiones 

# Bibliografía 

# Anexos