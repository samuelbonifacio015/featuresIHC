Feature: US-039 – Agregar método de pago
  Como usuario,  quiero poder registrar una tarjeta de crédito o débito en mi cuenta,  para facilitar futuros pagos o suscripciones

  Scenario Outline: Escenario 1: Tarjeta agregada exitosamente 
    Given que el usuario ingrese datos válidos de su tarjeta 
    When pulsa “Guardar método de pago”
    Then el sistema almacena el método y muestra el mensaje “Método de pago agregado con éxito”.

    Examples:
    | tarjeta             | mensaje                           |
    | 4111 1111 1111 1111 | Método de pago agregado con éxito |
    | 5500 0000 0000 0004 | Método de pago agregado con éxito |

  Scenario Outline: Escenario 2: Datos invalidos
    Given que el usuario ingresa un número de tarjeta incorrecto
    When pulsa “Guardar método de pago”
    Then el sistema muestra un mensaje de error indicando “Número de tarjeta no válido”.

    Examples:
    | tarjeta           | mensaje                     |
    | 1234 5678 0000 0000 | Número de tarjeta no válido |