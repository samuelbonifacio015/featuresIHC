Feature: US-040 – Recibir notificaciones push en la app
  Como usuario, quiero recibir notificaciones push en mi dispositivo móvil, para mantenerte informado en tiempo real sobre eventos relevantes o mensajes importantes.

  Scenario Outline: Escenario 1: Notificación push recibida correctamente
    Given que el usuario tiene las notificaciones activadas en la app
    When el sistema envía una alerta
    Then el usuario la recibe como notificación push en su dispositivo móvil.

    Examples:
    | alerta                 |
    | Agua no disponible     |
    | Punto nuevo cercano    |

  Scenario Outline: Escenario 2: Notificaciones desactivadas
    Given que el usuario ha desactivado las notificaciones desde la configuración del teléfono
    When el sistema envía una alerta
    Then el usuario no recibe la notificación push.

    Examples:
    | origen                     |
    | configuración del teléfono |