Feature: US-025 – Contactar al soporte
  Como usuario, quiero poder contactar al equipo de soporte desde un formulario, para resolver dudas o reportar problemas.

  Scenario Outline: Escenario 1: Mensaje enviado con éxito
    Given que el usuario completa los campos
    When pulsa “Enviar mensaje”
    Then el sistema confirma con “Gracias por contactarnos”

    Examples:
    | nombre     | email              | mensaje                   |
    | Juan Pérez | juan@mail.com      | Tengo dudas sobre el mapa |
    | Ana Ruiz   | ana@example.com    | No puedo marcar favoritos |

  Scenario Outline: Escenario 2: Campos incompletos
    Given que el usuario deja campos vacíos
    When intenta enviar
    Then el sistema muestra “Por favor completa todos los campos”

    Examples:
    | nombre | email        | mensaje |
    |        | user@mail.com| Hola    |
    | Laura  |              |         |