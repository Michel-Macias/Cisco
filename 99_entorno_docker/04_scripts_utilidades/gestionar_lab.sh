#!/bin/bash
# Script de gestión del entorno vulnerable de Cisco Ethical Hacker
# Autor: Antigravity / Michel Macias
# Uso exclusivo en entornos controlados y con permisos (Módulo 99).

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
COMPOSE_FILE="$DIR/../01_infraestructura/docker-compose.yml"

# Colores rápidos
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # No Color

function check_docker() {
    if ! command -v docker &> /dev/null; then
        echo -e "${RED}[!] Error:${NC} docker no está instalado. Instálalo primero."
        exit 1
    fi
}

function start_lab() {
    echo -e "${GREEN}[+] Levantando contenedores de vulnerabilidad...${NC}"
    docker compose -f "$COMPOSE_FILE" up -d
    echo -e "${GREEN}[+] ¡Listo! Las aplicaciones están disponibles en 127.0.0.1 (Revisa el README.md)${NC}"
}

function stop_lab() {
    echo -e "${RED}[-] Deteniendo contenedores para liberar recursos de la PC...${NC}"
    docker compose -f "$COMPOSE_FILE" stop
    echo -e "${GREEN}[+] Entorno detenido. Tus datos han sido preservados.${NC}"
}

function clean_lab() {
    echo -e "${RED}[!] Destruyendo el laboratorio (Esto borrará BBDD y Logs)...${NC}"
    docker compose -f "$COMPOSE_FILE" down -v
    echo -e "${GREEN}[+] Entorno destruido completamente.${NC}"
}

function status_lab() {
    docker compose -f "$COMPOSE_FILE" ps
}

# Verificamos Docker
check_docker

case "$1" in
    start)
        start_lab
        ;;
    stop)
        stop_lab
        ;;
    clean)
        clean_lab
        ;;
    status)
        status_lab
        ;;
    *)
        echo "Uso: $0 {start|stop|clean|status}"
        exit 1
esac
