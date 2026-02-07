instalar_ssh:
  pkg.installed:
   - name: 'openssh-server'

instalar_sshpass:
  pkg.installed:
   - name: 'sshpass'

enviarfichero1:
  file.managed:
    - name: /etc/systemd/system/tunnel.service
    - source: salt://tunel/tunnel.service

enviarfichero2:
  file.managed:
    - name: /etc/ssh/sshd_config
    - source: salt://tunel/sshd_config

reinicar_tunel:
   module.run:
    - name: service.systemctl_reload
    - onchanges:
       - file: /etc/systemd/system/tunnel.service

habilitar_tunel:
   service.running:
    - name: tunnel.service
    - enable: True
    - reload: True

habilitar_ssh:
   service.running:
    - name: sshd.service
    - enable: True
    - reload: True

