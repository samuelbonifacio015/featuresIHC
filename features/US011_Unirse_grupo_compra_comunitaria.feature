Feature: US-011 – Unirse a grupo de compra comunitaria
  Como familia en situación de pobreza, quiero unirme a compras colaborativas de agua, para reducir el costo por litro.

  Scenario Outline: Escenario 1: Unión exitosa
    Given hay un grupo con cupo disponible
    When solicito unirme y confirmo
    Then aparezco como miembro del grupo

    Examples:
      | grupo         |
      | Grupo A       |
      | Grupo B       |
      | Grupo Solidario|
    
  Scenario Outline: Escenario 2: Grupo lleno
    Given el grupo alcanzó su número máximo
    When intento unirme
    Then el sistema muestra “Grupo sin cupo”

    Examples:
      | grupo        |
      | Grupo A      |
      | Grupo B      |
      | Grupo Solidario|