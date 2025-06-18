Feature: US-030 – Dejar comentario en un punto de agua
  Como usuario, quiero dejar un comentario sobre un punto de agua, para informar a otros sobre mi experiencia.

  Scenario Outline: Escenario 1: Comentario enviado
    Given que el usuario está autenticado
    When escribe el mensaje y lo envía
    Then el sistema muestra “Comentario publicado”

    Examples:
    | comentario                          |
    | El agua estaba clara y accesible   |
    | Sin fila, muy buen punto           |


  Scenario Outline: Escenario 2: Campo vacío
    Given que deja el campo vacío
    When intenta guardar
    Then el sistema muestra “Escribe un comentario antes de enviar”

    Examples:
    | mensaje                          |
    | Escribe un comentario antes de enviar  |