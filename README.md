# Voltavis Infrastructure Lab

**SaltStack-based Infrastructure-as-Code lab simulating a small hosting provider environment with Debian, VirtualBox, Apache, SFTP, OpenVPN, DNS/DHCP and firewall segmentation.**

[English](#english) | [Espanol](#espanol)

---

## English

### Overview

**Voltavis Infrastructure Lab** is a professional infrastructure lab designed to simulate the technical environment of a small hosting company or internal service provider.

The project uses **SaltStack**, **Debian** and **VirtualBox** to automate the deployment and configuration of multiple Linux services, including web hosting, VPN access, SFTP, DNS, DHCP, certificate authority concepts and firewall/network segmentation.

This repository is intended as a portfolio project to demonstrate practical skills in Linux system administration, networking, automation and Infrastructure as Code.

---

### What this project demonstrates

- Linux system administration with Debian.
- Infrastructure automation using SaltStack states.
- Multi-service lab deployment in VirtualBox.
- Web server configuration with Apache.
- SFTP access management.
- VPN concepts using OpenVPN.
- Internal DNS and DHCP services.
- Firewall rules and traffic segmentation.
- LAN/DMZ-style network design.
- Security-aware repository sanitization.
- Documentation of infrastructure components.

---

### Technology stack

| Area | Technology |
|---|---|
| Operating System | Debian 12 |
| Automation | SaltStack |
| Virtualization | VirtualBox |
| Web Server | Apache |
| Remote Access | OpenVPN |
| File Access | SFTP |
| Network Services | DNS / DHCP |
| Security | Firewalling, CA concepts, segmentation |
| Scripting | Bash |

---

### Repository structure

```text
.
|-- docs/
|   |-- architecture.md
|   |-- Mapa de red.pdf
|   |-- Salt.pdf
|   `-- screenshots/
|-- examples/
|   |-- openvpn/
|   |   `-- client.example.ovpn.txt
|   |-- pillars/
|   |   `-- pillar.example.sls
|   `-- ssh/
|       `-- tunnel.service.example
|-- salt/
|   |-- ca/
|   |-- firewall/
|   |-- installdhcp/
|   |-- installdns/
|   |-- servidor_web/
|   |-- sftp/
|   |-- tunel/
|   |-- vpn/
|   `-- top.sls
|-- .gitignore
|-- LICENSE
|-- README.md
|-- SECURITY.md
`-- SECURITY_REVIEW_REPORT.txt
```

---

### Security notice

This repository has been sanitized before publication.

It does **not** include real private keys, VPN client profiles, passwords, tokens, `.env` files, production configuration or sensitive SaltStack Pillar data.

Any credentials, keys or certificates required to run the lab must be generated locally and must never be committed to the repository.

---

### Project status

This is a completed lab project prepared for portfolio usage.

Possible future improvements:

- Add a visual network diagram image.
- Add deployment screenshots.
- Add a step-by-step deployment guide.
- Add automated validation checks.
- Add pre-commit secret scanning.
- Improve public/private SaltStack data separation.

---

### Author

Created by [xml2811](https://github.com/xml2811) as part of a professional portfolio focused on systems, networking, Linux, automation and infrastructure.

---

## Espanol

### Descripcion general

**Voltavis Infrastructure Lab** es un laboratorio profesional de infraestructura disenado para simular el entorno tecnico de una pequena empresa de hosting o proveedor interno de servicios.

El proyecto utiliza **SaltStack**, **Debian** y **VirtualBox** para automatizar el despliegue y la configuracion de multiples servicios Linux, incluyendo servidor web, acceso VPN, SFTP, DNS, DHCP, conceptos de autoridad certificadora y segmentacion de red/firewall.

Este repositorio esta pensado como proyecto de portfolio para demostrar habilidades practicas en administracion de sistemas Linux, redes, automatizacion e infraestructura como codigo.

---

### Que demuestra este proyecto

- Administracion de sistemas Linux con Debian.
- Automatizacion de infraestructura mediante estados de SaltStack.
- Despliegue de laboratorio multiservicio en VirtualBox.
- Configuracion de servidor web con Apache.
- Gestion de acceso por SFTP.
- Conceptos de VPN usando OpenVPN.
- Servicios internos de DNS y DHCP.
- Reglas de firewall y segmentacion de trafico.
- Diseno de red estilo LAN/DMZ.
- Sanitizacion de repositorios con enfoque de seguridad.
- Documentacion de componentes de infraestructura.

---

### Tecnologias utilizadas

| Area | Tecnologia |
|---|---|
| Sistema operativo | Debian 12 |
| Automatizacion | SaltStack |
| Virtualizacion | VirtualBox |
| Servidor web | Apache |
| Acceso remoto | OpenVPN |
| Acceso a ficheros | SFTP |
| Servicios de red | DNS / DHCP |
| Seguridad | Firewall, conceptos de CA, segmentacion |
| Scripting | Bash |

---

### Estructura del repositorio

```text
.
|-- docs/
|   |-- architecture.md
|   |-- Mapa de red.pdf
|   |-- Salt.pdf
|   `-- screenshots/
|-- examples/
|   |-- openvpn/
|   |   `-- client.example.ovpn.txt
|   |-- pillars/
|   |   `-- pillar.example.sls
|   `-- ssh/
|       `-- tunnel.service.example
|-- salt/
|   |-- ca/
|   |-- firewall/
|   |-- installdhcp/
|   |-- installdns/
|   |-- servidor_web/
|   |-- sftp/
|   |-- tunel/
|   |-- vpn/
|   `-- top.sls
|-- .gitignore
|-- LICENSE
|-- README.md
|-- SECURITY.md
`-- SECURITY_REVIEW_REPORT.txt
```

---

### Nota de seguridad

Este repositorio ha sido limpiado antes de publicarse.

No incluye claves privadas reales, perfiles VPN reales, contrasenas, tokens, archivos `.env`, configuracion de produccion ni datos sensibles de SaltStack Pillar.

Cualquier credencial, clave o certificado necesario para ejecutar el laboratorio debe generarse localmente y nunca debe subirse al repositorio.

---

### Estado del proyecto

Proyecto de laboratorio finalizado y preparado para uso como portfolio.

Posibles mejoras futuras:

- Anadir una imagen de diagrama visual de red.
- Anadir capturas del despliegue.
- Anadir guia paso a paso de despliegue.
- Anadir validaciones automaticas.
- Anadir escaneo de secretos antes de cada commit.
- Mejorar la separacion entre datos publicos y privados de SaltStack.

---

### Autor

Creado por [xml2811](https://github.com/xml2811) como parte de un portfolio profesional enfocado en sistemas, redes, Linux, automatizacion e infraestructura.