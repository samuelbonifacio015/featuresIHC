Feature: US-032 – Ver lista informativa de puntos de agua
  Como usuario, quiero ver una lista con puntos de agua previamente definidos,para identificar dónde podría abastecerme.

  Scenario Outline: Escenario 1: Lista cargada
    Given que la página se carga correctamente
    When el usuario entra a la sección “Puntos de Agua”
    Then se muestra una tabla con nombre, ubicación y horario

    Examples:
    | seccion        |
    | Puntos de Agua |

  Scenario Outline: Escenario 2: Sin datos disponibles
    Given que la lista no ha sido agregada aún al HTML
    When el usuario entra a la sección
    Then se muestra “Información próximamente disponible”

    Examples:
    | mensaje                             |
    | Información próximamente disponible |