Feature: US-018 – Enviar feedback
  Como usuario de la plataforma, quiero enviar comentarios o sugerencias, para ayudar a mejorar AguaConnect.

  Scenario Outline: Escenario 1: Feedback enviado
    Given estoy en “Ayuda y feedback”
    When completo el formulario y envío
    Then recibo mensaje “Gracias por tu opinión”

    Examples:
      | feedback                            |
      | Excelente servicio                  |
      | Falta mejorar la carga de mapas     |
      | Añadir notificaciones por SMS       |

  Scenario Outline: Escenario 2: Feedback vacío
    Given no escribo ningún comentario
    When intento enviar
    Then el sistema me pide “Describe tu sugerencia”

    Examples:
      | caso               |
      | Texto vacío        |
      | Solo espacios      |
      | Sin interacción    |