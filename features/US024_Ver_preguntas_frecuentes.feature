Feature: US-024 – Ver preguntas frecuentes(FAQ)
  Como usuario nuevo, quiero acceder a una sección de preguntas frecuentes, para entender cómo usar AguaConnect.

  Scenario Outline: Escenario 1: FAQ cargada correctamente
    Given que el usuario abre la sección “Ayuda”
    When la página carga
    Then se muestra un listado de preguntas con sus respuestas

    Examples:
    | seccion  |
    | Ayuda    |

  Scenario Outline: Escenario 2: Sin conexión
    Given que no hay conexión a internet
    When intenta acceder a la sección
    Then el sistema muestra “Conexión no disponible”

    Examples:
    | seccion | mensaje                   |
    | Ayuda   | Conexión no disponible    |
