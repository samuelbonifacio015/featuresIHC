Feature: US-038 – Recibir notificaciones por correo
  Como usuario, quiero recibir notificaciones importantes a mi correo electrónico, para estar al tanto de novedades sin necesidad de ingresar a la aplicación.

  Scenario Outline: Escenario 1: Activación
    Given que el usuario está autenticado
    When selecciona la opción de “enviar por correo”
    Then puede enviar notificaciones por correo

    Examples:
    | usuario  |
    | Ana25    |
    | Juan_R   |

  Scenario Outline: Escenario 2: Envío
    Given que la opción está activada
    When se envía una notificación al correo 
    Then el usuario recibe una notificación al correo con alertas y recomendaciones.

    Examples:
    | tipo             |
    | Corte de agua    |
    | Nuevo punto cerca |