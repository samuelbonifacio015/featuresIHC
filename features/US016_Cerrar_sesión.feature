Feature: US-016 – Cerrar sesión
  Como usuario, quiero cerrar mi sesión activa, para proteger mi cuenta si dejo mi dispositivo.

  Scenario Outline: Escenario 1: Logout exitoso
    Given estoy autenticado
    When pulso “Cerrar sesión”
    Then vuelvo a la pantalla de login

    Examples:
      | dispositivo    |
      | Laptop         |
      | Móvil          |
      | Tablet         |

  Scenario Outline: Escenario 2: Sesión ya cerrada
    Given token expiró
    When intento acceder a una página interna
    Then soy redirigido al login automáticamente

    Examples:
      | intento_en     |
      | Dashboard      |
      | Perfil         |
      | Mapa           |