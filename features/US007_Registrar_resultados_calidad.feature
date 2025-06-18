Feature: US-007 – Registrar resultados de calidad
  Como técnico de calidad, quiero ingresar resultados de las pruebas de agua, para mantener el historial de pureza actualizado.

  Scenario Outline: Escenario 1: Registro válido
    Given estoy en la ruta de monitoreo
    When ingreso valores de pH y turbidez y guardo
    Then se añade un registro con fecha y punto de muestreo

    Examples:
      | ruta           | ph  | turbidez |
      | Pozo Central   | 7.2 | 1.5      |
      | Manantial Alto | 6.8 | 0.9      |
      | Tanque Bajo    | 7.0 | 1.1      |

  Scenario Outline: Escenario 2: Valores fuera de rango
    Given ingreso un valor de pH > 14
    When intento guardar
    Then el sistema rechaza con mensaje “Valor fuera de rango aceptable”

    Examples:
      | ph  |
      | 14.5|
      | -1  |
      | 20  |