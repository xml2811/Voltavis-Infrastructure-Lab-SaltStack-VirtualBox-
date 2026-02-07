instalar_dnsmasq:
  pkg.installed:
   - name: 'dnsmasq'

enviarfichero:
  file.managed:
   - name: /etc/dnsmasq.d/dhcp.conf
   - source: salt://installdhcp/dhcp.conf
   - makedirs: true
   - watch_in:
     - service: dnsmasq

dnsmasq:
  service.running:
    - name: dnsmasq
    - enable: true
    - reload: true
