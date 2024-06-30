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

## Pasos para cambiar el ícono de la app en Flutter:

1. Abrir pubspec.yaml y pegar lo siguiente en dev_dependencies:

```
flutter_launcher_icons: ^0.13.1
```

2. Pegar lo siguiente de dev_dependencies:

```
flutter_icons:
  android: true
  ios: true
  image_path: "resources/icon.jpg"
```

3. Crear una carpeta llamada resources, y pegar dentro de ella un archivo llamado icon.jpg, el cual contiene el logo de la aplicación.

4. Abrir terminal y ejecutar el siguiente comando:

```
flutter pub run flutter_launcher_icons:main
```
