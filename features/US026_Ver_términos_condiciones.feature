Feature: US-026 – Ver términos y condiciones
  Como usuario, quiero poder ver los términos y condiciones de uso, para saber cómo se usará mi información.

  Scenario Outline: Escenario 1: Documento visible
    Given que el usuario entra a la sección “<Términos>”
    When hace clic en el enlace
    Then se muestra el texto completo del documento

    Examples:
    | seccion  |
    | Términos |

  Scenario Outline: Escenario 2: Error de carga
    Given que el archivo no se encuentra disponible
    When el usuario intenta abrirlo
    Then el sistema muestra “Términos no disponibles por el momento”

    Examples:
    | origen       | mensaje                                 |
    | sección web  | Términos no disponibles por el momento  |