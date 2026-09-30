workspace "FixCore - Software Architecture" "Diagrama de Contenedores para FixCore" {

    model {

        // actores del sistema
        plantManager = person "Administrador de Planta" 
        technician = person "Técnico" 
        industrialConsultant = person "Consultor Industrial" 
        // servicio externo de alertas
        whatsapp = softwareSystem "Servicio de Notificaciones WhatsApp" "Servicio externo utilizado para enviar alertas y notificaciones importantes."

        // sistema fixcore
        fixcore = softwareSystem "FixCore" "Sistema integral de gestión de mantenimiento industrial." {

            // frontend y puerta de entrada
            webApp = container "Aplicación Web" "Interfaz gráfica de usuario para Administrador de Planta, Técnico y Consultor Industrial." "" "Web Browser"
            apiGateway = container "API REST" "Punto de entrada único al backend de la aplicación para gestionar solicitudes y enrutamiento."

            // microservicios
            identityService = container "Servicio de Identidad y Acceso" "Gestiona autenticación, usuarios, roles y permisos de acceso."
            reportingService = container "Servicio de Panel y Reportes" "Procesa y consolida métricas de mantenimiento, reportes y estados."
            planningService = container "Servicio de Diseño y Planificación" "Gestiona planes de mantenimiento preventivo, programación y plantillas estándar."
            executionService = container "Servicio de Ejecución y Monitoreo" "Gestiona fallas, reportes en tiempo real, seguimiento de órdenes y control de actividades."
            resourceService = container "Servicio de Recursos y Activos" "Gestiona plantas, maquinarias, equipos y líneas de activos con su documentación técnica."
            inventoryService = container "Servicio de Inventario y Repuestos" "Controla stock, piezas de repuesto y movimientos de inventario."

            // bases de datos
            identityDb = container "Base de Datos de Identidad" "Almacena usuarios, roles y permisos." "" "Database"
            reportingDb = container "Base de Datos de Reportes" "Almacena datos históricos para paneles, métricas y reportes." "" "Database"
            planningDb = container "Base de Datos de Planificación" "Almacena planes y programación de mantenimiento." "" "Database"
            executionDb = container "Base de Datos de Ejecución" "Almacena fallas, órdenes de trabajo y estado de intervenciones." "" "Database"
            resourceDb = container "Base de Datos de Activos" "Almacena plantas, maquinaria y datos de activos." "" "Database"
            inventoryDb = container "Base de Datos de Inventario" "Almacena inventario, repuestos, stock y movimientos de almacén." "" "Database"

        }

        // interacciones de usuarios con la app web
        plantManager -> webApp "Utiliza la aplicación web"
        technician -> webApp "Utiliza la aplicación web"
        industrialConsultant -> webApp "Utiliza la aplicación web"

        // conexion web a api rest
        webApp -> apiGateway "Envía peticiones HTTP"

        // ruteo desde la api rest a cada microservicio
        apiGateway -> identityService "Enruta solicitudes de usuarios y autenticación"
        apiGateway -> reportingService "Enruta solicitudes de panel y reportes"
        apiGateway -> planningService "Enruta solicitudes de planes de mantenimiento"
        apiGateway -> executionService "Enruta solicitudes de ejecución de órdenes y fallas"
        apiGateway -> resourceService "Enruta solicitudes de activos y plantas"
        apiGateway -> inventoryService "Enruta solicitudes de inventario y repuestos"

        // persistencia en base de datos de cada servicio
        identityService -> identityDb "Lee y escribe datos de usuarios"
        reportingService -> reportingDb "Lee y escribe métricas y reportes"
        planningService -> planningDb "Lee y escribe planes de mantenimiento"
        executionService -> executionDb "Lee y escribe fallas y órdenes"
        resourceService -> resourceDb "Lee y escribe información técnica de activos"
        inventoryService -> inventoryDb "Lee y escribe existencias y movimientos"

        // interacciones entre microservicios
        planningService -> resourceService "Consulta activos para asociar planes"
        executionService -> resourceService "Consulta información de activos"
        executionService -> inventoryService "Solicita piezas y repuestos"
        executionService -> identityService "Valida credenciales y permisos"
        reportingService -> identityService "Consulta usuarios y roles"
        reportingService -> planningService "Consulta planes y programación"
        reportingService -> executionService "Consulta órdenes y actividades"
        reportingService -> inventoryService "Consulta estado de repuestos"

        // notificaciones externas
        executionService -> whatsapp "Envía notificaciones y alertas críticas"

    }

    views {

        container fixcore "Containers" {
            include *
            autolayout lr
        }

        styles {
            element "Database" {
                shape Cylinder
            }
            element "Web Browser" {
                shape WebBrowser
            }
        }

        theme default

    }

}