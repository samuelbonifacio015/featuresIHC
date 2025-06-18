Feature: US-034 – Ver sección "Quiénes somos"
  Como visitante, quiero leer quiénes desarrollaron la plataforma, para conocer el propósito del proyecto.

  Scenario Outline: Escenario 1: Sección visible
    Given que el contenido fue agregado al HTML
    When el usuario entra a “Quiénes somos”
    Then se muestra una breve descripción del equipo

    Examples:
    | seccion        |
    | Quiénes somos  |

  Scenario Outline: Escenario 2: Sección no habilitada
    Given que no se creó aún
    When se intenta acceder
    Then el sistema muestra “Contenido en construcción”

    Examples:
    | mensaje                 |
    | Contenido en construcción |