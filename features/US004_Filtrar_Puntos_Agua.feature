Feature: US-004 – Filtrar puntos de agua
  Como usuario,quiero filtrar los puntos de agua por tipo (pozo, manantial, tanque), para encontrar la fuente que más me convenga.

  Scenario Outline: Escenario 1: Filtro aplicado
    Given el mapa está visible
    When selecciono “Manantiales” en el <filtro>
    Then solo se muestran marcadores de manantiales

    Examples:
      | correo               | contraseña      |
      | usuario@dominio.com  | Contraseña1234  |
      | usuario@dominio.com  | pass1234        |
      | usuario2@dominio.com | pass5678        |


  Scenario Outline: Escenario 2: Sin resultados
    Given no hay fuentes del tipo seleccionado cerca
    When aplico el <filtro>
    Then el sistema muestra “No hay resultados para este <filtro>”

    Examples:
      | correo               | contraseña    |
      | usuario@dominio.com  | passErroneo   |
      | usuario@dominio.com  | wrongPassword |
