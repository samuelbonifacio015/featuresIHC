Feature: US-008 – Visualizar historial de calidad
  Como usuario, quiero ver el historial de calidad de un punto de agua, para conocer su evolución en el tiempo.

  Scenario Outline: Escenario 1: Historial disponible
    Given el punto tiene registros previos
    When elijo “Ver historial”
    Then se muestra gráfico o tabla con fechas y valores

    Examples:
      | punto         |
      | Pozo Central  |
      | Manantial A   |
      | Tanque Bajo   |
  
  Scenario Outline: Escenario 2: Sin historial
    Given el punto "<punto>" nunca fue monitoreado
    When intento ver historial
    Then el sistema informa "No hay datos disponibles"

    Examples:
      | punto        |
      | Pozo Nuevo   |
      | Manantial X  |
      | Tanque Y     |