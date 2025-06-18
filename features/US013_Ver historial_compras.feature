Feature: US-013 – Ver historial de compras
  Como usuario, quiero consultar mis compras de agua anteriores, para revisar fechas y montos.

  Scenario Outline: Escenario 1: Historial con datos
    Given he realizado compras previas
    When accedo a “Mis compras”
    Then se listan todas con fecha y monto

    Examples:
     | count |
     | 2     |
     | 5     |
     | 10    |

  Scenario Outline: Escenario 2: Pago rechazado
    Given nunca compré en la plataforma
    When reviso “Mis compras”
    Then el sistema indica “No hay compras registradas”
    Examples:
      | motivo                 |
      | Primera vez            |
      | Cuenta nueva           |
      | Sin actividad reciente |