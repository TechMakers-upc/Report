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


# Capítulo I: Introducción 

## 1.1. Startup Profile 

### 1.1.1. Descripción de la Startup 

### 1.1.2. Perfiles de integrantes del equipo 

## 1.2. Solution Profile 

### 1.2.1 Antecedentes y problemática 

### 1.2.2 Lean UX Process. 

#### 1.2.2.1. Lean UX Problem Statements. 

#### 1.2.2.2. Lean UX Assumptions. 

#### 1.2.2.3. Lean UX Hypothesis Statements. 

#### 1.2.2.4. Lean UX Canvas. 

## 1.3. Segmentos objetivo. 



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

En esta sección se detalla el diseño visual e interactivo de la plataforma web y móvil de FixCore, un sistema open-source diseñado para optimizar y centralizar el mantenimiento industrial. La propuesta se fundamenta en las necesidades de los usuarios, criterios de usabilidad y la estructura de información planificada previamente, asegurando armonía con la identidad visual del proyecto.

El desarrollo se divide en cuatro apartados principales: los Wireframes, que establecen la distribución y jerarquía visual de los elementos en cada pantalla; los Wireflow Diagrams, que muestran la secuencia de navegación según los propósitos de cada usuario; los Mock-ups, que reflejan el diseño gráfico final aplicando la paleta de estilos; y los User Flow Diagrams, que conectan las interfaces con el recorrido ideal y las posibles rutas ante errores o imprevistos.

Los perfiles clave contemplados son el Jefe de Planta, quien administra los recursos y la planificación; el Técnico, enfocado en la ejecución y reporte directo desde la zona de operaciones; y el Gerente de Operaciones, que supervisa el rendimiento general a nivel ejecutivo.

### 4.4.1. Web Applications Wireframes. 

Esta sección presenta los wireframes de baja fidelidad de FixCore, diseñados en Figma. La plataforma se estructuró bajo un enfoque mobile-first y responsivo, adaptándose a los tres roles principales del sistema (Jefe de Planta, Técnico y Gerente de Operaciones).

<img src="./Assets/Images/Captura de pantalla 2026-09-15 035232.png" alt="wireframes">

Explicación de la propuesta:

* Estructura consistente: Se utilizaron tarjetas (cards), barras de navegación fijas y botones grandes para asegurar una lectura rápida y evitar errores operativos en la planta.

* Jerarquía visual: Al tratarse de wireframes estructurales, la jerarquía se estableció mediante tipografías escalonadas, líneas divisorias y bloques de contenido delimitados, utilizando variaciones de tono en lugar de color para diferenciar campos y contenedores.

* Diseño inclusivo: Se priorizaron áreas táctiles amplias y formularios sencillos para que los técnicos puedan reportar fallas y gestionar tareas rápidamente desde el campo.

### 4.4.2. Web Applications Wireflow Diagrams. 

En esta sección presentamos los Wireflows diseñados para FixCore, los cuales enlazan la estructura visual de nuestros wireframes de baja fidelidad con los recorridos interactivos que realiza cada rol para alcanzar sus objetivos principales. A diferencia de un flujo de tareas tradicional, este enfoque nos permite visualizar simultáneamente el diseño de cada pantalla y la secuencia de transiciones ante las acciones del usuario, mostrando los cambios de estado mediante la incorporación progresiva de los wireframes correspondientes.

Para construir estos diagramas, previamente analizamos las rutas típicas de interacción de nuestros usuarios. El desarrollo se centró en los perfiles principales que definimos para el sistema: el Jefe de Planta (enfocado en la administración de activos y la planificación), el Técnico (responsable de la ejecución y el reporte directo en campo) y el Gerente de Operaciones (orientado a la supervisión macro y la revisión de métricas).

#### 4.4.2.1. Wireflow 01 — Jefe de Planta registra su cuenta y maquinas. 

Usuario: Jefe de planta
Obetivo de usuario: Como Jefe de Planta, deseo registrarme con una cuenta y a la vez las máquina en el sistema indicando sus datos técnicos y ubicación para llevar un control centralizado de los activos que requieren mantenimiento preventivo y correctivo.

imagen 

Explicación del flujo: Nuestro flujo arranca en la pantalla principal de acceso, donde ingresamos el usuario y la contraseña. Al presionar el botón de inicio de sesión, el sistema valida las credenciales y nos lleva  hacia el panel de bienvenida adaptado específicamente al perfil del usuario (ya sea el tablero del Jefe de Planta, la vista operativa del Técnico o el resumen ejecutivo del Gerente de Operaciones). Una vez en el panel principal del Jefe de Planta, desde donde accedemos al módulo de maquinaria para agregar un nuevo equipo, lo que nos dirige hacia el formulario de registro en su estado inicial. Ingresamos los datos obligatorios, como nombre, planta, categoría y nivel de criticidad. Al confirmar la acción, el sistema valida los datos y nos redirige al listado general de activos actualizado. Con esto logramos automatizar el registro y dejamos atrás los controles en papel o Excel.

#### 4.4.2.2. Wireflow 02 — Técnico accede a la informacion de maquinas. 

Usuario: Técnico
Obetivo de usuario: Como Técnico de campo, deseo observar los fallos de las maquinas y dirigirme a la planta asignada, reportarme para que la incidencia quede registrada formalmente y pueda ser atendida sin retrasos.

imagen 

Explicación del flujo: Este recorrido parte de la interfaz móvil del Técnico, donde seleccionamos la opción abrir dependiendo la maquina a trabajar y así visualizar el formulario correspondiente. Elegimos la máquina afectada y verificamos la prioridad. Al presionar el botón "ACEPTAR", la interfaz muestra un estado de confirmación y refresca de inmediato el panel de tareas asignadas con la nueva alerta visible. Diseñamos este flujo para garantizar una baja fricción y agilizar la comunicación directa desde el área de operaciones.

#### 4.4.2.3. Wireflow 03 — Gerente de Operaciones revisa el resumen de operaciones

Usuario: Gerente de Operaciones
Obetivo de usuario: Como Gerente de Operaciones, deseo consultar un resumen general de las actividades y el estado de las plantas para evaluar el rendimiento general y tomar decisiones informadas.

imagen 

Explicación del flujo: El flujo comienza en el panel ejecutivo del Gerente de Operaciones, donde visualizamos las métricas globales del estado de las plantas. Al seleccionar un indicador o una planta en particular, el wireframe transiciona hacia una vista detallada que muestra el historial de intervenciones, las órdenes de trabajo y los tiempos muertos acumulados. De esta manera, facilitamos una auditoría rápida y transparente del desempeño operativo.



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
