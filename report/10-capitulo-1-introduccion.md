
# Capítulo I: Introduction 

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

| Integrante | Descripción | 
| :--- | :--- | 
|  | | 
|  |  | 
|  |Mendoza Boluarte Pierre (u202320973) | 
|  | | 
|  |  | 

## 1.2. Solution Profile 

### 1.2.1 Antecedentes y problemática 

Para entender el contexto de FixCore, analizamos la situación del sector manufacturero en el Perú, el cual es un pilar fundamental para la economía que necesita optimización constante. Según datos del Instituto Nacional de Estadística e Informática (INEI), en el año 2023 el sector manufactura contribuyó con un 12,2 % al Producto Bruto Interno (PBI) nacional; sin embargo, este sector experimentó una disminución del 6,6 % en su producción durante ese mismo año haciendo que las empresas industriales busquen mayor eficiencia y reducir sobrecostos operativos. Una de las principales vías para lograrlo es la modernización de la gestión de sus activos físicos. Investigaciones como la de la firma consultora McKinsey & Company demuestran que el pasar de un modelo de mantenimiento reactivo a enfoques preventivos y predictivos permite reducir los costos generales de mantenimiento entre un 18 % y un 25 %. También se puede decir que la implementación de estas tecnologías logran disminuir el tiempo de inactividad no planificado hasta en un 50 %.

Aunque el impacto positivo de la digitalización es notoria apreciamos que los contratistas de servicios técnicos, los administradores de pymes industriales y el personal operativo sufren graves fricciones en su operación diaria. El problema se centra en las dificultades para gestionar eficientemente las programaciones de mantenimiento y el inventario de repuestos necesarios. Esto pasa porque la gran mayoría sigue empleando métodos como cuadernos de cargo, pizarras o herramientas digitales como hojas de Excel, que no brindan soporte adecuado a un modelo de negocio que puede escalar. Al no contar con un sistema especializado, las fechas de servicio preventivo caducan sin previo aviso, se sufre de falta de stock en piezas clave y los equipos fallan de repente. A nivel operativo, los técnicos de mantenimiento en planta son los más afectados por esta falta de digitalización, ya que pierden tiempo valioso completando papeleo manual, buscando manuales físicos o trasladándose al almacén solo para consultar la disponibilidad de un repuesto.

Entonces, esta carencia de control y agilidad provoca paradas de emergencia en las líneas de producción lo que eleva drásticamente los costos de reparación, reduce la productividad del técnico y afecta la rentabilidad de las empresas involucradas.

---

### Técnica de The 5 'W's y 2 'H's

| Pregunta | Formulación | Respuesta |
| :--- | :--- | :--- |
| **Who?** | ¿Quiénes son los afectados? | Firmas contratistas de servicio técnico industrial, dueños o administradores de Pymes del sector manufacturero, y los técnicos operarios de mantenimiento. |
| **What?** | ¿Cuál es el problema? | Dificultades para planificar fechas de mantenimiento, controlar el inventario de repuestos y la ineficiencia operativa de los técnicos al tener que usar registros manuales o sistemas desconectados. |
| **Where?** | ¿Dónde ocurre? | En plantas de producción, fábricas, talleres industriales y negocios con equipamiento industrial en el Perú. |
| **When?** | ¿Cuándo se hace la evidencia? | Durante la operación diaria, especialmente cuando caduca la fecha de revisión de una máquina, ocurre una falla imprevista en planta o el operario requiere un repuesto urgente que no está en almacén por falta de stock. |
| **Why?** | ¿Por qué ocurre? | Porque dependen de cuadernos de cargo, pizarras y hojas de Excel, lo que impide generar alertas automáticas, rastrear el historial técnico de forma móvil y sincronizar el inventario. |
| **How?** | ¿Cómo se manifiesta? | A través de paradas de planta no planificadas, falta de stock de piezas críticas, desorganización en las visitas y pérdida de horas-hombre de los técnicos al llenar reportes manuales. |
| **How Much?** | ¿Cuál es la magnitud? | Las paradas de emergencia y fallas imprevistas pueden paralizar líneas enteras de producción, lo que genera sobrecostos operativos no esperados y reduce la eficiencia del personal técnico, impactando directamente en la rentabilidad. |


---

### 1.2.2 Lean UX Process. 

#### 1.2.2.1. Lean UX Problem Statements. 

El estado actual del mantenimiento industrial se ha centrado principalmente en contratistas de servicio técnico y pymes manufactureras que aún dependen de cuadernos de cargo, pizarras acrílicas o tablas de Excel aisladas para programar sus revisiones y controlar los repuestos utilizados. Lo que los productos y servicios actuales no logran resolver es una plataforma web accesible y adaptable que unifique la programación preventiva de los equipos con el control de inventario y que elimine la fricción de los técnicos al reportar problemas en campo, sin requerir implementaciones de software costosas o complejas.

Nuestro producto abordará esta brecha mediante FixCore, una aplicación web SaaS intuitiva que centraliza los perfiles técnicos de la maquinaria, ofrece un calendario interactivo de mantenimientos, automatiza alertas de vencimiento y permite al técnico descontar repuestos y registrar fallas en tiempo real desde su dispositivo móvil.

Nuestro enfoque inicial serán las firmas contratistas de mantenimiento industrial, los administradores de planta en pymes manufactureras y los técnicos operarios. Sabremos que tenemos éxito cuando al menos el 75% de los operarios utilice la aplicación web desde sus dispositivos durante su turno, los clientes reduzcan sus paradas de máquina no planificadas en al menos un 30% y los quiebres de stock de repuestos críticos disminuyan en un 25%.


#### 1.2.2.2. Lean UX Assumptions. 

**Business Assumptions**

* Creemos que nuestros clientes necesitan dejar de usar cuadernos y hojas de cálculo porque la información se pierde o desactualiza, y requieren un historial centralizado de sus máquinas.

* Estas necesidades se pueden resolver con una aplicación web moderna donde cada máquina tenga su propia ficha técnica digital accesible de forma rápida.

* Nuestros clientes iniciales son los jefes de mantenimiento de fábricas, dueños de empresas que prestan servicios técnicos y el personal operativo de campo.

* El valor principal que un cliente busca es evitar paradas imprevistas en la línea de producción y tener control total sobre sus activos físicos.

* El cliente también se beneficiará al poder ver de forma ágil el rendimiento de sus técnicos y los costos de reparación asociados.

* Conseguiremos clientes ofreciendo pruebas piloto directas en una línea de producción de sus instalaciones para demostrar el valor de la plataforma.

* Ganaremos dinero cobrando una suscripción mensual (SaaS) escalonada según la cantidad de equipos o sucursales registradas en el sistema.

* Nuestra competencia principal son los programas tipo ERP (que son muy costosos y complejos de implementar) y los registros manuales tradicionales en papel o Excel.

* Los venceremos ofreciendo una interfaz web especializada en flujos de servicio técnico, rápida de desplegar y muy fácil de usar en el día a día para el operario.

* Nuestro mayor riesgo de producto es que los técnicos tengan pantallas de celular pequeñas y la plataforma web se vuelva incómoda de leer o usar en la planta.

* Resolveremos esto aplicando un diseño web adaptable usando botones grandes y contrastes claros para que cargue perfecto en cualquier navegador móvil o de escritorio.

**Business Outcome Assumptions**

* Creemos que el gasto en repuestos de emergencia bajará un 15% porque el sistema web avisará con tiempo qué piezas se están agotando.

* Creemos que los técnicos completarán sus reportes un 20% más rápido al no tener que transcribir documentos de papel al final del día.

* Creemos que el 85% de los clientes renovará su suscripción mensual tras ver el orden operativo en sus talleres y el incremento de la productividad de su personal.

**User Assumptions**

* ¿Quién es el usuario? El supervisor o jefe de mantenimiento que organiza la programación, el gerente que revisa métricas, y el técnico operario que consulta tareas y reporta directo desde la planta.

¿Dónde encaja nuestro producto? En la rutina diaria del taller y de la planta de producción, sirviendo como la bitácora oficial, móvil y centralizada del negocio.

* * ¿Qué problemas tiene? La falta de alertas en las revisiones, el desconocimiento del stock real de piezas y la fricción de llenar papeleo a mano en un entorno industrial.

* ¿Cuándo y cómo es usado? De manera continua durante los turnos de trabajo mediante navegadores web desde PCs, tablets o smartphones.

* ¿Qué características son importantes? Calendario interactivo, perfiles digitales de máquinas, control de repuestos, interfaz móvil amigable y notificaciones automáticas.

* ¿Cómo debe verse? Una interfaz web limpia, moderna, con botones accesibles (Touch Targets) y diseñada bajo los estándares para facilitar la lectura en entornos industriales.

**User Outcome and Benefit Assumptions**

* Creemos que los jefes quieren organizar mejor las tareas para evitar el pago excesivo de horas extras por emergencias.

* Creemos que los técnicos quieren saber si hay un repuesto disponible en el almacén sin tener que caminar largas distancias para preguntar y poder reportar fallas en pocos clics.

* Creemos que los dueños quieren reportes web automáticos para conocer el estado de sus equipos sin revisar cuadernos físicos.

* Creemos que todos los involucrados quieren eliminar los errores causados por documentos extraviados o ilegibles.

**Feature Assumptions**

* El calendario interactivo permitirá visualizar y reasignar mantenimientos diarios de manera ágil.

* Los perfiles de maquinaria digitalizarán manuales, marcas y modelos en una vista centralizada accesible desde móviles.

* El módulo de inventario actualizará las existencias automáticamente al cerrar una orden de servicio por parte del técnico.

* El sistema de notificaciones enviará alertas antes de que caduquen las fechas de revisión preventiva.

* El panel principal (Dashboard) mostrará métricas y resúmenes gráficos del estado de las operaciones


#### 1.2.2.3. Lean UX Hypothesis Statements. 

* Hipótesis 1: Creemos que reduciremos las compras de emergencia en un 15% si los jefes de mantenimiento obtienen alertas automáticas cuando un repuesto se está acabando con el módulo de control de inventario en tiempo real.

* Hipótesis 2: Creemos que los técnicos reportan sus trabajos un 20% más rápido si los operarios de campo obtienen un acceso inmediato a las fichas técnicas y manuales desde cualquier dispositivo con la aplicación web adaptable.

* Hipótesis 3: Creemos que lograremos una alta adopción de la plataforma si el personal técnico obtiene un flujo de trabajo simplificado para registrar reparaciones sin escribir de más con las órdenes de trabajo digitales de la interfaz web.

* Hipótesis 4: Creemos que el 85% de las empresas se quedarán con nosotros si los dueños y gerentes obtienen reportes claros sobre el comportamiento de sus máquinas con el panel de control analítico de la plataforma.

#### 1.2.2.4. Lean UX Canvas. 

<div align="center">
  <p><b>Gráfico 1</b>: Lean UX Canvas FixCore</p>
  <img src="../assets/images/lean_ux_canvas.png" alt="Lean UX Canvas FixCore" />
</div>

*Fuente: Elaboración propia.*

## 1.3. Segmentos objetivo. 

> **Segmento 1: Pymes de Manufactura y Producción**

* **Segmento objetivos:** Jefes de planta, coordinadores de producción y gerentes de mantenimiento interno en pequeñas y medianas empresas del sector manufacturero.
* **Descripción:** Unidades productivas que dependen de la disponibilidad continua de su maquinaria (como envasadoras, tornos o fajas transportadoras). Su necesidad principal es reducir los tiempos de inactividad, solicitar asistencia técnica de forma inmediata y llevar un control sobre sus equipos para evitar paradas de emergencia en su línea de producción.
* **Edad:** 30 a 55 años.
* **Sexo:** Hombres y mujeres.
* **Ubicación:** Sectores de actividad industrial y fábricas a nivel nacional, abarcando cualquier planta que cuente con conectividad a internet para plataformas web.
* **Formación educativa:** Estudios técnicos industriales, Ingeniería Industrial o profesionales con formación basada en la experiencia para la supervisión de líneas de producción.
* **Poder adquisitivo:** Medio y Medio-alto.
* **Clase social:** B y C.
* **Datos de sustento:** Durante el último año, el sector manufacturero peruano experimentó una contracción del 6,65 % en su producción; sin embargo, la inversión en bienes de capital (compra de nueva maquinaria) aumentó cerca de un 8 % (INEI, 2024). Este escenario obliga a las fábricas a proteger su nueva inversión, maximizando la vida útil de sus máquinas y reduciendo al mínimo los gastos por fallas imprevistas mediante plataformas de gestión centralizada.

> **Segmento 2: Firmas Consultoras y Contratistas de Ingeniería Industrial**

* **Segmento objetivos:** Dueños, gerentes de operaciones o supervisores de planificación en empresas proveedoras de servicios de consultoría, mantenimiento industrial y reparación de maquinaria.
* **Descripción:** Organizaciones B2B dedicadas a ejecutar planes de mantenimiento preventivo y correctivo para terceros. Requieren centralizar la asignación de técnicos en campo, gestionar inventarios de repuestos y asegurar el cumplimiento de sus tiempos de atención mediante herramientas digitales que eliminen el uso de papel.
* **Edad:** 35 a 60 años.
* **Sexo:** Hombres y mujeres.
* **Ubicación:** Zonas industriales, parques empresariales y polos de desarrollo a nivel nacional, con operaciones tanto en oficinas como en campo.
* **Formación educativa:** Titulados técnicos o profesionales en Ingeniería Industrial, Ingeniería Mecánica o Administración, generalmente con experiencia en gestión de activos.
* **Poder adquisitivo:** Medio-alto y Alto.
* **Clase social:** A y B.
* **Datos de sustento:** Según un estudio de McKinsey Global Institute (2015), la transición hacia modelos de mantenimiento preventivo soportados por herramientas digitales permite a las firmas consultoras y contratistas reducir los costos de reparación entre un 18 % y un 25 %. Además, la digitalización incrementa la productividad de los técnicos en campo, lo que genera una demanda directa de software especializado (SaaS) que reemplace las hojas de cálculo tradicionales para poder atender a más fábricas a la vez.

> **Segmento 3: Técnicos Operarios**

* **Segmento objetivos:** Técnicos de planta, operarios de maquinaria, mecanicos industriales.
* **Descripción:** Profesionales encargados de la ejecución directa de las labores de mantenimiento preventivo y correctivo frente a la maquina. Su necesidad principal es contar con una herramienta que les permita reportar fallas en segundos, acceder a manuales técnicos de forma digital y consultar la disponibilidad de repuestos sin abandonar su área de trabajo.
* **Edad:** 20 a 50 años.
* **Sexo:** Hombres y mujeres.
* **Ubicación:** Plantas de producción, fábricas, talleres y trabajo de campo a nivel nacional.
* **Formación educativa:** Estudios técnicos en mecanica, electronica, mecatronica, mantenimiento industrial o experiencia práctica formativa en planta.
* **Poder adquisitivo:** Medio y Medio-bajo.
* **Clase social:** C y D.
* **Datos de sustento:** Estudios sobre mantenimiento inteligente e industria evidencian que los sistemas tradicionales de escritorio limitan el compromiso del técnico, por eso proveer herramientas  adaptadas al entorno operativo permite a los operarios gestionar órdenes de trabajo sobre la marcha, lo que incrementa la usabilidad del sistema, reduce la carga administrativa y eleva la precisión de los datos reportados en tiempo real.