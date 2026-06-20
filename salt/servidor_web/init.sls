apache2:
  pkg.installed:
    - name: apache2

apache2_service:
  service.running:
    - name: apache2
    - enable: True
    - watch:
      - file: /etc/apache2/sites-available/dominio.com.conf

pagina_directory:
  file.directory:
    - name: /var/www/xavimadrid.com/pagina
    - user: www-data
    - group: www-data
    - mode: 755
    - makedirs: True

deploy_files:
  file.recurse:
    - name: /var/www/xavimadrid.com/pagina
    - source: salt://servidor_web/files
    - user: www-data
    - group: www-data
    - file_mode: 644
    - dir_mode: 755

apache_config:
  file.managed:
    - name: /etc/apache2/sites-available/xavimadrid.com.conf
    - source: salt://servidor_web/crearweb.sh
    - user: root
    - group: root
    - mode: 644

automatizar_web:
  file.managed:
    - name: /root/crearsvweb
    - source: salt://servidor_web/apache/xavimadrid.com.conf
    - user: root
    - group: root
    - mode: 644

enable_site: cmd.run:
    - name: a2ensite xavimadrid.com.conf
    - unless: test -L /etc/apache2/sites-enabled/dominio.com.conf
    - require:
      - file: apache_config

reload_apache:
  cmd.run:
    - name: systemctl reload apache2
    - watch:
      - cmd: enable_site
