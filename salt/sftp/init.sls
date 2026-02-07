ç# Crear grupo sftpusers
sftpusers_group:
  group.present:
    - name: xavimadrid

# Crear usuario xavimadrid
xavimadrid_user:
  user.present:
    - name: xavimadrid
    - home: /var/www/xavimadrid.com/pagina
    - shell: /usr/sbin/nologin
    - createhome: False
    - groups:
      - xavimadrid

pasar.sshd:
  file.managed:
    - name: /etc/ssh/sshd_config
    - source: salt://sftp/sshd_config

pasar.sh:
  file.managed:
    - name: /root/
    - source: salt://sftp/crearusuario_sftp.sh

# Establecer permisos para el chroot (la carpeta padre debe ser root)
set_chroot_owner:
  file.directory:
    - name: /var/www/xavimadrid.com
    - user: root
    - group: root
    - mode: 755

# Establecer permisos para la carpeta de trabajo del usuario
set_page_owner:
  file.directory:
    - name: /var/www/xavimadrid.com/pagina
    - user: xavimadrid
    - group: xavimadrid
    - mode: 755
