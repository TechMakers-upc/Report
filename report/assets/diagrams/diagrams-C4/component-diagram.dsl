workspace "FixCore - Arquitectura de Software" "Component Level Diagrams de FixCore" {

    !identifiers hierarchical
    !impliedRelationships true

    model {

        // actores del sistema
        administradorPlanta = person "Administrador de Planta" "Gestiona plantas, activos, mantenimiento e inventario."
        tecnico = person "Técnico" "Reporta fallas, ejecuta órdenes y utiliza repuestos."
        consultorIndustrial = person "Consultor Industrial" "Coordina servicios y técnicos."

        // servicio externo
        whatsapp = softwareSystem "Servicio de Notificaciones WhatsApp" "Envía alertas y notificaciones."

        // sistema principal
        fixcore = softwareSystem "FixCore" "Plataforma SaaS para la gestión del mantenimiento industrial." {

            // base de datos centralizada
            database = container "Base de Datos Principal" "Almacena toda la información del sistema." "MySQL" "Database"

            // frontend web
            webApp = container "Aplicación Web" "Interfaz web utilizada por los usuarios." "Angular / TypeScript" {
                authComponent = component "Componente de Autenticación" "Gestiona sesión y acceso." "Angular"
                plantComponent = component "Componente de Plantas" "Gestiona plantas industriales." "Angular"
                assetComponent = component "Componente de Activos" "Gestiona máquinas y equipos." "Angular"
                maintenanceComponent = component "Componente de Mantenimiento" "Gestiona planes y órdenes." "Angular"
                inventoryComponent = component "Componente de Inventario" "Consulta repuestos y stock." "Angular"
                dashboardComponent = component "Componente de Panel y Reportes" "Presenta métricas." "Angular"
                notificationComponent = component "Componente de Notificaciones" "Presenta alertas." "Angular"
            }

            // api rest
            apiBackend = container "API REST" "Backend que centraliza toda la lógica de negocio." "Spring Boot / Java" {
                
                // controladores
                authController = component "Controlador de Autenticación" "Endpoints REST para sesión." "Spring Boot REST"
                assetController = component "Controlador de Activos" "Endpoints para plantas y máquinas." "Spring Boot REST"
                maintenanceController = component "Controlador de Mantenimiento" "Endpoints para órdenes y fallas." "Spring Boot REST"
                inventoryController = component "Controlador de Inventario" "Endpoints para stock y repuestos." "Spring Boot REST"
                reportController = component "Controlador de Reportes" "Endpoints para métricas." "Spring Boot REST"
                
                securityComponent = component "Componente de Seguridad" "Valida autenticación general." "Spring Security"
                dtoComponent = component "Componente de DTOs" "Objetos de intercambio." "Java"
                errorComponent = component "Manejador de Errores" "Centraliza respuesta de errores." "Spring Boot"

                // modulo identidad
                userManagementComponent = component "Gestión de Usuarios" "Lógica de cuentas de usuario." "Spring Service"
                authenticationComponent = component "Autenticación" "Lógica de validación." "Spring Security"
                roleComponent = component "Gestión de Roles" "Administra permisos." "Spring Service"
                sessionComponent = component "Gestión de Sesiones" "Controla sesiones activas." "Spring Service"
                userRepository = component "Repositorio de Usuarios" "Persistencia de usuarios." "Spring Data JPA"

                // modulo activos
                plantManagementComponent = component "Gestión de Plantas" "Lógica de plantas." "Spring Service"
                assetManagementComponent = component "Gestión de Activos" "Lógica de máquinas." "Spring Service"
                technicalInfoComponent = component "Información Técnica" "Fichas técnicas." "Spring Service"
                assetHistoryComponent = component "Historial de Activos" "Historial de mantenimientos." "Spring Service"
                assetRepository = component "Repositorio de Activos" "Persistencia de activos." "Spring Data JPA"

                // modulo planificacion
                planManagementComponent = component "Gestión de Planes" "Administra planes preventivos." "Spring Service"
                schedulingComponent = component "Programación" "Define fechas." "Spring Service"
                reschedulingComponent = component "Reprogramación" "Modifica fechas." "Spring Service"
                upcomingMaintenanceComponent = component "Mantenimiento Próximo" "Detecta mantenimientos." "Spring Service"
                planningRepository = component "Repositorio de Planificación" "Persistencia de planes." "Spring Data JPA"

                // modulo ejecucion
                failureComponent = component "Gestión de Fallas" "Registra fallas." "Spring Service"
                workOrderComponent = component "Gestión de Órdenes" "Lógica de OTs." "Spring Service"
                assignmentComponent = component "Asignación" "Asigna técnicos." "Spring Service"
                activityComponent = component "Registro de Actividades" "Lógica de tareas." "Spring Service"
                monitoringComponent = component "Monitoreo" "Supervisa estados." "Spring Service"
                alertComponent = component "Gestión de Alertas" "Genera alertas críticas." "Spring Service"
                executionRepository = component "Repositorio de Ejecución" "Persistencia de OTs y fallas." "Spring Data JPA"

                // modulo inventario
                inventoryManagementComponent = component "Gestión de Inventario" "Administra almacenes." "Spring Service"
                sparePartComponent = component "Gestión de Repuestos" "Catálogo de piezas." "Spring Service"
                stockComponent = component "Gestión de Stock" "Controla cantidades." "Spring Service"
                movementComponent = component "Movimientos" "Entradas y salidas." "Spring Service"
                stockAlertComponent = component "Alertas de Stock" "Niveles bajos." "Spring Service"
                inventoryRepository = component "Repositorio de Inventario" "Persistencia de stock." "Spring Data JPA"

                // modulo reportes
                kpiComponent = component "Gestión de Indicadores" "Calcula KPIs." "Spring Service"
                dashboardLogicComponent = component "Lógica de Panel" "Construye vistas." "Spring Service"
                reportGenerationComponent = component "Generación de Reportes" "Arma documentos." "Spring Service"
                queryComponent = component "Consultas" "Consolida datos." "Spring Service"
                reportingRepository = component "Repositorio de Reportes" "Lectura de métricas." "Spring Data JPA"
            }
        }

        // interacciones web
        administradorPlanta -> fixcore.webApp "Usa la aplicación web"
        tecnico -> fixcore.webApp "Usa la aplicación web"
        consultorIndustrial -> fixcore.webApp "Usa la aplicación web"

        fixcore.webApp.authComponent -> fixcore.apiBackend.authController "Petición REST"
        fixcore.webApp.plantComponent -> fixcore.apiBackend.assetController "Petición REST"
        fixcore.webApp.assetComponent -> fixcore.apiBackend.assetController "Petición REST"
        fixcore.webApp.maintenanceComponent -> fixcore.apiBackend.maintenanceController "Petición REST"
        fixcore.webApp.inventoryComponent -> fixcore.apiBackend.inventoryController "Petición REST"
        fixcore.webApp.dashboardComponent -> fixcore.apiBackend.reportController "Petición REST"
        fixcore.webApp.notificationComponent -> fixcore.apiBackend.reportController "Petición REST"

        // ruteo de controladores
        fixcore.apiBackend.authController -> fixcore.apiBackend.securityComponent "Delega validación"
        fixcore.apiBackend.authController -> fixcore.apiBackend.authenticationComponent "Inicia flujo de login"
        fixcore.apiBackend.assetController -> fixcore.apiBackend.assetManagementComponent "Gestiona máquinas"
        fixcore.apiBackend.assetController -> fixcore.apiBackend.plantManagementComponent "Gestiona plantas"
        fixcore.apiBackend.maintenanceController -> fixcore.apiBackend.workOrderComponent "Gestiona órdenes"
        fixcore.apiBackend.maintenanceController -> fixcore.apiBackend.failureComponent "Gestiona fallas"
        fixcore.apiBackend.inventoryController -> fixcore.apiBackend.stockComponent "Consulta stock"
        fixcore.apiBackend.reportController -> fixcore.apiBackend.dashboardLogicComponent "Consulta métricas"

        // logica de identidad
        fixcore.apiBackend.authenticationComponent -> fixcore.apiBackend.userManagementComponent "Consulta datos"
        fixcore.apiBackend.authenticationComponent -> fixcore.apiBackend.sessionComponent "Crea sesión"
        fixcore.apiBackend.roleComponent -> fixcore.apiBackend.userManagementComponent "Asocia permisos"
        
        // logica de planificacion
        fixcore.apiBackend.schedulingComponent -> fixcore.apiBackend.planManagementComponent "Programa mantenimiento"
        fixcore.apiBackend.reschedulingComponent -> fixcore.apiBackend.schedulingComponent "Modifica fechas"
        fixcore.apiBackend.upcomingMaintenanceComponent -> fixcore.apiBackend.workOrderComponent "Solicita OT"

        // logica de ejecucion
        fixcore.apiBackend.failureComponent -> fixcore.apiBackend.workOrderComponent "Genera OT"
        fixcore.apiBackend.workOrderComponent -> fixcore.apiBackend.assignmentComponent "Asigna personal"
        fixcore.apiBackend.assignmentComponent -> fixcore.apiBackend.activityComponent "Registra tareas"
        fixcore.apiBackend.failureComponent -> fixcore.apiBackend.alertComponent "Avisa fallas"
        fixcore.apiBackend.workOrderComponent -> fixcore.apiBackend.stockComponent "Descuenta repuestos"

        // logica de inventario
        fixcore.apiBackend.movementComponent -> fixcore.apiBackend.stockComponent "Ajusta cantidades"
        fixcore.apiBackend.stockAlertComponent -> fixcore.apiBackend.stockComponent "Revisa mínimos"
        fixcore.apiBackend.stockAlertComponent -> whatsapp "Avisa quiebre de stock"

        // logica de reportes
        fixcore.apiBackend.dashboardLogicComponent -> fixcore.apiBackend.kpiComponent "Arma gráficos"
        fixcore.apiBackend.kpiComponent -> fixcore.apiBackend.queryComponent "Solicita cálculos"
        fixcore.apiBackend.reportGenerationComponent -> fixcore.apiBackend.queryComponent "Extrae data"
        
        // alertas
        fixcore.apiBackend.alertComponent -> whatsapp "Envia alerta"

        // persistencia
        fixcore.apiBackend.userRepository -> fixcore.database "Lee/Escribe usuarios"
        fixcore.apiBackend.assetRepository -> fixcore.database "Lee/Escribe activos"
        fixcore.apiBackend.planningRepository -> fixcore.database "Lee/Escribe planes"
        fixcore.apiBackend.executionRepository -> fixcore.database "Lee/Escribe operaciones"
        fixcore.apiBackend.inventoryRepository -> fixcore.database "Lee/Escribe inventario"
        fixcore.apiBackend.reportingRepository -> fixcore.database "Lee histórico"
    }

    views {

        component fixcore.webApp "Componentes_WebApp" {
            include *
            autoLayout lr
            title "Component Level Diagram - Aplicación Web"
        }
        
        component fixcore.apiBackend "Componentes_API_REST" {
            include fixcore.apiBackend.authController fixcore.apiBackend.assetController fixcore.apiBackend.maintenanceController fixcore.apiBackend.inventoryController fixcore.apiBackend.reportController fixcore.apiBackend.securityComponent fixcore.apiBackend.dtoComponent fixcore.apiBackend.errorComponent
            autoLayout lr
            title "Component Level Diagram - API REST"
        }

        component fixcore.apiBackend "Componentes_Identidad" {
            include fixcore.apiBackend.userManagementComponent fixcore.apiBackend.authenticationComponent fixcore.apiBackend.roleComponent fixcore.apiBackend.sessionComponent fixcore.apiBackend.userRepository fixcore.database
            autoLayout lr
            title "Component Level Diagram - Identidad y Acceso"
        }

        component fixcore.apiBackend "Componentes_Activos" {
            include fixcore.apiBackend.plantManagementComponent fixcore.apiBackend.assetManagementComponent fixcore.apiBackend.technicalInfoComponent fixcore.apiBackend.assetHistoryComponent fixcore.apiBackend.assetRepository fixcore.database
            autoLayout lr
            title "Component Level Diagram - Recursos y Activos"
        }

        component fixcore.apiBackend "Componentes_Ejecucion" {
            include fixcore.apiBackend.failureComponent fixcore.apiBackend.workOrderComponent fixcore.apiBackend.assignmentComponent fixcore.apiBackend.activityComponent fixcore.apiBackend.monitoringComponent fixcore.apiBackend.alertComponent fixcore.apiBackend.executionRepository fixcore.database whatsapp
            autoLayout lr
            title "Component Level Diagram - Ejecución y Monitoreo"
        }

        component fixcore.apiBackend "Componentes_Inventario" {
            include fixcore.apiBackend.inventoryManagementComponent fixcore.apiBackend.sparePartComponent fixcore.apiBackend.stockComponent fixcore.apiBackend.movementComponent fixcore.apiBackend.stockAlertComponent fixcore.apiBackend.inventoryRepository fixcore.database whatsapp
            autoLayout lr
            title "Component Level Diagram - Inventario y Repuestos"
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
            element "Database" {
                shape Cylinder
            }
        }
    }
}