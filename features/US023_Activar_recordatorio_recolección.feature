Feature: US-023 - Activar recordatorio de recolección
 Como usuario, quiero activar recordatorios de recolección de agua, para no olvidar cuándo ir por ella.

Scenario Outline: Escenario 1: Recordatorio creado
  Given que el usuario configura una hora "<hora>" y punto "<punto_id>"
  When guarda la configuración
  Then el sistema programa la notificación

Examples:
  | hora   | punto_id |
  | 08:00  | PUNTO-03 |
  | 18:30  | PUNTO-05 |

Scenario Outline: Escenario 2: Hora inválida
  Given que se ingresa una hora "<hora>" anterior a la actual "<hora_actual>"
  When el usuario intenta guardar
  Then el sistema muestra “<mensaje>”

Examples:
  | hora  | hora_actual | mensaje                     |
  | 07:00 | 09:30       | La hora debe ser futura     |
  | 12:00 | 13:00       | La hora debe ser futura     |
