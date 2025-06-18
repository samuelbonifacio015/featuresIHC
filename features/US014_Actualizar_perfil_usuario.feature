Feature: US-014 – Actualizar perfil de usuario
  Como usuario, quiero editar mis datos personales (nombre, teléfono), para mantener mi información al día.

  Scenario Outline: Escenario 1: Edición válida
    Given estoy en “Perfil”
    When modifico mi teléfono y guardo
    Then el sistema confirma “Perfil actualizado”

    Examples:
      | telefono      |
      | 9876543210    |
      | 1234567890    |
      | 5551234567    |

  Scenario Outline: Escenario 2: Formato inválido
    Given ingreso un teléfono con letras
   When intento guardar
   Then el sistema muestra “Formato de teléfono inválido”
    Examples:
      | telefono    |
      | abc123def   |
      | 123-456-xyz |
      |  phone123   |