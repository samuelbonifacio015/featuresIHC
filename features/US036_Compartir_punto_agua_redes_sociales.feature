Feature: US-036 – Compartir punto de agua en redes sociales
  Como usuario, quiero compartir un punto de agua confiable en redes sociales, para que más personas puedan conocerlo y acceder a él.

  Scenario Outline: Escenario 1: Opción visible en el punto de agua
    Given que el usuario visualiza un punto de agua
    When presiona el botón “Compartir”
    Then se despliega un con opciones de redes sociales disponibles.

    Examples:
    | punto_id |
    | PUNTO-19 |
    | PUNTO-24 |

  Scenario Outline: Escenario 2: Compartido exitosamente
    Given qué elige una red social
    When confirma su acción
    Then se muestra un mensaje compartido exitosamente.

    Examples:
    | red      | mensaje                  |
    | WhatsApp | Compartido exitosamente  |
    | Twitter  | Compartido exitosamente  |