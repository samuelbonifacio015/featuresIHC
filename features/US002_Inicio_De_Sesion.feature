Feature: US-002 – Inicio de sesión
  Como usuario registrado,quiero iniciar sesión con mi correo y contraseña, para acceder a mi cuenta y a los servicios de AguaConnect.

  Scenario Outline: Escenario 1: Credenciales válidas
    Given el usuario tiene cuenta activa
    When introduce correo "<correo>" y contraseña "<contraseña>" correctos y pulsa "Entrar"
    Then el sistema lo autentica y muestra su dashboard

    Examples:
      | correo               | contraseña      |
      | usuario@dominio.com  | Contraseña1234  |
      | usuario@dominio.com  | pass1234        |
      | usuario2@dominio.com | pass5678        |


  Scenario Outline: Escenario 2: Credenciales inválidas
    Given el usuario introduce contraseña "<contraseña>" o correo "<correo>" incorrecto
    When pulsa "Entrar"
    Then el sistema muestra un mensaje "Correo o contraseña incorrectos"

    Examples:
      | correo               | contraseña    |
      | usuario@dominio.com  | passErroneo   |
      | usuario@dominio.com  | wrongPassword |
