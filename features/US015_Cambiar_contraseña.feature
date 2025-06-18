Feature: US-015 – Cambiar contraseña
  Como usuario, quiero cambiar mi contraseña actual, para mejorar la seguridad de mi cuenta.

  Scenario Outline: Escenario 1: Cambio exitoso
    Given ingreso contraseña <actual> y nueva válida
    When confirmo el cambio
    Then recibo confirmación “Contraseña actualizada”

    Examples:
      | actual        | nueva           |
      | oldPass123    | NewPass456!     |
      | MiClave2024   | Segura!789      |
      | AguaConnect1  | AguaConnect2!   |

  Scenario Outline: Escenario 2: Contraseña actual incorrecta
    Given mi contraseña actual es errónea "<actual>"
    When intento cambiarla
    Then el sistema muestra "Contraseña actual no coincide"

    Examples:
      | actual        |
      | wrongPass     |
      | 123456        |
      | password_old  |  