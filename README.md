# Pasos para generar el proyecto:

1. Crear la siguiente estructura de carpetas:

```
.
└── lib
    ├── dao
    |
    ├── database
    |
    ├── models
    |
    ├── screens
    |    └── widgets
    |
    └── services
```

2. Abrir pubspec.yaml y pegar lo siguiente desde la línea 9 para abajo:

```
// ...

dependencies:
  flutter:
    sdk: flutter
  http: ^1.2.1
  sqflite: ^2.3.3+1
  shared_preferences: ^2.0.13

dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^3.0.0
  flutter_launcher_icons: ^0.13.1

flutter_icons:
  android: true
  ios: true
  image_path: "resources/icon.jpg"

flutter:
  uses-material-design: true
```

3. En caso de que la ejecución falle, abrir android/app/build.gradle y pegar lo siguiente:

```
android {
    defaultConfig {
        minSdkVersion 20
        // ...
    }
}
```

## Pasos para cambiar el ícono de la app en Flutter:

1. Abrir pubspec.yaml y pegar `flutter_launcher_icons` en dev_dependencies:

```
dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^3.0.0

  flutter_launcher_icons: ^0.13.1

// ...
```

2. Pegar `flutter_icons` debajo de dev_dependencies:

```
dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^3.0.0
  flutter_launcher_icons: ^0.13.1

// Esto de acá
flutter_icons:
  android: true
  ios: true
  image_path: "resources/icon.jpg"

// ...
```

3. Crear una carpeta llamada resources, y pegar dentro de ella un archivo llamado icon.jpg, el cual contiene el logo de la aplicación.

4. Abrir terminal y ejecutar el siguiente comando:

```
flutter pub run flutter_launcher_icons:main
```
