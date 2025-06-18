Feature: US-005 – Reportar nueva fuente de agua
  Como usuario de comunidad rural, quiero reportar una nueva fuente de agua que conozco, para que otros vecinos la puedan ubicar y usar.

  Scenario Outline: Escenario 1: Reporte exitoso
    Given el usuario está autenticado
    When completa el formulario con datos de la fuente y pulsa “Enviar”
    Then el sistema guarda la fuente y la muestra en el mapa tras revisión

    Examples:
      | nombre        | coord               |
      | Pozo Central  | -12.0464, -77.0428  |
      | Manantial Alto| -12.0500, -77.0300  |
      | Tanque Bajo   | -12.0400, -77.0500  |

  Scenario Outline: Escenario 2: Datos inválidos
    Given el usuario ingresa coordenadas erróneas
    When intenta enviar el reporte
    Then el sistema marca el campo de coordenadas como inválido

    Examples:
      | coord            |
      | abc, xyz         |
      | 1000, 2000       |
      | -200.00, 95.00   |