Feature: US-006 – Programar monitor de calidad
  Como líder comunitario, quiero configurar rutas de monitoreo de calidad de agua, para asegurar que se realicen periódicamente.

  Scenario Outline: Escenario 1: Ruta programada
    Given existen puntos de agua en la base de datos
    When selecciono puntos y horario, y guardo la ruta
    Then la ruta aparece en mi calendario de monitoreos

    Examples:
      | puntos       | horario    |
      | Pozo Central | 08:00      |
      | Manantial A  | 14:30      |
      | Tanque B     | 10:15      |

  Scenario Outline: Escenario 2: Horario inválido
    Given introduzco una hora en formato incorrecto
    When guardo la configuración
    Then el sistema muestra “Formato de hora inválido”

    Examples:
      | horario   |
      | 25:00     |
      | 8am       |
      | 99:99     |