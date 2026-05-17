#!/bin/bash
# Script de simulación de ataques para el laboratorio de detección SIEM.
set -e

show_menu() {
    echo "==========================================="
    echo "   LAB SIEM: SIMULACIÓN DE CASOS DE ATAQUE "
    echo "==========================================="
    echo "1) Escenario A: Crear usuario malicioso y añadir a sudo"
    echo "2) Escenario B: Inyectar DNS Spoofing (/etc/hosts)"
    echo "3) Salir"
    echo -n "Seleccione una opción: "
}

case_a() {
    echo "[+] Ejecutando Escenario A (Persistencia e IAM)..."
    sudo useradd -m hacker1_backup
    echo "hacker1_backup:P@ssw0rd123!" | sudo chpasswd
    sudo usermod -aG sudo hacker1_backup
    echo "[✓] Usuario hacker1_backup creado y añadido a sudoers."
}

case_b() {
    echo "[+] Ejecutando Escenario B (DNS Spoofing)..."
    # Inyección sintácticamente correcta de DNS Spoofing
    echo "192.168.1.100 www.google.com" | sudo tee -a /etc/hosts
    echo "[✓] Falso mapeo inyectado en /etc/hosts de manera correcta."
}

while true; do
    show_menu
    read opt
    case $opt in
        1) case_a ;;
        2) case_b ;;
        3) exit 0 ;;
        *) echo "Opción no válida." ;;
    esac
    echo ""
done
