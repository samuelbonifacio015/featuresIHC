Feature: US-027 – Marcar punto de agua como favorito
  Como usuario frecuente, quiero marcar un punto de agua como favorito, para acceder rápidamente en el futuro.

  Scenario Outline: Escenario 1: Favorito guardado
    Given que el usuario está logueado
    When pulsa el icono de estrella
    Then el sistema guarda el punto como favorito

    Examples:
    | usuario   | punto_id |
    | Maria123  | PUNTO-07 |
    | Jose84    | PUNTO-15 |

  Scenario Outline: Escenario 2: Usuario no autenticado
    Given que el usuario no ha iniciado sesión
    When intenta marcar favorito
    Then el sistema muestra “Inicia sesión para usar esta función”

    Examples:
    | mensaje                                |
    | Inicia sesión para usar esta función   |