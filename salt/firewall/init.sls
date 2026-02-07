instalar_dnsmasq:
  pkg.installed:
   - name: 'nftables'

enviarfichero:
  file.managed:
   - name: /etc/nftables.conf
   - source: salt://firewall/nftables.conf
   - makedirs: true

enviarfichero3:
  file.managed:
   - name: /network/interfaces
   - source: salt://firewall/interfaces
   - makedirs: true

enviarfichero2:
  file.managed:
   - name: /etc/sysctl.conf
   - source: salt://firewall/sysctl.conf
   - makedirs: true

reiniciar_nftables:
  service.running:
   - name: nftables.service
   - enable: True
