Feature: US-041 – Ver estado de solicitudes enviadas
  Como usuario, quiero ver el estado de las solicitudes de soporte que he enviado, para saber si están siendo atendidas y en qué etapa se encuentran.

  Scenario Outline: Escenario 1: Visualización de estado en progreso
    Given que el usuario ha enviado una solicitud
    When accede al historial de solicitudes
    Then el sistema muestra el estado “En revisión” o “Pendiente”

    Examples:
    | solicitud_id | estado      |
    | SOL-001      | En revisión |
    | SOL-002      | Pendiente   |

  Scenario Outline: Escenario 2: Solicitud resuelta
    Given que el equipo ha atendido la solicitud 
    When el usuario consulta su estado
    Then el sistema muestra “Resuelto” con la fecha y detalles de resolución

    Examples:
    | solicitud_id | fecha       |
    | SOL-001      | 2025-06-12  |