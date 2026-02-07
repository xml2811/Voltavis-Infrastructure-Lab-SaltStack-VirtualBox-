Voltavis Hosting Infrastructure Lab (SaltStack + VirtualBox)

Este proyecto despliega una infraestructura completa basada en debian 12 de hosting web usando SaltStack sobre minions de VirtualBox preconfigurados, diseñada como laboratorio profesional de DevOps, incluye tanto los estados del salt, como la propia pagina html de la empresa simulada Voltavis, junto a precios, RSC.

Es una infraestructura multi-hosting que permite:

Servidor web( SSL ) y SFTP con usuarios ilimitados y creación de páginas web dinámicas, con clave privada.

VPN(OpenVPN) y Certificate Authority (CA) para conexiones seguras.

Tunelado inverso configurable entre servicios.

Firewall avanzado que distingue entre DMZ y LAN.

DNS y DHCP (dnsmasq) para gestión de red interna.

Orquestación completa desde un Salt Master, que despliega todo automáticamente.

🔹 Mapa de Red

https://miro.com/app/board/uXjVGEZ2XSc=/?share_link_id=786193404278

🔹 Requisitos

VirtualBox instalado (para los minions preconfigurados)

SaltStack instalado en el master y minions

Minions preconfigurados dentro de la red con Debian 12

SSH funcional entre master y minions

🔹 Cómo desplegar

Clonar el repositorio:

git clone https://github.com/xml2811/Voltavis-Infrastructure-Lab-SaltStack-VirtualBox-.git
cd voltavis-infra


Iniciar los minions en VirtualBox (preconfigurados).

Aplicar todos los estados desde el Salt Master:

sudo salt '*' state.apply


Verificar servicios:

Servidor web y SFTP: https://<IP_web>

Conexión VPN: openvpn --config /etc/openvpn/client.conf

DNS/DHCP funcionando según topología interna

🔹 Laboratorio y máquinas
Minion Name	Rol
saltmaster	Salt Master, despliega toda la infraestructura
webserver	Multi-hosting web + SFTP, usuarios ilimitados
vpn	VPN y Certificate Authority
firewall	Firewall DMZ/LAN y reglas de seguridad
dns	DNS Server
dhcp	DHCP Server
tunnel	Tunel inverso y enrutamiento interno

Exporta tu mapa de red de Miro en docs/network-map.png para que sea fácil de entender visualmente.

🔹 Características principales

Infraestructura como código completa con SaltStack

Multi-hosting en un solo servidor web/SFTP

VPN + CA para conexiones seguras

Firewall avanzado con segmentación DMZ/LAN

Tunelado inverso entre servicios si se requiere

DNS y DHCP gestionados automáticamente

Orquestación desde un Salt Master único

Preparado para educación, demostraciones o portafolio DevOps

🔹 Licencia

MIT License. Puedes reutilizar, modificar o distribuir el proyecto respetando la licencia.

🔹 Notas

En el apartado DOCS, encontraras multiples tutoriales de mucha ayuda.

Proyecto educativo/profesional: ideal para portfolio DevOps o demostraciones de infraestructura real.

Todos los minions están preconfigurados para un despliegue funcional y seguro.

No incluye datos sensibles. Para pruebas reales, reemplaza credenciales de ejemplo por variables de pillar.
