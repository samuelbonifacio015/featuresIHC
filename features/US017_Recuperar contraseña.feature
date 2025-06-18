Feature: US-017 – Recuperar contraseña
  Como usuario que olvidó su contraseña, quiero solicitar un enlace de recuperación, para restablecer mi acceso.

  Scenario Outline: Escenario 1: Enlace enviado
    Given ingreso mi correo registrado
    When pulso “¿Olvidaste tu contraseña?”
    Then recibo un correo con el enlace de recuperación

    Examples:
      | correo               |
      | usuario@dominio.com  |
      | prueba@ejemplo.org   |
      | contacto@agua.net    |

  Scenario Outline: Escenario 2: Sesión ya cerrada
    Given ingreso un correo sin cuenta
    When solicito recuperación
    Then el sistema muestra “Correo no encontrado”

    Examples:
      | correo                  |
      | desconocido@dominio.com |
      | noexiste@prueba.org     |
      | nada@ninguno.net        |