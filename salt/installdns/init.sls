instalar_dnsmasq:
  pkg.installed:
   - name: 'dnsmasq'

enviarfichero:
  file.managed:
   - name: /etc/dnsmasq.d/dns.conf
   - source: salt://installdns/dns.conf
   - makedirs: true
   - watch: 
     - service: dnsmasq
dnsmasq:
  service.running:
    - name: dnsmasq
    - enable: true
    - reload: true
