Feature: US-001: Registro exitoso 
    Como residente de una zona urbana/semiurbana sin acceso constante a agua, quiero registrarme usando mi correo electrónico y celular para poder acceder a las funcionalidades de la plataforma.

  Scenario Outline: Escenario 1: Registro exitoso
    Given que el usuario es nuevo en la plataforma
    When el usuario introduce su correo electrónico y número de celular en el formulario de registro
    Then el sistema procesa la información y envía un correo de confirmación de registro al usuario
    And Y el usuario es redirigido a la página de inicio de sesión luego de completar el registro

    Examples:
      | correo_electronico   | numero_de_celular |
      | usuario@dominio.com  | 9876543210        |
      | usuario2@dominio.com | 9988776655        |
      | usuario3@dominio.com | 6677889900        |

  Scenario Outline: Escenario 2: Registro fallido 
    Given que el usuario completa los campos de formulación de registro o ingresa algún carácter erróneo
    When el usuario intenta registrarse con dicha información errónea o faltante
    Then el sistema muestra un mensaje de error indicando qué campos deben completarse

    Examples:
      | correo_electronico  | numero_de_celular |
      | usuario@dominio.com |                   |
      |                     | 9876543210        |