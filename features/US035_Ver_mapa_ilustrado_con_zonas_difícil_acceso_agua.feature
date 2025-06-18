Feature: US-035 – Ver mapa ilustrado con zonas de difícil acceso al agua
  Como usuario, quiero ver un mapa ilustrado con zonas que tienen difícil acceso al agua, para visualizar el problema 

  Scenario Outline: Escenario 1: Mapa visible correctamente
    Given que la imagen del mapa está cargada
    When el usuario entra a la sección
    Then se muestra un mapa coloreado con leyenda simple

    Examples:
    | seccion         |
    | Zonas críticas  |

  Scenario Outline: Escenario 2: Usuario en celular
    Given que el usuario usa un móvil
    When accede al mapa
    Then el sistema adapta el mapa al ancho de pantalla

    Examples:
    | dispositivo |
    | móvil       |