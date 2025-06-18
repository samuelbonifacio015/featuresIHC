Feature: US-019 – Unirse a red comunitaria
  Como habitante de zona rural, quiero unirme a la red local de agua, para colaborar con mis vecinos.

  Scenario Outline: Escenario 1: Unión exitosa
    Given existe una red en mi área
    When solicito unirme
    Then paso a “Mi red” y veo miembros

    Examples:
      | red            |
      | Red Andina     |
      | Red del Valle  |
      | Red Sol y Agua |

  Scenario Outline: Escenario 2: Sin red disponible
    Given no hay red creada en mi región
    When busco redes locales
    Then el sistema muestra “No hay redes disponibles”

    Examples:
      | región         |
      | Zona Norte     |
      | Zona Sur       |
      | Zona Central   |