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

**1. Fracttal**
- Plataforma CMMS 100% en la nube y móvil, muy consolidada en el mercado hispanohablante. Ofrece gestión de activos y mantenimiento predictivo con módulos de IoT. Sin embargo, sus planes de pago y la complejidad de implementación inicial pueden ser barreras de entrada para pymes industriales que buscan soluciones inmediatas.

**2. UpKeep**
- Solución de mantenimiento *"mobile-first"* diseñada específicamente para facilitar el trabajo del técnico en campo. Agiliza la creación de órdenes de trabajo mediante una interfaz sencilla. No obstante, carece de la profundidad necesaria para integraciones corporativas complejas con ERPs en industrias de gran escala.

**3. IBM Maximo**
- Software líder mundial en gestión de activos empresariales (EAM). Es extremadamente potente y personalizable, ideal para corporaciones gigantes con operaciones críticas. Su principal debilidad radica en sus altísimos costos de licencia, infraestructura pesada y una curva de aprendizaje muy pronunciada.

---

### 2.1.1. Análisis competitivo. 

| ¿Por qué llevar a cabo este análisis? | El objetivo de este análisis es identificar las fortalezas, debilidades, oportunidades y amenazas del entorno competitivo en el sector de software CMMS, con el fin de definir la ventaja competitiva de nuestro sistema frente a las alternativas existentes y orientar las estrategias de diferenciación e innovación. |
| :--- | :--- |

| **Competidores** | &nbsp; | **FixCore**<br><br>![FixCore](Assets/Images/fixcore.png) | **Fracttal**<br><br>![Fracttal](Assets/Images/fracttal.png) | **UpKeep**<br><br>![UpKeep](Assets/Images/upkeep.png) | **IBM Maximo**<br><br>![IBM Maximo](Assets/Images/ibm.png) |
| :--- | :--- | :--- | :--- | :--- | :--- |
| **Perfil** | **Overview** | Sistema integral de gestión de mantenimiento industrial, enfocado en escalabilidad, arquitectura moderna y automatización de procesos. | Plataforma CMMS/EAM basada en la nube y enfocada en IoT y movilidad para mantenimiento predictivo. | Solución móvil (mobile-first) para agilizar la gestión de órdenes de trabajo de técnicos en campo. | EAM robusto a nivel empresarial para operaciones críticas e industrias de gran envergadura. |
| &nbsp; | **Ventaja competitiva** | Arquitectura backend de alto rendimiento, flujos automatizados de alertas en tiempo real y modelo de adopción de baja fricción. | Ecosistema de IoT integrado y fuerte presencia en el mercado de habla hispana. | Extrema facilidad de uso y curva de adopción casi nula para el usuario final (técnicos). | Capacidad de personalización ilimitada y potencia para manejar millones de activos. |
| **Perfil de Marketing** | **Mercado objetivo** | Firmas de ingeniería industrial, empresas de manufactura y flotas que buscan digitalizar su mantenimiento sin costos excesivos. | Medianas y grandes empresas de mantenimiento industrial y facilities que requieren digitalización formal. | Pymes y equipos de campo que necesitan digitalizar órdenes de trabajo rápidamente. | Corporaciones globales, mineras, petroleras y plantas de manufactura masiva. |
| &nbsp; | **Estrategias de marketing** | Demostraciones técnicas, alianzas con consultoras de ingeniería industrial y enfoque open-core / freemium. | Inbound marketing corporativo, webinars, y difusión de casos de éxito B2B. | Posicionamiento en tiendas de apps, SEO agresivo y pruebas gratuitas autogestionadas. | Ventas directas corporativas (Enterprise Sales) y red global de partners integradores. |
| **Perfil de Producto** | **Productos & Servicios** | Gestión de activos, órdenes de trabajo, alertas interactivas vía webhooks, reportes de KPI y APIs abiertas. | CMMS completo, módulo IoT, integración ERP, exámenes y reportes avanzados. | App móvil de gestión de tareas, escaneo de códigos QR, inventario básico. | Gestión del ciclo de vida de activos, predictivo con IA, control de inventarios complejos. |
| &nbsp; | **Precios & costos** | Modelo freemium: acceso básico gratuito/open-source y planes premium para módulos analíticos. | Pago por usuario (medio a alto). | Suscripción por licencia de usuario (bajo a medio). | Licenciamiento empresarial extremadamente alto y costos de implementación. |
| &nbsp; | **Canales** | Web responsive y app móvil (Android/iOS). | Web y app móvil (Android/iOS). | Principalmente app móvil (iOS/Android) y Web. | Implementación in-situ (On-premise) o nube corporativa. |
| **Análisis SWOT** | **Fortalezas** | Backend escalable; fácil integración con automatizaciones externas; costos competitivos. | Solución muy madura; ecosistema IoT nativo; contenido validado en el sector. | Interfaz intuitiva; alta usabilidad; adopción rápida por los operarios en terreno. | Poder absoluto de procesamiento de datos; IA integrada; respaldo global corporativo. |
| &nbsp; | **Debilidades** | Marca nueva en el mercado; necesidad de construir casos de éxito iniciales. | Curva de aprendizaje media; soporte técnico a veces lento en planes bajos; alto costo. | Falta de funciones empresariales profundas y gestión financiera de activos. | Complejidad excesiva; inalcanzable para pymes; requiere consultoría extensa. |
| &nbsp; | **Oportunidades** | Gran segmento de pymes con procesos manuales; integrar simuladores de fallas. | Expansión global y mejora de sus algoritmos de predicción. | Añadir módulos de IA sencillos para predecir fallas; ampliar idiomas. | Migración de empresas tradicionales a la nube híbrida y modernización. |
| &nbsp; | **Amenazas** | Competidores establecidos con mayores presupuestos; desconfianza inicial. | Surgimiento de startups más ágiles y económicas. | Soluciones completas que bajen sus precios y ofrezcan mejores interfaces. | Softwares modernos que ofrezcan 80% de sus funciones por 10% del precio. |
---

### 2.1.2. Estrategias y tácticas frente a competidores. 

| Estrategia / Táctica | Descripción |
| :--- | :--- |
| **Arquitectura de Alto Rendimiento** | Desarrollar una infraestructura backend sólida que garantice escalabilidad y procesamiento ágil de datos de maquinaria sin caídas. |
| **Automatización de Notificaciones** | Integrar automatizaciones (mediante webhooks o plataformas como n8n) para crear flujos de trabajo que envíen alertas de fallas y órdenes directamente al técnico, reduciendo tiempos muertos. |
| **Modelo Freemium** | Ofrecer un núcleo de gestión básico gratuito para que las empresas prueben la herramienta sin riesgo financiero, monetizando a través de módulos avanzados (analítica, integraciones complejas). |
| **Alianzas Estratégicas B2B** | Colaborar con consultoras de ingeniería industrial y programas académicos para que integren el sistema en sus proyectos, validando la plataforma frente a clientes finales. |
| **Innovación en UX** | Diseñar una interfaz web y móvil minimalista que requiera la menor cantidad de clics posibles para reportar una falla, ofreciendo una experiencia de usuario única frente a los sistemas tradicionales sobrecargados. |

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
