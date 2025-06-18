Feature: US-021 – Ver niveles de cisternas comunitarias
  Como usuario, quiero visualizar el nivel de llenado de una cisterna comunitaria, para decidir cuándo recoger agua.

  Scenario Outline: Escenario 1: Nivel visible
    Given que el usuario accede al mapa
    When selecciona una cisterna habilitada en "<ubicación>"
    Then el sistema muestra el porcentaje de llenado actual "<nivel>%"

    Examples:
      | ubicación      | nivel |
      | C. Central     | 75    |
      | Barrio Norte   | 62    |
      | Villa Esperanza| 90    |

  Scenario Outline: Escenario 2: Sensor no disponible
    Given que el punto "<nombre>" no tiene sensor conectado
    When el usuario intenta ver el nivel
    Then el sistema muestra el mensaje “Datos no disponibles por falta de sensor”

    Examples:
      | nombre          |
      | Cisterna Sur    |
      | Pozo sin sensor |
      | C. Desactivada  |