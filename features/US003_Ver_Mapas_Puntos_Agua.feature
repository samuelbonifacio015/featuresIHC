Feature: US-003 – Ver mapa de puntos de agua 
  Como usuario de la plataforma, quiero visualizar en un mapa los puntos de agua comunitarios, para identificar fuentes cercanas.

  Scenario Outline: Escenario 1: Mapa cargado correctamente
   Given el usuario está autenticado
   When accede a la sección "Mapa"
   Then el sistema muestra <markers> puntos de agua con marcadores

   Examples:
    | markers |
    | 3       |
    | 7       |
    | 12      |

  Scenario Outline: Escenario 2: Error en carga de mapa
   Given hay fallo en la conexión al servicio de mapas (<error_tipo>)
   When el usuario abre la sección "Mapa"
   Then el sistema muestra un mensaje "No se pudo cargar el mapa"

   Examples:
    | error_tipo     |
    | timeout        |
    | servicio caído |
    | respuesta 500  |
