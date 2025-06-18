Feature: US-010 – Gestionar preferencias de notificación
  Como usuario, quiero definir cómo y cuándo recibir notificaciones, para no saturarme con alertas.

  Scenario Outline: Escenario 1: Activar notificaciones push
    Given estoy en “Perfil > Notificaciones”
    When habilito “Push” y guardo
    Then recibo notificaciones en mi dispositivo

    Examples:
      | dispositivo      |
      | iPhone           |
      | Android Tablet   |
      | Desktop Browser  |
  
  Scenario Outline: Escenario 2: Desactivar correo
    Given no deseo más emails
    When desactivo “Email” y confirmo
    Then el sistema deja de enviarme correos

    Examples:
      | motivo                |
      | Saturación de emails  |
      | Cambio de preferencia |
      | Prueba temporal       |