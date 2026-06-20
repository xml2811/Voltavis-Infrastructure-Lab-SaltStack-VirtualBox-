#!/bin/bash

echo "Por favor, escoge el nombre para tu página (sin extensión):"
read nombre_archivo

dominio="$nombre_archivo.com"
ruta_base="/var/www/$dominio"
ruta_pagina="$ruta_base/pagina"

# Verificar si el archivo de configuración ya existe
if [ -e "/etc/apache2/sites-available/$dominio.conf" ]; then
  echo "¡El archivo de configuración para $dominio ya existe!"
  exit 1
fi

# Crear carpetas del dominio
mkdir -p "$ruta_pagina"

# Crear archivo index.html con contenido básico
echo "<h1>Bienvenido a la página de $nombre_archivo</h1>" > "$ruta_pagina/index.html"

# Asignar permisos
chown -R root:root "$ruta_base"
chmod -R 755 "$ruta_base"

# Habilitar módulo SSL y reiniciar Apache
echo "Habilitando el módulo SSL de Apache..."
a2enmod ssl
systemctl restart apache2

# Generar certificado SSL autofirmado
echo "Generando certificado SSL autofirmado..."
openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
  -keyout /etc/ssl/private/apache-selfsigned.key \
  -out /etc/ssl/certs/apache-selfsigned.crt <<EOF
ES
Example
Barcelona
MiEmpresa
IT
$dominio
admin@$dominio
EOF

# Crear configuración con SSL
cat > /etc/apache2/sites-available/$dominio.conf <<EOL
<VirtualHost *:443>
    ServerName $dominio
    DocumentRoot $ruta_pagina

    SSLEngine on
    SSLCertificateFile /etc/ssl/certs/apache-selfsigned.crt
    SSLCertificateKeyFile /etc/ssl/private/apache-selfsigned.key
</VirtualHost>

<VirtualHost *:80>
    ServerName $dominio
    Redirect / https://$dominio/
</VirtualHost>
EOL

# Habilitar sitio y verificar configuración
a2ensite "$dominio.conf"
apache2ctl configtest

if [ $? -eq 0 ]; then
  echo "Recargando Apache..."
  systemctl reload apache2
  echo "✅ ¡Instalación completa! Visita tu sitio en https://$dominio para probarlo."
else
  echo "❌ Error en la configuración de Apache. Revisa el archivo .conf"
fi
