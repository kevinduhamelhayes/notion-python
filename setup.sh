#!/bin/bash

# Colores para mensajes
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo -e "${GREEN}=== Configuración de Notion ToDo para Home Assistant ===${NC}"

# Verificar si Docker está instalado
if ! command -v docker &> /dev/null; then
    echo -e "${RED}Docker no está instalado. Por favor, instala Docker antes de continuar.${NC}"
    exit 1
fi

# Verificar si Docker Compose está instalado
if ! command -v docker-compose &> /dev/null; then
    echo -e "${RED}Docker Compose no está instalado. Por favor, instala Docker Compose antes de continuar.${NC}"
    exit 1
fi

# Crear archivo .env si no existe
if [ ! -f .env ]; then
    echo -e "${YELLOW}Creando archivo .env...${NC}"
    
    # Solicitar token de Notion
    echo -e "${YELLOW}Por favor, introduce tu token de integración de Notion:${NC}"
    read notion_token
    
    # Solicitar ID de la base de datos
    echo -e "${YELLOW}Por favor, introduce el ID de tu base de datos de Notion:${NC}"
    read notion_database_id
    
    # Crear archivo .env
    echo "NOTION_TOKEN=$notion_token" > .env
    echo "NOTION_DATABASE_ID=$notion_database_id" >> .env
    
    echo -e "${GREEN}Archivo .env creado correctamente.${NC}"
else
    echo -e "${YELLOW}El archivo .env ya existe. Si deseas modificarlo, edítalo manualmente o elimínalo y ejecuta este script de nuevo.${NC}"
fi

# Iniciar contenedores
echo -e "${YELLOW}Iniciando contenedores...${NC}"
docker-compose up -d

# Verificar si los contenedores se iniciaron correctamente
if [ $? -eq 0 ]; then
    echo -e "${GREEN}¡Configuración completada con éxito!${NC}"
    echo -e "${GREEN}Puedes acceder a Home Assistant en: http://localhost:8123${NC}"
    echo -e "${YELLOW}Recuerda configurar la integración 'Notion ToDo' desde la interfaz de Home Assistant.${NC}"
else
    echo -e "${RED}Hubo un problema al iniciar los contenedores. Por favor, revisa los logs con 'docker-compose logs'.${NC}"
fi 