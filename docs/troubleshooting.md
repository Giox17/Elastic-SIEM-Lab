# Troubleshooting

Si experimenta problemas durante la configuración o ejecución:

1. **Agente no se conecta a la nube:**
   Verifique que el `cloud.id` y `cloud.auth` sean correctos y que no haya saltos de línea adicionales en `auditbeat.yml`.
   
2. **Alertas no se disparan:**
   Verifique que las reglas SIEM de Elastic estén activadas. Si están activadas, verifique los índices en Kibana para confirmar que los eventos de Auditbeat están siendo ingeridos.

3. **Inyección en `/etc/hosts` sin efecto:**
   Recuerde que no se deben colocar esquemas `https://` en el archivo hosts, solo IP y hostname:
   `echo "192.168.1.100 www.google.com" | sudo tee -a /etc/hosts`
