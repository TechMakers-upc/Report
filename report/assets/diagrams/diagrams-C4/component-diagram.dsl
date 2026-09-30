workspace "FixCore - Arquitectura de Software" "Component Level Diagrams de FixCore" {

    !identifiers hierarchical
    !impliedRelationships true

    model {

        // actores que usan el sistema
        administradorPlanta = person "Administrador de Planta" "Gestiona plantas activos mantenimiento ordenes de trabajo e inventario"
        tecnico = person "Tecnico" "Reporta fallas ejecuta ordenes de trabajo consulta activos y utiliza repuestos"
        consultorIndustrial = person "Consultor Industrial" "Coordina servicios de mantenimiento y tecnicos"

        // servicio externo de mensajeria
        whatsapp = softwareSystem "Servicio de Notificaciones WhatsApp" "Servicio externo utilizado para enviar alertas y notificaciones"

        // sistema principal
        fixcore = softwareSystem "FixCore" "Plataforma SaaS para la gestion del mantenimiento industrial" {

            // frontend web hecho en angular
            webApp = container "Aplicacion Web" "Interfaz web utilizada por los usuarios de FixCore" "Angular / TypeScript" {
                authComponent = component "Componente de Autenticacion" "Gestiona inicio de sesion cierre de sesion y recuperacion de acceso" "Angular / TypeScript"
                plantComponent = component "Componente de Plantas" "Permite registrar consultar y modificar plantas industriales" "Angular / TypeScript"
                assetComponent = component "Componente de Activos" "Permite registrar consultar y modificar maquinas y activos" "Angular / TypeScript"
                maintenanceComponent = component "Componente de Mantenimiento" "Permite consultar y gestionar planes programaciones y ordenes de trabajo" "Angular / TypeScript"
                inventoryComponent = component "Componente de Inventario" "Permite consultar repuestos stock y movimientos de inventario" "Angular / TypeScript"
                dashboardComponent = component "Componente de Panel y Reportes" "Presenta indicadores metricas y reportes de mantenimiento" "Angular / TypeScript"
                notificationComponent = component "Componente de Notificaciones" "Presenta alertas de mantenimiento fallas y stock" "Angular / TypeScript"
            }

            // puerta de entrada backend
            apiRest = container "API REST" "Expone los servicios RESTful utilizados por la aplicacion web" "Spring Boot / Java" {
                authController = component "Controlador de Autenticacion" "Expone endpoints REST para inicio de sesion y recuperacion de acceso" "Spring Boot / Java"
                assetController = component "Controlador de Activos" "Expone endpoints para administrar plantas y maquinas" "Spring Boot / Java"
                maintenanceController = component "Controlador de Mantenimiento" "Expone endpoints para mantenimiento preventivo fallas y ordenes de trabajo" "Spring Boot / Java"
                inventoryController = component "Controlador de Inventario" "Expone endpoints para inventario repuestos y stock" "Spring Boot / Java"
                reportController = component "Controlador de Reportes" "Expone endpoints para metricas indicadores y reportes" "Spring Boot / Java"
                securityComponent = component "Componente de Seguridad" "Valida autenticacion y autorizacion de las solicitudes" "Spring Security / Java"
                dtoComponent = component "Componente de DTOs" "Define objetos para el intercambio de informacion mediante la API" "Java"
                errorComponent = component "Manejador de Errores" "Centraliza el tratamiento y respuesta de errores de la API" "Spring Boot / Java"
            }

            // modulo de usuarios y login
            identityService = container "Servicio de Identidad y Acceso" "Gestiona usuarios autenticacion roles y permisos" "Spring Boot / Java" {
                userManagementComponent = component "Gestion de Usuarios" "Registra consulta y actualiza las cuentas de usuario" "Spring Boot / Java"
                authenticationComponent = component "Autenticacion" "Valida las credenciales y permite el acceso al sistema" "Spring Security / Java"
                roleComponent = component "Gestion de Roles y Permisos" "Administra roles y permisos asociados a los usuarios" "Spring Boot / Java"
                sessionComponent = component "Gestion de Sesiones" "Gestiona las sesiones autenticadas de los usuarios" "Spring Security / Java"
                userRepository = component "Repositorio de Usuarios" "Gestiona el acceso persistente a la informacion de usuarios" "Spring Data JPA"
            }

            // modulo de plantas y maquinas
            assetService = container "Servicio de Recursos y Activos" "Gestiona plantas industriales maquinas y activos" "Spring Boot / Java" {
                plantManagementComponent = component "Gestion de Plantas" "Registra consulta y modifica plantas industriales" "Spring Boot / Java"
                assetManagementComponent = component "Gestion de Activos" "Registra y administra maquinas y activos" "Spring Boot / Java"
                technicalInfoComponent = component "Informacion Tecnica" "Gestiona informacion tecnica y caracteristicas de los activos" "Spring Boot / Java"
                assetHistoryComponent = component "Historial de Activos" "Consulta el historial de mantenimiento asociado a los activos" "Spring Boot / Java"
                assetRepository = component "Repositorio de Activos" "Gestiona la persistencia de plantas y activos" "Spring Data JPA"
            }

            // modulo para programar mantenimientos
            planningService = container "Servicio de Diseño y Planificacion" "Gestiona planes y programacion del mantenimiento preventivo" "Spring Boot / Java" {
                planManagementComponent = component "Gestion de Planes" "Crea y administra planes de mantenimiento preventivo" "Spring Boot / Java"
                schedulingComponent = component "Programacion de Mantenimiento" "Define fechas y frecuencias de mantenimiento" "Spring Boot / Java"
                reschedulingComponent = component "Reprogramacion" "Permite modificar la fecha programada de mantenimiento" "Spring Boot / Java"
                upcomingMaintenanceComponent = component "Mantenimiento Proximo" "Identifica mantenimientos proximos y pendientes de ejecucion" "Spring Boot / Java"
                planningRepository = component "Repositorio de Planificacion" "Gestiona la persistencia de planes y programaciones" "Spring Data JPA"
            }

            // modulo para seguimiento de ordenes y fallas
            executionService = container "Servicio de Ejecucion y Monitoreo" "Gestiona fallas ordenes de trabajo actividades y monitoreo" "Spring Boot / Java" {
                failureComponent = component "Gestion de Fallas" "Registra y prioriza fallas reportadas en los activos" "Spring Boot / Java"
                workOrderComponent = component "Gestion de Ordenes de Trabajo" "Crea consulta y actualiza ordenes de trabajo" "Spring Boot / Java"
                assignmentComponent = component "Asignacion de Tecnicos" "Asigna tecnicos responsables a las ordenes de trabajo" "Spring Boot / Java"
                activityComponent = component "Registro de Actividades" "Registra las actividades realizadas durante el mantenimiento" "Spring Boot / Java"
                monitoringComponent = component "Monitoreo de Mantenimiento" "Supervisa el estado de fallas ordenes y actividades" "Spring Boot / Java"
                alertComponent = component "Gestion de Alertas" "Genera alertas ante fallas criticas y eventos relevantes" "Spring Boot / Java"
                executionRepository = component "Repositorio de Ejecucion" "Gestiona la persistencia de fallas ordenes y actividades" "Spring Data JPA"
            }

            // modulo para el control de stock
            inventoryService = container "Servicio de Inventario y Repuestos" "Gestiona inventarios repuestos stock y movimientos" "Spring Boot / Java" {
                inventoryManagementComponent = component "Gestion de Inventario" "Administra los inventarios disponibles por planta" "Spring Boot / Java"
                sparePartComponent = component "Gestion de Repuestos" "Registra y consulta los repuestos disponibles" "Spring Boot / Java"
                stockComponent = component "Gestion de Stock" "Controla las cantidades disponibles de cada repuesto" "Spring Boot / Java"
                movementComponent = component "Movimientos de Inventario" "Registra entradas salidas y cambios de stock" "Spring Boot / Java"
                stockAlertComponent = component "Alertas de Stock" "Detecta niveles bajos de stock y genera alertas de reposicion" "Spring Boot / Java"
                inventoryRepository = component "Repositorio de Inventario" "Gestiona la persistencia de inventarios repuestos y movimientos" "Spring Data JPA"
            }

            // modulo para sacar metricas y reportes
            reportingService = container "Servicio de Panel y Reportes" "Proporciona indicadores paneles y reportes de mantenimiento" "Spring Boot / Java" {
                kpiComponent = component "Gestion de Indicadores" "Calcula indicadores relacionados con mantenimiento y operacion" "Spring Boot / Java"
                dashboardComponent = component "Panel de Control" "Construye la informacion necesaria para visualizar el estado operativo" "Spring Boot / Java"
                reportComponent = component "Generacion de Reportes" "Genera reportes de mantenimiento y operacion" "Spring Boot / Java"
                queryComponent = component "Consultas de Mantenimiento" "Consulta informacion consolidada de activos mantenimiento e inventario" "Spring Data JPA"
                reportingRepository = component "Repositorio de Reportes" "Gestiona el acceso a informacion utilizada para indicadores y reportes" "Spring Data JPA"
            }
        }

        // conexion de usuarios a la web
        administradorPlanta -> fixcore.webApp "Utiliza la aplicacion web"
        tecnico -> fixcore.webApp "Utiliza la aplicacion web"
        consultorIndustrial -> fixcore.webApp "Utiliza la aplicacion web"

        // llamadas del front hacia los controladores del api
        fixcore.webApp.authComponent -> fixcore.apiRest.authController "Solicita autenticacion"
        fixcore.webApp.plantComponent -> fixcore.apiRest.assetController "Gestiona plantas"
        fixcore.webApp.assetComponent -> fixcore.apiRest.assetController "Gestiona activos"
        fixcore.webApp.maintenanceComponent -> fixcore.apiRest.maintenanceController "Gestiona mantenimiento"
        fixcore.webApp.inventoryComponent -> fixcore.apiRest.inventoryController "Consulta inventario y repuestos"
        fixcore.webApp.dashboardComponent -> fixcore.apiRest.reportController "Consulta indicadores y reportes"
        fixcore.webApp.notificationComponent -> fixcore.apiRest.reportController "Consulta notificaciones"

        // llamadas internas del api rest a los servicios
        fixcore.apiRest.authController -> fixcore.apiRest.securityComponent "Valida acceso"
        fixcore.apiRest.authController -> fixcore.identityService "Solicita autenticacion"
        fixcore.apiRest.assetController -> fixcore.assetService "Solicita operaciones sobre activos"
        fixcore.apiRest.maintenanceController -> fixcore.executionService "Solicita operaciones de mantenimiento"
        fixcore.apiRest.inventoryController -> fixcore.inventoryService "Solicita operaciones de inventario"
        fixcore.apiRest.reportController -> fixcore.reportingService "Solicita indicadores y reportes"

        // logica interna de identidad y acceso
        fixcore.identityService.authenticationComponent -> fixcore.identityService.userManagementComponent "Consulta credenciales"
        fixcore.identityService.authenticationComponent -> fixcore.identityService.sessionComponent "Crea sesion autenticada"
        fixcore.identityService.roleComponent -> fixcore.identityService.userManagementComponent "Asocia roles y permisos"
        fixcore.identityService.userManagementComponent -> fixcore.identityService.userRepository "Persiste usuarios"

        // flujo interno de recursos y activos
        fixcore.assetService.plantManagementComponent -> fixcore.assetService.assetRepository "Persiste plantas"
        fixcore.assetService.assetManagementComponent -> fixcore.assetService.assetRepository "Persiste activos"
        fixcore.assetService.technicalInfoComponent -> fixcore.assetService.assetManagementComponent "Gestiona informacion tecnica"
        fixcore.assetService.assetHistoryComponent -> fixcore.assetService.assetManagementComponent "Consulta historial"

        // flujo interno de planificacion
        fixcore.planningService.planManagementComponent -> fixcore.planningService.planningRepository "Persiste planes"
        fixcore.planningService.schedulingComponent -> fixcore.planningService.planManagementComponent "Programa mantenimiento"
        fixcore.planningService.reschedulingComponent -> fixcore.planningService.schedulingComponent "Modifica programacion"
        fixcore.planningService.upcomingMaintenanceComponent -> fixcore.planningService.schedulingComponent "Consulta programacion"
        fixcore.planningService.planManagementComponent -> fixcore.assetService "Consulta activos"
        fixcore.planningService.upcomingMaintenanceComponent -> fixcore.executionService "Solicita orden de trabajo"

        // flujo interno de ejecucion y monitoreo
        fixcore.executionService.failureComponent -> fixcore.executionService.workOrderComponent "Solicita orden de trabajo"
        fixcore.executionService.workOrderComponent -> fixcore.executionService.assignmentComponent "Gestiona asignacion"
        fixcore.executionService.assignmentComponent -> fixcore.executionService.activityComponent "Habilita ejecucion"
        fixcore.executionService.activityComponent -> fixcore.executionService.monitoringComponent "Actualiza estado"
        fixcore.executionService.failureComponent -> fixcore.executionService.alertComponent "Genera alerta"
        fixcore.executionService.workOrderComponent -> fixcore.inventoryService "Solicita consumo de repuestos"
        fixcore.executionService.failureComponent -> fixcore.executionService.executionRepository "Registra falla"
        fixcore.executionService.workOrderComponent -> fixcore.executionService.executionRepository "Persiste orden de trabajo"
        fixcore.executionService.activityComponent -> fixcore.executionService.executionRepository "Registra actividad"
        fixcore.executionService.alertComponent -> whatsapp "Envia alerta"

        // operaciones internas de inventario
        fixcore.inventoryService.inventoryManagementComponent -> fixcore.inventoryService.inventoryRepository "Persiste inventario"
        fixcore.inventoryService.sparePartComponent -> fixcore.inventoryService.inventoryRepository "Persiste repuestos"
        fixcore.inventoryService.stockComponent -> fixcore.inventoryService.inventoryRepository "Consulta y actualiza stock"
        fixcore.inventoryService.movementComponent -> fixcore.inventoryService.stockComponent "Actualiza stock"
        fixcore.inventoryService.movementComponent -> fixcore.inventoryService.inventoryRepository "Registra movimiento"
        fixcore.inventoryService.stockAlertComponent -> fixcore.inventoryService.stockComponent "Verifica nivel minimo"
        fixcore.inventoryService.stockAlertComponent -> whatsapp "Envia alerta de stock"

        // operaciones para armado de reportes
        fixcore.reportingService.kpiComponent -> fixcore.reportingService.queryComponent "Obtiene datos para indicadores"
        fixcore.reportingService.dashboardComponent -> fixcore.reportingService.kpiComponent "Obtiene indicadores"
        fixcore.reportingService.reportComponent -> fixcore.reportingService.queryComponent "Obtiene datos para reportes"
        fixcore.reportingService.queryComponent -> fixcore.reportingService.reportingRepository "Consulta informacion"
        fixcore.reportingService.queryComponent -> fixcore.executionService "Consulta ejecucion y mantenimiento"
        fixcore.reportingService.queryComponent -> fixcore.assetService "Consulta activos"
        fixcore.reportingService.queryComponent -> fixcore.planningService "Consulta planificacion"
        fixcore.reportingService.queryComponent -> fixcore.inventoryService "Consulta inventario"
    }

    views {

        // vistas de cada componente
        component fixcore.webApp "ComponentesAplicacionWeb" {
            include *
            autoLayout lr
            title "Component Level Diagram - Aplicacion Web"
        }

        component fixcore.apiRest "ComponentesApiRest" {
            include *
            autoLayout lr
            title "Component Level Diagram - API REST"
        }

        component fixcore.identityService "ComponentesIdentidadAcceso" {
            include *
            autoLayout lr
            title "Component Level Diagram - Identidad y Acceso"
        }

        component fixcore.assetService "ComponentesRecursosActivos" {
            include *
            autoLayout lr
            title "Component Level Diagram - Recursos y Activos"
        }

        component fixcore.planningService "ComponentesPlanificacion" {
            include *
            autoLayout lr
            title "Component Level Diagram - Diseño y Planificacion"
        }

        component fixcore.executionService "ComponentesEjecucionMonitoreo" {
            include *
            autoLayout lr
            title "Component Level Diagram - Ejecucion y Monitoreo"
        }

        component fixcore.inventoryService "ComponentesInventarioRepuestos" {
            include *
            autoLayout lr
            title "Component Level Diagram - Inventario y Repuestos"
        }

        component fixcore.reportingService "ComponentesPanelReportes" {
            include *
            autoLayout lr
            title "Component Level Diagram - Panel y Reportes"
        }

        styles {

            element "Person" {
                background #08427b
                color #ffffff
                shape person
            }

            element "Software System" {
                background #1168bd
                color #ffffff
            }

            element "Container" {
                background #438dd5
                color #ffffff
            }

            element "Component" {
                background #85bbf0
                color #000000
            }

            relationship "Relationship" {
                color #707070
                thickness 2
            }
        }
    }
}