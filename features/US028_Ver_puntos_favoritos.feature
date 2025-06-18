Feature: US-028 – Ver mis puntos favoritos
  Como usuario, quiero ver todos mis puntos de agua favoritos, para elegir más fácilmente cuál visitar.

  Scenario Outline: Escenario 1: Favoritos mostrados
    Given que el usuario tiene puntos guardados
    When accede a “Mis favoritos”
    Then el sistema muestra la lista completa

    Examples:
    | seccion       |
    | Mis favoritos |

  Scenario Outline: Escenario 2: Sin favoritos aún
    Given que no ha marcado ninguno
    When entra a esa sección
    Then el sistema muestra “Aún no tienes puntos guardados”

    Examples:
    | mensaje                            |
    | Aún no tienes puntos guardados     |