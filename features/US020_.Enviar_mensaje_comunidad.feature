Feature: US-020 – Enviar mensaje a comunidad
  Como miembro de la red comunitaria, quiero enviar mensajes al grupo, para coordinar actividades de monitoreo y compras.

  Scenario Outline: Escenario 1: Mensaje enviado
    Given estoy en el chat de mi red
    When escribo y pulso “Enviar”
    Then mi mensaje aparece para todos los miembros

    Examples:
      | red           | mensaje                       |
      | Red Andina    | Día de reparto el lunes      |
      | Red del Valle | Reunión mañana a las 10:00   |
      | Red Sol y Agua| Nuevo punto de muestreo hoy  |

  Scenario Outline: Escenario 2: Mensaje vacío
    Given no escribo texto
    When intento enviar
    Then el botón “Enviar” está deshabilitado
    Examples:
      | caso               |
      | Mensaje vacío        |
      | Solo espacios      |
      | Sin interacción    |