Feature: US-009 – Crear alerta de contaminación
  Como usuario responsable, quiero recibir alertas cuando un punto supere umbrales de contaminación, para evitar su uso.

  Scenario Outline: Escenario 1: Alerta generada automáticamente
    Given un registro de calidad supera el umbral crítico
    When los datos se procesan
    Then todos los suscriptores reciben notificación

    Examples:
      | punto         |
      | Pozo Central  |
      | Manantial A   |
      | Tanque Bajo   |
  
  Scenario Outline: Escenario 2: Configuración manual de alerta
    Given quiero un umbral distinto al por defecto
    When configuro y guardo mi preferencia
    Then recibo notificaciones según mi umbral personalizado

    Examples:
      | punto         | umbral |
      | Pozo Central  | 5.5    |
      | Manantial A   | 6.0    |
      | Tanque Bajo   | 4.8    |