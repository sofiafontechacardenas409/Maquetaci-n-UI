# Maquetaci-n-UI
# Mi Universo en Flutter - Mundo del Futbol

## Descripción
Aplicación desarrollada en Flutter basada en el mundo del futbol. Permite visualizar equipos, jugadores y sus detalles mediante navegación entre diferentes pantallas.

## Estructura de la Aplicación

La aplicación cuenta con cuatro pantallas principales:

- Home (pantalla principal)
- Equipos (lista de equipos)
- Jugadores (lista de jugadores)
- Detalle (información de cada elemento)

## Jerarquía de Widgets (Pantalla Home)

La pantalla Home está organizada de la siguiente manera:

- Scaffold (widget principal)
  - AppBar (barra superior con el título)
  - Body: SingleChildScrollView
    - Column
      - Image.network (imagen principal)
      - SizedBox (espaciado)
      - Text (mensaje de bienvenida)
      - SizedBox (espaciado)
      - ElevatedButton (navegación a Equipos)
      - SizedBox (espaciado)
      - ElevatedButton (navegación a Jugadores)

La Column organiza los elementos de forma vertical, mientras que SizedBox se utiliza para generar espacios entre los widgets.

## Requisitos Cumplidos

- Uso de StatelessWidget en toda la aplicación
- Implementación de Scaffold en cada pantalla
- Navegación entre pantallas con Navigator
- Uso de Column y Row para organización
- Uso de Container para estilos
- Uso de SizedBox para espaciado
- Implementación de ListView
- Uso de Stack para superposición de elementos
- Carga de imágenes desde internet
- Diseño adaptable sin errores de desbordamiento

Sofía Fontecha Cardenas
