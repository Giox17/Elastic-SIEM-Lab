# Hardening y Recomendaciones

Al llevar este laboratorio a un entorno productivo, considere lo siguiente:

1. **Gestión de Secretos:** No almacenar `cloud.auth` en texto plano en el archivo de configuración. Utilizar el Keystore de Auditbeat.
2. **Principio de Menor Privilegio:** Limitar los usuarios que tienen capacidades de sudoers.
3. **Reglas Ajustadas:** Ajustar las reglas SIEM out-of-the-box para disminuir falsos positivos basándose en la línea base de actividad del servidor.
4. **Respuesta Automatizada:** Integrar Elastic Security con un EDR o herramientas SOAR para aislar los hosts comprometidos tras una alerta de `file_integrity`.
