Feature: US-029 – Editar nombre de usuario
  Como usuario registrado, quiero editar mi nombre en el perfil, para mantener mi información actualizada.

  Scenario Outline: Escenario 1: Nombre cambiado
    Given que el usuario accede a su perfil
    When edita el nombre y guarda
    Then el sistema muestra “Datos actualizados con éxito”

    Examples:
    | nuevo_nombre | mensaje                        |
    | Carla López  | Datos actualizados con éxito   |
    | DiegoR       | Datos actualizados con éxito   |


  Scenario Outline: Escenario 2: Campo vacío
    Given que deja el campo vacío
    When intenta guardar
    Then el sistema muestra “El nombre no puede estar vacío”

    Examples:
    | mensaje                          |
    | El nombre no puede estar vacío   |