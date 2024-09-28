
# TrotApp - Aplicación Móvil

Este repositorio contiene el código fuente de la aplicación móvil de **TrotApp**, desarrollada en **Flutter**. La aplicación permite a los usuarios acceder a las funcionalidades principales de la plataforma desde sus dispositivos móviles, incluyendo la creación de perfiles, la búsqueda de compañeros de ejercicio y el registro de actividades.

## Contenidos

- [Preparación del entorno](#preparación-del-entorno)
- [Estructura de carpetas](#estructura-de-carpetas)
- [Comandos útiles](#comandos-útiles)
- [Licencia](#licencia)

## Preparación del entorno

Para ejecutar el proyecto en tu entorno local, sigue los pasos a continuación:

### Requisitos previos

1. **Flutter**: Instala Flutter siguiendo las instrucciones oficiales en: [Flutter Setup](https://docs.flutter.dev/get-started/install).

2. **Dart**: Al instalar Flutter, Dart se incluirá automáticamente, pero asegúrate de tener Dart correctamente configurado.

3. **Android Studio/Xcode**: 
   - Si desarrollas para Android, instala [Android Studio](https://developer.android.com/studio) y configura los emuladores.
   - Si desarrollas para iOS, instala [Xcode](https://developer.apple.com/xcode/).

4. **VSCode (Opcional)**: Puedes usar Visual Studio Code como editor de código con la extensión de Flutter y Dart.

5. **Dependencias del proyecto**: Asegúrate de tener instaladas las siguientes herramientas en tu entorno:
   - CocoaPods (para desarrollo en iOS). Puedes instalarlo con el comando:
     ```bash
     sudo gem install cocoapods
     ```

### Instalación

1. Clona el repositorio:

   ```bash
   git clone https://github.com/tu-usuario/trotapp-mobile.git
   ```

2. Entra en la carpeta del proyecto:

   ```bash
   cd trotapp-mobile
   ```

3. Instala las dependencias:

   ```bash
   flutter pub get
   ```

4. Copia el archivo `.env.template` a `.env` y configura las variables necesarias para conectar con los servicios del backend:

   ```bash
   cp .env.template .env
   ```

### Iniciar el proyecto

Para ejecutar la aplicación en un dispositivo o emulador:

1. Asegúrate de que tu dispositivo o emulador está conectado y funcionando.

2. Ejecuta el siguiente comando:

   ```bash
   flutter run
   ```

   Este comando lanzará la aplicación en el dispositivo o emulador conectado.

## Estructura de carpetas

La estructura del proyecto sigue un patrón modular para mantener una buena organización del código:

```bash
📁trotapp-mobile
│
├── 📁assets             # Archivos estáticos como imágenes, íconos, etc.
│   └── 📁loaders        # Animaciones o imágenes de carga
│
├── 📁lib                # Código fuente principal
│   ├── 📁config         # Configuraciones generales como rutas, temas y helpers
│   │   ├── 📁constants  # Constantes globales de la app
│   │   ├── 📁helpers    # Utilidades auxiliares (como formatos de fechas)
│   │   ├── 📁router     # Definiciones de rutas de navegación
│   │   └── 📁theme      # Definición de temas y estilos globales
│   │
│   ├── 📁core           # Lógica central de la aplicación
│   │   ├── 📁datasources    # Origen de datos (local o remoto)
│   │   ├── 📁entities       # Definición de las entidades del dominio
│   │   └── 📁repositories   # Interfaces de acceso a datos
│   │
│   ├── 📁infrastructure # Implementaciones de infraestructura (APIs, mappers, etc.)
│   │   ├── 📁datasources    # Implementaciones de fuentes de datos
│   │   ├── 📁mappers        # Transformaciones de datos
│   │   └── 📁models         # Modelos usados para serialización/deserialización
│   │
│   ├── 📁presentation  # Parte visual de la aplicación (UI)
│   │   ├── 📁auth      # Pantallas y lógica de autenticación
│   │   ├── 📁screens   # Pantallas de la aplicación
│   │   ├── 📁widgets   # Componentes reutilizables (como botones o loaders)
│   │   └── 📁views     # Vistas de la aplicación
│   │
│   └── main.dart       # Archivo principal de arranque de la app
│
├── 📁ios               # Código específico para iOS
├── 📁android           # Código específico para Android
├── 📁web               # Configuración para aplicaciones web
├── 📁macos             # Soporte para MacOS
├── 📁windows           # Soporte para Windows
├── 📁linux             # Soporte para Linux
│
├── .env.template       # Plantilla de configuración de entorno
├── .gitignore          # Archivos y carpetas que Git ignorará
├── pubspec.yaml        # Archivo de configuración de Flutter/Dart (dependencias)
└── README.md           # Este archivo
```

## Comandos útiles

- **Para ejecutar la aplicación**:
  ```bash
  flutter run
  ```

- **Para compilar la app para producción** (Android):
  ```bash
  flutter build apk
  ```

- **Para compilar la app para producción** (iOS):
  ```bash
  flutter build ios
  ```

- **Para analizar el código**:
  ```bash
  flutter analyze
  ```

- **Para ejecutar pruebas unitarias**:
  ```bash
  flutter test
  ```

## Licencia

Este proyecto está licenciado bajo la [MIT License](./LICENSE).
