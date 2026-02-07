#!/bin/bash

# Solicitar el nombre del dominio
read -p "Introduce el nombre del dominio (sin extensión, por ejemplo: midominio): " nombre_dominio
dominio="$nombre_dominio.com"
ruta_base="/var/www/$dominio"
ruta_pagina="$ruta_base/pagina"

# Verificar si el directorio del dominio existe
if [ ! -d "$ruta_pagina" ]; then
  echo "El directorio $ruta_pagina no existe. Asegúrate de que el dominio esté creado."
  exit 1
fi

# Solicitar el nombre del usuario SFTP
read -p "Introduce el nombre del usuario SFTP: " usuario_sftp

# Crear grupo sftpusers si no existe
if ! getent group sftpusers >/dev/null; then
  groupadd sftpusers
fi

# Crear el usuario sin acceso a shell
useradd -g sftpusers -d "$ruta_base" -s /sbin/nologin "$usuario_sftp"

# Establecer contraseña para el usuario
passwd "$usuario_sftp"

# Establecer permisos adecuados
chown root:root "$ruta_base"
chmod 755 "$ruta_base"
chown "$usuario_sftp":sftpusers "$ruta_pagina"
chmod 755 "$ruta_pagina"

# Configurar SSH para enjaular al usuario
sshd_config="/etc/ssh/sshd_config"
backup_config="/etc/ssh/sshd_config.bak"

# Hacer una copia de seguridad del archivo de configuración de SSH
cp "$sshd_config" "$backup_config"

# Verificar si ya existe una configuración Match para el usuario
if ! grep -q "Match User $usuario_sftp" "$sshd_config"; then
  cat >> "$sshd_config" <<EOL

Match User $usuario_sftp
    ChrootDirectory $ruta_base
    ForceCommand internal-sftp
    AllowTcpForwarding no
    X11Forwarding no
EOL
else
  echo "La configuración para el usuario $usuario_sftp ya existe en $sshd_config."
fi

# Reiniciar el servicio SSH
systemctl restart sshd

echo "Usuario SFTP '$usuario_sftp' creado y enjaulado en '$ruta_base'."
echo "Podrá acceder a la carpeta 'pagina' dentro de su directorio chroot."
