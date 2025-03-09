# Notion ToDo Integration for Home Assistant

[![GitHub Release][releases-shield]][releases]
[![GitHub Activity][commits-shield]][commits]
[![License][license-shield]](LICENSE)
![Project Maintenance][maintenance-shield]
[![Community Forum][forum-shield]][forum]

[![Open your Home Assistant instance and open a repository inside the Home Assistant Community Store.](https://my.home-assistant.io/badges/hacs_repository.svg)](https://my.home-assistant.io/redirect/hacs_repository/?owner=JanGiese&repository=notion_todo&category=integration)

Esta integración permite conectar tus tareas de Notion con Home Assistant, permitiéndote gestionar tus tareas desde la interfaz de Home Assistant.

## Características

- Sincronización bidireccional de tareas entre Notion y Home Assistant
- Soporte para crear, actualizar y eliminar tareas
- Visualización de fechas de vencimiento y estados de tareas

## Requisitos previos

- Una cuenta de Notion
- Un token de integración de Notion (API Key)
- Una base de datos de tareas en Notion creada a partir de la plantilla oficial de ToDo

## Configuración

### 1. Crear un token de integración de Notion

1. Ve a [https://www.notion.so/my-integrations](https://www.notion.so/my-integrations)
2. Haz clic en "New integration"
3. Dale un nombre a tu integración (por ejemplo, "Home Assistant")
4. Selecciona el workspace donde tienes tu base de datos de tareas
5. Haz clic en "Submit"
6. Copia el "Internal Integration Token" que se te proporciona

### 2. Crear una base de datos de tareas en Notion

1. Ve a [https://www.notion.so/templates/to-do-list](https://www.notion.so/templates/to-do-list)
2. Crea una nueva base de datos a partir de la plantilla de ToDo
3. Haz clic en los tres puntos (...) en la esquina superior derecha de la base de datos
4. Selecciona "Add connections" y elige la integración que creaste anteriormente
5. Copia el ID de la base de datos desde la URL (es la parte después de la última barra y antes del signo de interrogación)

### 3. Instalar la integración en Home Assistant

#### Opción 1: Usando Docker (recomendado)

1. Clona este repositorio:
   ```bash
   git clone https://github.com/TU_USUARIO/notion_todo.git
   cd notion_todo
   ```

2. Inicia el contenedor de Docker:
   ```bash
   docker-compose up -d
   ```

3. Accede a Home Assistant en [http://localhost:8123](http://localhost:8123)

4. Ve a Configuración -> Integraciones -> Añadir integración
   
5. Busca "Notion ToDo" y configúrala con tu token de integración y el ID de la base de datos

#### Opción 2: Instalación manual

1. Copia la carpeta `custom_components/notion_todo` a tu directorio `custom_components` de Home Assistant

2. Reinicia Home Assistant

3. Ve a Configuración -> Integraciones -> Añadir integración
   
4. Busca "Notion ToDo" y configúrala con tu token de integración y el ID de la base de datos

## Uso

Una vez configurada la integración, podrás:

1. Ver tus tareas de Notion en la tarjeta de tareas de Home Assistant
2. Crear nuevas tareas desde Home Assistant
3. Marcar tareas como completadas
4. Eliminar tareas

## Solución de problemas

Si encuentras algún problema con la integración:

1. Verifica que tu token de integración de Notion sea válido
2. Asegúrate de que la integración tenga acceso a la base de datos de tareas
3. Comprueba los registros de Home Assistant para ver si hay errores específicos

## Contribuciones

¡Las contribuciones son bienvenidas! Si quieres mejorar esta integración, por favor:

1. Haz un fork del repositorio
2. Crea una rama para tu característica (`git checkout -b feature/amazing-feature`)
3. Haz commit de tus cambios (`git commit -m 'Add some amazing feature'`)
4. Haz push a la rama (`git push origin feature/amazing-feature`)
5. Abre un Pull Request

## Licencia

Este proyecto está licenciado bajo la Licencia MIT - ver el archivo [LICENSE](LICENSE) para más detalles.

## Agradecimientos

- [JanGiese](https://github.com/JanGiese) por la implementación original
- La comunidad de Home Assistant por su continuo apoyo

**This integration will set up the following platforms.**

Platform | Description
-- | --
`todo` | Shows all todos

## Contributions are welcome!

If you want to contribute to this please read the [Contribution guidelines](CONTRIBUTING.md)

***

[integration_blueprint]: https://github.com/JanGiese/notion_todo
[commits-shield]: https://img.shields.io/github/commit-activity/y/JanGiese/notion_todo.svg?style=for-the-badge
[commits]: https://github.com/JanGiese/notion_todo/commits/main
[discord-shield]: https://img.shields.io/discord/330944238910963714.svg?style=for-the-badge
[exampleimg]: example.png
[forum-shield]: https://img.shields.io/badge/community-forum-brightgreen.svg?style=for-the-badge
[forum]: https://community.home-assistant.io/
[license-shield]: https://img.shields.io/github/license/JanGiese/notion_todo.svg?style=for-the-badge
[maintenance-shield]: https://img.shields.io/badge/maintainer-JanGiese-blue.svg?style=for-the-badge
[releases-shield]: https://img.shields.io/github/release/JanGiese/notion_todo.svg?style=for-the-badge
[releases]: https://github.com/JanGiese/notion_todo/releases
