Feature: US-031 – Reportar punto sin acceso
  Como usuario, quiero reportar que un punto está cerrado o bloqueado, para evitar que otros pierdan tiempo.

  Scenario Outline: Escenario 1: Reporte enviado
    Given que el usuario indica el motivo
    When pulsa “Reportar”
    Then el sistema registra la alerta

    Examples:
    | motivo               |
    | Cerrado por obras    |
    | Punto bloqueado      |

  Scenario Outline: Escenario 2: Reporte duplicado
    Given que ese punto ya fue reportado recientemente
    When el usuario intenta reportar
    Then el sistema muestra “Este punto ya fue reportado hoy”

    Examples:
    | mensaje                             |
    | Este punto ya fue reportado hoy     |