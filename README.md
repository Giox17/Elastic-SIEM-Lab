# 🛡️ Elastic-SIEM-Lab: Despliegue de un SIEM en la Nube y Monitoreo

![Elastic Stack](https://img.shields.io/badge/Elastic%20Stack-005571?style=for-the-badge&logo=elastic&logoColor=white)
![Ubuntu](https://img.shields.io/badge/Ubuntu-E95420?style=for-the-badge&logo=ubuntu&logoColor=white)
![Cybersecurity](https://img.shields.io/badge/Cybersecurity-Blue%20Team-blue?style=for-the-badge)

Este repositorio documenta el diseño, la configuración y la ejecución de un laboratorio de ciberseguridad profesional centrado en **Elastic Security (SIEM)** alojado en la nube. Abarca desde la configuración del agente (Auditbeat) en Ubuntu Linux, hasta la simulación de amenazas (Red Team) y su correspondiente detección y análisis (Blue Team).

## 🎯 Objetivos del Laboratorio
* Desplegar un entorno Elastic Cloud.
* Instalar y configurar agentes de recolección de telemetría (Auditbeat).
* Habilitar reglas de detección predeterminadas del SIEM.
* Simular ataques (Persistencia, DNS Spoofing).
* Validar la detección, monitoreo y análisis de alertas en Kibana.

## 📁 Estructura del Proyecto

```text
Elastic-SIEM-Lab/
├── README.md                    # Portal de entrada profesional del laboratorio (Dashboard)
├── docs/                        # Documentación Técnica Modularizada
├── images/                      # Directorio de Capturas de Pantalla Categorizado
├── configs/                     # Respaldos de Archivos de Configuración Limpios
└── scripts/                     # Scripts de Automatización y Simulación (Bash)
```

## 📚 Índice Navegable
1. [Instalación en Elastic Cloud y Ubuntu](docs/installation.md)
2. [Configuración de Agente Auditbeat](docs/configuration.md)
3. [Dashboards y Monitoreo](docs/dashboards.md)
4. [Reglas de Detección (SIEM)](docs/detections.md)
5. [Arquitectura del Proyecto](docs/architecture.md)
6. [Casos de Uso y Simulación de Ataques (Alertas)](docs/alerts.md)
7. [Troubleshooting](docs/troubleshooting.md)
8. [Hardening y Recomendaciones](docs/hardening.md)

## 🏗️ Arquitectura SIEM
Consulte [Arquitectura](docs/architecture.md) para visualizar el diagrama completo del flujo de información.

## 🚀 Guía Rápida

Puede utilizar el script automatizado para la instalación del agente:
```bash
chmod +x scripts/install-agent.sh
./scripts/install-agent.sh
```

Para realizar la simulación de amenazas de prueba, ejecute:
```bash
chmod +x scripts/simulate-attacks.sh
./scripts/simulate-attacks.sh
```

## ⚠️ Disclaimer Ético
Las técnicas y scripts aquí documentados (como el DNS Spoofing y persistencia) se presentan **estrictamente con fines educativos y de investigación en entornos de laboratorio controlados**. No utilice estos métodos en infraestructuras de producción sin la debida autorización.

---
**Autor:** Giovani Hernández
