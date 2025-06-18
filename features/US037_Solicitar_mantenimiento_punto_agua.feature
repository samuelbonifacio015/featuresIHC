Feature: US-037 – Solicitar mantenimiento para un punto de agua
  Como usuario, quiero solicitar una revisión o mantenimiento para un punto, para que se garantice su buen estado.

  Scenario Outline: Escenario 1: Solicitud enviada exitosamente
    Given que el usuario ha seleccionado un punto
    When llena el formulario de solicitud 
    Then el sistema registra la solicitud correctamente

    Examples:
    | punto_id | motivo               |
    | PUNTO-12 | Grifo roto           |
    | PUNTO-08 | Agua turbia          |

  Scenario Outline: Escenario 2: Punto marcado como pendiente revisión
    Given que hay solicitudes activas
    When otros usuarios ven el punto
    Then aparece un estado “En revisión”

    Examples:
    | punto_id | estado      |
    | PUNTO-12 | En revisión |