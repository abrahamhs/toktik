# TokTik

TokTik es una aplicación Flutter que imita la funcionalidad de una popular plataforma de compartición de videos cortos. Este proyecto demuestra el uso de Flutter para construir una aplicación móvil interactiva y responsiva.

## Estructura del Proyecto

El proyecto está organizado en los siguientes directorios:

- `lib`: Contiene el código fuente principal de la aplicación.
  - `config`: Archivos de configuración y temas.
  - `domain`: Entidades de dominio y repositorios.
  - `infrastructure`: Fuentes de datos y modelos.
  - `presentation`: Componentes de UI, proveedores y pantallas.
  - `shared`: Datos y utilidades compartidas.

### Estructura del Directorio `lib`

```plaintext
lib/
├── config/
│   └── theme/
│       └── app_theme.dart
├── domain/
│   ├── datasources/
│   │   └── video_post_datasource.dart
│   ├── entities/
│   │   └── video_post.dart
│   └── repositories/
│       └── video_post_repository.dart
├── infrastructure/
│   ├── datasources/
│   │   └── local_video_data_source_impl.dart
│   ├── models/
│   │   └── local_video_model.dart
│   └── repositories/
│       └── video_post_repository_impl.dart
├── presentation/
│   ├── providers/
│   │   └── discover_provider.dart
│   ├── screens/
│   │   └── discover/
│   │       └── discover_screen.dart
│   └── widgets/
│       └── shared/
│           ├── video/
│           │   ├── full_screen_player.dart
│           │   ├── video_background.dart
│           │   ├── video_buttons.dart
│           │   └── video_scrollable_view.dart
├── shared/
│   └── data/
│       └── local_video_post.dart
```

## Comenzando

### Requisitos Previos

- Flutter SDK: [Instalar Flutter](https://flutter.dev/docs/get-started/install)
- Dart SDK: Viene con la instalación de Flutter

### Instalación

1. Clona el repositorio:
   ```sh
   git clone https://github.com/tu-usuario/toktik.git
   cd toktik
   ```

2. Obtén las dependencias:
   ```sh
   flutter pub get
   ```

### Ejecutando la Aplicación

1. Conecta un dispositivo o inicia un emulador.
2. Ejecuta la aplicación:
   ```sh
   flutter run
   ```

## Características

- Mostrar una lista de videos en tendencia.
- Reproducir videos en pantalla completa con controles.
- Mostrar detalles del video como likes y vistas.
- Cargar más videos a medida que el usuario se desplaza.

## Archivos del Proyecto

### Punto de Entrada Principal

- `lib/main.dart`: El punto de entrada principal de la aplicación.

### Modelos

- `lib/infrastructure/models/local_video_model.dart`: Modelo para datos de videos locales.

### Repositorios

- `lib/infrastructure/repositories/video_post_repository_impl.dart`: Implementación del repositorio de publicaciones de video.

### Proveedores

- `lib/presentation/providers/discover_provider.dart`: Proveedor para gestionar el estado de la pantalla de descubrimiento.

### Pantallas

- `lib/presentation/screens/discover/discover_screen.dart`: Pantalla para mostrar videos en tendencia.

### Widgets

- `lib/presentation/widgets/shared/video/full_screen_player.dart`: Widget para reproducir videos en pantalla completa.
- `lib/presentation/widgets/shared/video/video_background.dart`: Widget para el gradiente de fondo del video.
- `lib/presentation/widgets/shared/video_buttons.dart`: Widget para mostrar botones de acción del video.
- `lib/presentation/widgets/shared/video_scrollable_view.dart`: Widget para mostrar una lista desplazable de videos.

### Datos Compartidos

- `lib/shared/data/local_video_post.dart`: Datos locales para publicaciones de video.

## Contribuyendo

¡Las contribuciones son bienvenidas! Por favor, abre un issue o envía un pull request para cualquier mejora o corrección de errores.

## Licencia

Este proyecto está licenciado bajo la Licencia MIT. Consulta el archivo [LICENSE](LICENSE) para más detalles.

