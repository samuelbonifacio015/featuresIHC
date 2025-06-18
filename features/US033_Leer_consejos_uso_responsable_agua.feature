Feature: US-033 – Leer consejos de uso responsable del agua
  Como ciudadano, quiero leer consejos básicos para cuidar el agua, para aplicar buenas prácticas en mi hogar.

  Scenario Outline: Escenario 1: Página con consejos visible
    Given que la sección está habilitada
    When el usuario navega a “Cuidado del agua”
    Then se muestran al menos 5 recomendaciones

    Examples:
    | seccion          | cantidad |
    | Cuidado del agua | 5        |

  Scenario Outline: Escenario 2: Página en construcción
    Given que aún no se publicó el contenido
    When entra a la sección
    Then el sistema muestra “Próximamente”

    Examples:
    | mensaje       |
    | Próximamente  |