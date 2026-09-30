workspace "FixCore - Software Architecture" "Software Architecture Context Level Diagram for FixCore" {

    model {

        // actores del sistema
        plantManager = person "Plant Manager" "Manages industrial plants, assets, maintenance activities and work orders."
        technician = person "Technician" "Reports failures, executes work orders, consults machine information and records maintenance activities."
        industrialConsultant = person "Industrial Consultant" "Manages maintenance services and coordinates technicians across different industrial clients and plants."

        // api externa para avisos
        whatsapp = softwareSystem "WhatsApp Notification Service" "External service used to send important maintenance alerts and notifications."

        // nuestra solucion
        fixcore = softwareSystem "FixCore" "Web SaaS platform for industrial maintenance management. Centralizes plants, assets, preventive maintenance, failures, work orders, spare parts, notifications and maintenance reports."

        // relaciones de usuarios con fixcore
        plantManager -> fixcore "Manages plants, assets, maintenance and work orders"
        technician -> fixcore "Reports failures, executes work orders and records maintenance activities"
        industrialConsultant -> fixcore "Coordinates maintenance services and technicians across plants and clients"

        // envio de alertas
        fixcore -> whatsapp "Sends maintenance alerts and important notifications"

    }

    views {

        // diagrama de contexto
        systemContext fixcore "FixCoreSystemContext" {
            include plantManager
            include technician
            include industrialConsultant
            include fixcore
            include whatsapp

            autolayout lr
        }

        theme default

    }

}