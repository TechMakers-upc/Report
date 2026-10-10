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

            // landing page para captar clientes
            landingPage = container "Landing Page" "Sitio web estático para presentar el producto." "HTML5, CSS3, JavaScript" "Web Browser"

            // frontend web de la plataforma
            webApp = container "Web Application" "Interfaz gráfica de usuario para los 3 segmentos." "Angular, TypeScript, Angular Material" "Web Browser"
            
            // api backend
            apiBackend = container "RESTful API" "Backend que contiene toda la lógica del negocio." "Java, Spring Boot, Spring Data JPA"

            // base de datos centralizada
            database = container "Base de Datos" "Almacena toda la información del sistema de forma centralizada." "MySQL" "Database"

        }

        // visitantes entrando al landing page
        plantManager -> landingPage "Visita para conocer FixCore"
        technician -> landingPage "Visita para conocer FixCore"
        industrialConsultant -> landingPage "Visita para conocer FixCore"

        // redireccion del landing a la app web
        landingPage -> webApp "Redirige mediante los botones (CTA)"

        // uso de la app web
        plantManager -> webApp "Utiliza la aplicación web"
        technician -> webApp "Utiliza la aplicación web"
        industrialConsultant -> webApp "Utiliza la aplicación web"

        // conexion web a api rest
        webApp -> apiBackend "Envía peticiones HTTP/REST"

        // persistencia y notificaciones del backend
        apiBackend -> database "Lee y escribe datos"
        apiBackend -> whatsapp "Envía alertas por WhatsApp"

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