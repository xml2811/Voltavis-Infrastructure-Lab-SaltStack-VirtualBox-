actualizar_sistema:
  pkg.uptodate:
   - refresh: True

instalar_easy-rsa:
  pkg.installed:
   - name: 'easy-rsa'

symlink_easy-rsa:
  file.symlink:
   - name: /root/easy-rsa/
   - target: /usr/share/easy-rsa

enviarfichero1:
  file.managed:
   - name: /root/easy-rsa/vars.example
   - source: salt://ca/claves/vars.example
   - makedirs: true

enviarfichero2:
  file.managed:
   - name: /root/easy-rsa/pki/dh.pem
   - source: salt://ca/claves/dh.pem
   - makedirs: true

enviarfichero3:
  file.managed:
   - name: /root/easy-rsa/pki/ca.crt
   - source: salt://ca/claves/ca.crt
   - makedirs: true

enviarfichero4:
  file.recurse:
   - name: /root/easy-rsa/pki/private/
   - source: salt://ca/private
   - makedirs: true

enviarfichero5:
  file.recurse:
   - name: /root/easy-rsa/pki/issued/
   - source: salt://ca/issued
   - makedirs: true

enviarfichero6:
  file.recurse:
   - name: /root/easy-rsa/pki/reqs/
   - source: salt://ca/reqs
   - makedirs: true
