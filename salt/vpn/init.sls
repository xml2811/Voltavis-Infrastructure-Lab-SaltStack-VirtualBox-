actualizarsistema:
  pkg.uptodate:
   - refresh: True

instalar_easy-rsa:
  pkg.installed:
   - name: 'easy-rsa'

instalar_openvpn:
  pkg.installed:
   - name: 'openvpn'

enviarclaveservidor:
  file.managed:
   - name: /etc/openvpn/ca.crt
   - source: salt://vpn/ca.crt

enviarcertificadocliente:
  file.managed:
   - name: /etc/openvpn/cliente1.crt
   - source: salt://vpn/cliente1.crt

enviarcliente:
  file.managed:
   - name: /etc/openvpn/cliente1.key
   - source: salt://vpn/cliente1.key

enviardh:
  file.managed:
   - name: /etc/openvpn/dh.pem
   - source: salt://vpn/dh.pem

enviarservidor:
  file.managed:
   - name: /etc/openvpn/server.conf
   - source: salt://vpn/server.conf

enviarservidor-vpn-crt:
  file.managed:
   - name: /etc/openvpn/servidor-vpn.crt
   - source: salt://vpn/servidor-vpn.crt

enviarservidor-vpn:
  file.managed:
   - name: /etc/openvpn/servidor-vpn.key
   - source: salt://vpn/servidor-vpn.key

enviarnftables:
  file.managed:
   - name: /etc/nftables.conf
   - source: salt://vpn/nftables.conf

reiniciar_openvpn:
  service.running:
   - name: openvpn@server.service
   - enable: True

enviarsysctl:
  file.managed:
   - name: /etc/sysctl.conf
   - source: salt://vpn/sysctl.conf

reiniciar_nftables:
  service.running:
   - name: nftables.service
   - enable: True

