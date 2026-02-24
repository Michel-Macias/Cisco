#!/bin/bash
# ============================================
# Script de Configuración de Kali MINIMALISTA
# ============================================

echo "[*] Actualizando repositorios..."
apt update

echo "[*] Instalando herramientas ESENCIALES (Lightweight)..."

# Solo lo que realmente vamos a usar en este lab
apt install -y \
    nmap \
    ffuf \
    sqlmap \
    netcat-traditional \
    iproute2 \
    iputils-ping \
    curl \
    john \
    wordlists \
    python3 \
    python3-pip

# Descomprimir rockyou sin bajar todo seclists
if [ ! -f /usr/share/wordlists/rockyou.txt ]; then
    echo "[*] Descomprimiendo RockYou dictionary..."
    gzip -d /usr/share/wordlists/rockyou.txt.gz
fi

echo "[+] Kali listo para la acción! (Versión Minimalista)"
echo "[*] Comandos disponibles: nmap, ffuf, sqlmap, nc, john, curl"

