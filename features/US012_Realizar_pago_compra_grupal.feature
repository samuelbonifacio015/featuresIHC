Feature: US-012 – Realizar pago de compra grupal
  Como miembro de compra comunitaria, quiero pagar mi parte en línea, para completar la solicitud de agua.

  Scenario Outline: Escenario 1: Pago exitoso
    Given tengo fondos suficientes
    When ingreso datos de tarjeta y confirmo el pago
    Then recibo comprobante y el grupo avanza en compra

    Examples:
      | metodo        | tarjeta          |
      | Visa          | 4111 1111 1111   |
      | MasterCard    | 5500 0000 0000   |
      | Amex          | 3400 0000 0000   |
    
  Scenario Outline: Escenario 2: Pago rechazado
    Given la tarjeta es rechazada
    When intento pagar
    Then el sistema muestra “Pago rechazado”
    Examples:
      | tarjeta        |
      | 4111 1111 1111 |
      | 5500 0000 0000 |
      | 3400 0000 0000 |