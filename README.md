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

### Guía de preguntas para Pymes de Manufactura y Producción

* ¿Cuál es tu nombre, edad y qué cargo ocupas en la planta?
* ¿A qué sector industrial pertenece la empresa y, aproximadamente, cuántas máquinas principales operan?
* ¿Cómo gestionan actualmente el reporte de fallas de maquinaria y las órdenes de trabajo (ej. Excel, papel, grupos de WhatsApp, pizarras)?
* ¿Qué dispositivos utilizan más los operarios y técnicos durante su turno en planta (smartphones personales, tablets de la empresa, radios)?
* ¿Qué tan frecuente es que una máquina sufra tiempos muertos (downtime) debido a una mala comunicación o lentitud al reportar la falla?
* ¿Cuáles son las mayores frustraciones que enfrentas al intentar consolidar la información de mantenimiento a fin de mes?
* ¿Has intentado implementar algún software de mantenimiento anteriormente? Si es así, ¿cuál fue el resultado o la principal barrera de adopción por parte de los técnicos?
* ¿Qué elemento te generaría más confianza para adoptar un nuevo sistema: la facilidad de uso para el operario, la automatización de alertas, o el costo de implementación?
* ¿Cómo crees que impactaría en la productividad si los técnicos pudieran reportar una falla en menos de 3 clics desde su celular?
* ¿Qué tan útil te resultaría recibir notificaciones automáticas de fallas críticas directamente en tu WhatsApp?
* Si existiera una versión básica gratuita (modelo freemium) para probar el sistema con algunas máquinas, ¿te animarías a implementarlo en tu planta?
* Una vez comprobado el valor del sistema, ¿cuánto estarías dispuesto a pagar mensualmente por módulos avanzados y analítica de datos (rango en dólares o soles)?

### Guía de preguntas para Firmas Consultoras y Contratistas de Ingeniería Industrial

* ¿Podría indicarme su nombre, cargo y el tipo de servicios de ingeniería o mantenimiento que brinda su empresa?
* ¿A cuántas plantas industriales o clientes prestan servicio de manera simultánea?
* ¿Cómo coordinan actualmente el despliegue de sus técnicos en campo cuando un cliente reporta una emergencia o falla en sus equipos?
* Desde su experiencia operativa, ¿cuáles son las mayores limitaciones logísticas o tecnológicas que enfrentan para atender múltiples plantas a la vez?
* ¿Qué tan complejo les resulta estandarizar los reportes de mantenimiento y KPIs para entregárselos a diferentes clientes?
* ¿Suelen utilizar herramientas de automatización de flujos de trabajo o integración de APIs en sus operaciones diarias?
* ¿Qué funcionalidades considera indispensables en una plataforma digital para que decida utilizarla como el motor operativo de todos sus técnicos (ej. webhooks, portal multi-cliente, alertas en tiempo real)?
* ¿Qué tan importante sería para su firma poder integrar el sistema de mantenimiento con otras herramientas de comunicación (como notificaciones automáticas vía n8n a WhatsApp)?
* ¿Cree que ofrecer a sus clientes una herramienta ágil para que les reporten fallas mejoraría la percepción de su servicio tercerizado? ¿Por qué?
* ¿Preferiría un modelo de precios basado en la cantidad de técnicos (usuarios) o en la cantidad de plantas/clientes gestionados?
* ¿Estaría dispuesto a recomendar e implementar este sistema directamente en la infraestructura tecnológica de sus clientes?

### 2.2.1. Diseño de entrevistas. 

### 2.2.2. Registro de entrevistas. 

### 2.2.3. Análisis de entrevistas. 

## 2.3. Needfinding. 

El proceso de needfinding permitió identificar las necesidades reales, motivaciones, dificultades y oportunidades relacionadas con la digitalización del mantenimiento industrial en los dos segmentos objetivo de FixCore: pymes de manufactura y firmas consultoras o contratistas de ingeniería.

Estudios contemporáneos demuestran que, si bien las pymes reconocen el valor de transicionar hacia la digitalización y la Industria 4.0, la adopción de sistemas de gestión se ve severamente frenada por barreras de entrada. Una investigación sobre la integración tecnológica en pymes evidenció que existe una gran brecha entre la conciencia tecnológica y la implementación real; las empresas dudan en adoptar softwares de mantenimiento robustos debido a los altísimos costos iniciales, la complejidad del sistema y la resistencia al cambio hacia herramientas complejas (Narula et al., 2023).

Del mismo modo, el impacto de no digitalizar y comunicar ágilmente estos procesos es crítico para la rentabilidad. El reporte global *The True Cost of Downtime* publicado por Senseye (compañía de Siemens) examinó el impacto de las paradas de maquinaria no planificadas, revelando que las pérdidas globales por inactividad en la industria manufacturera ascienden a casi 1.5 billones de dólares anuales. La investigación refuerza que la falta de visibilidad en tiempo real y la dependencia de procesos de comunicación manuales extienden el tiempo de recuperación frente a fallas (Senseye, 2022). Esto subraya la urgencia de dotar a los operarios de herramientas estructuradas de reporte directamente en el punto de falla.

Asimismo, la evidencia científica reciente señala que los sistemas tradicionales de gestión de mantenimiento (CMMS) basados en escritorio limitan el compromiso del técnico de campo. En contraste, estudios sobre "Smart Maintenance" (Mantenimiento Inteligente) demuestran que el enfoque en la movilidad el uso de dispositivos móviles y plataformas conectadas es un pilar fundamental para el futuro de la industria, ya que permite a los técnicos gestionar órdenes de trabajo sobre la marcha, aumentando drásticamente la usabilidad, adopción de la herramienta y la precisión de los datos (Bokrantz et al., 2020).

En conjunto, esta literatura reciente confirma que existe una necesidad sostenida de herramientas de mantenimiento modernas, de adopción inmediata (baja fricción) y financieramente accesibles como una plataforma de automatización en entorno móvil que permitan a las plantas industriales y contratistas responder en tiempo real ante tiempos muertos, coincidiendo plenamente con los hallazgos operativos obtenidos en las entrevistas de campo.

### Árbol de Problemas

El Árbol de Problemas fue elaborado para jerarquizar visualmente la problemática, estableciendo una relación de causalidad entre el problema central —la ineficiencia y altos costos por tiempos muertos (downtime) en la gestión de mantenimiento industrial de pymes y sus efectos. Las Causas (raíces) y los Efectos (impactos) identificados fueron validados mediante la triangulación de los hallazgos de las entrevistas de campo y la literatura sectorial reciente, la cual subraya que la dependencia de procesos manuales y la barrera de adopción de software complejo extienden drásticamente los tiempos de recuperación frente a fallas (Senseye, 2022; Narula et al., 2023).

**Gráfico 1: Árbol de problemas**

![Árbol de Problemas FixCore](Assets/Images/arbol_problemas.png)

*Fuente: Elaboración propia.*

### Diagrama de Ishikawa

Para complementar el análisis estructural, se aplicó el Diagrama de Ishikawa (Espina de Pescado) categorizando las causas raíz en seis ejes fundamentales: Proceso, Personas, Tecnología, Información, Entorno y Gestión[cite: 6]. Este desglose sistemático no solo demuestra el rigor metodológico, sino que también justifica la multidimensionalidad de la solución FixCore al validar las causas operativas (p. ej., la necesidad de Tecnología móvil para superar las limitaciones del Entorno ruidoso de planta y la agilidad de Proceso para combatir la comunicación fragmentada).

**Gráfico 2: Diagrama de Ishikawa**

![Diagrama de Ishikawa FixCore](Assets/Images/diagrama_ishikawa.png)

*Fuente: Elaboración propia.*

### 2.3.1. User Personas. 

### 2.3.2. User Task Matrix. 

### 2.3.3. User Journey Mapping. 

### 2.3.4. Empathy Mapping. 

## 2.4. Big Picture EventStorming. 

## 2.5. Ubiquitous Language. 

Es el lenguaje común compartido entre desarrolladores y expertos del negocio que se formula para alinear modelos mentales y eliminar ambigüedades. Este lenguaje asegura que tanto la documentación técnica como el código fuente final de FixCore utilicen exactamente los mismos términos definidos para el dominio de mantenimiento industrial.

| Concepto | Definición |
| :--- | :--- |
| **Técnico** | Usuario móvil del sistema encargado de ejecutar las órdenes de trabajo en planta y reportar incidencias. |
| **Jefe de Planta** | Usuario administrador responsable de supervisar la maquinaria, asignar tareas y analizar métricas operativas. |
| **Máquina (Activo)** | Equipo industrial físico registrado en el sistema que requiere monitoreo, historial y mantenimiento constante. |
| **Orden de Trabajo (OT)** | Registro digital que detalla una tarea de mantenimiento específica asignada a un técnico, incluyendo tiempos y repuestos. |
| **Falla (Incidencia)** | Evento imprevisto reportado en el que una máquina deja de funcionar correctamente, requiriendo atención inmediata. |
| **Tiempo Muerto (Downtime)** | Período durante el cual una máquina no está operativa debido a una falla, generando retrasos en la producción. |
| **Mantenimiento Preventivo** | Conjunto de tareas programadas y recurrentes para revisar y conservar las máquinas antes de que ocurra una falla. |
| **Mantenimiento Correctivo** | Acción de reparación que se ejecuta de manera reactiva después de que se ha reportado una falla en una máquina. |
| **Alerta Automatizada** | Notificación enviada en tiempo real (vía webhooks a WhatsApp) informando a los involucrados sobre un cambio de estado o falla. |
| **Repuesto (Insumo)** | Pieza física o material consumible necesario para completar una orden de trabajo (ej. rodamientos, lubricantes). |
| **Inventario** | Módulo que gestiona el stock y las existencias actualizadas de los repuestos disponibles en el almacén. |
| **Planta (Locación)** | Espacio físico, fábrica o instalación industrial donde se encuentran operando las máquinas registradas. |
| **KPI de Mantenimiento** | Indicador clave (ej. MTTR - Tiempo Medio de Reparación) generado automáticamente para medir la eficiencia del equipo. |
| **Plan Freemium** | Nivel de acceso básico de la plataforma que permite a la pyme gestionar un número limitado de OTs sin costo inicial. |

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
