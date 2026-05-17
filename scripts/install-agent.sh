#!/bin/bash
# Script de automatización para la descarga e instalación de Auditbeat en Ubuntu Linux.
set -e

echo "[+] Asegurando dependencias básicas..."
sudo apt update && sudo apt install curl -y

echo "[+] Descargando paquete Auditbeat v9.3.4..."
curl -L -O https://artifacts.elastic.co/downloads/beats/auditbeat/auditbeat-9.3.4-amd64.deb

echo "[+] Instalando el agente..."
sudo dpkg -i auditbeat-9.3.4-amd64.deb

echo "[✓] Auditbeat instalado con éxito. Por favor configure /etc/auditbeat/auditbeat.yml antes de arrancar el servicio."
