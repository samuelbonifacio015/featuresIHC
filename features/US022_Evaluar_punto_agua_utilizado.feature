Feature: US-022 – Evaluar punto de agua utilizado
  Como usuario, quiero calificar un punto de agua después de usarlo, para ayudar a otros con mi experiencia.

  Scenario Outline: Escenario 1: Calificación enviada
    Given que el usuario accede al perfil de "<punto>"
    When selecciona una puntuación de "<puntuación>" y escribe "<comentario>"
    Then el sistema guarda la evaluación

    Examples:
      | punto             | puntuación | comentario               |
      | Pozo San Luis     | 4          | Muy limpio y rápido      |
      | Tanque Los Olivos | 5          | Excelente servicio       |
      | Fuente Central    | 3          | Tiempos de espera largos |

  Scenario Outline: Escenario 2: Comentario vacío
    Given que el usuario selecciona una puntuación de "<puntuación>" sin escribir comentario
    When intenta enviar la calificación
    Then el sistema solicita que se agregue texto

    Examples:
      | puntuación |
      | 3          |
      | 4          |
      | 5          |
