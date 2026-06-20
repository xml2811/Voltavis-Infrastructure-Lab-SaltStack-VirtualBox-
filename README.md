# Voltavis Infrastructure Lab

**SaltStack-based Infrastructure-as-Code lab simulating a small hosting provider environment with Debian, VirtualBox, Apache, SFTP, OpenVPN, DNS/DHCP and firewall segmentation.**

[English](#english) Â· [EspaÃ±ol](#espaÃ±ol)

---

## English

### Overview

**Voltavis Infrastructure Lab** is a professional infrastructure laboratory designed to simulate the technical environment of a small hosting company or internal service provider.

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
â”œâ”€â”€ docs/
â”‚   â”œâ”€â”€ architecture.md
â”‚   â””â”€â”€ screenshots/
â”œâ”€â”€ examples/
â”‚   â”œâ”€â”€ openvpn/
â”‚   â”œâ”€â”€ pillars/
â”‚   â””â”€â”€ ssh/
â”œâ”€â”€ salt/
â”‚   â”œâ”€â”€ ca/
â”‚   â”œâ”€â”€ firewall/
â”‚   â”œâ”€â”€ vpn/
â”‚   â”œâ”€â”€ sftp/
â”‚   â”œâ”€â”€ webserver/
â”‚   â””â”€â”€ top.sls
â”œâ”€â”€ .gitignore
â”œâ”€â”€ LICENSE
â”œâ”€â”€ README.md
â””â”€â”€ SECURITY.md
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

- Add a visual network diagram.
- Add deployment screenshots.
- Add a step-by-step deployment guide.
- Add automated validation checks.
- Add pre-commit secret scanning.
- Improve public/private SaltStack data separation.

---

### Author

Created by [xml2811](https://github.com/xml2811) as part of a professional portfolio focused on systems, networking, Linux, automation and infrastructure.

---

## EspaÃ±ol

### DescripciÃ³n general

**Voltavis Infrastructure Lab** es un laboratorio profesional de infraestructura diseÃ±ado para simular el entorno tÃ©cnico de una pequeÃ±a empresa de hosting o proveedor interno de servicios.

El proyecto utiliza **SaltStack**, **Debian** y **VirtualBox** para automatizar el despliegue y la configuraciÃ³n de mÃºltiples servicios Linux, incluyendo servidor web, acceso VPN, SFTP, DNS, DHCP, conceptos de autoridad certificadora y segmentaciÃ³n de red/firewall.

Este repositorio estÃ¡ pensado como proyecto de portfolio para demostrar habilidades prÃ¡cticas en administraciÃ³n de sistemas Linux, redes, automatizaciÃ³n e infraestructura como cÃ³digo.

---

### QuÃ© demuestra este proyecto

- AdministraciÃ³n de sistemas Linux con Debian.
- AutomatizaciÃ³n de infraestructura mediante estados de SaltStack.
- Despliegue de laboratorio multiservicio en VirtualBox.
- ConfiguraciÃ³n de servidor web con Apache.
- GestiÃ³n de acceso por SFTP.
- Conceptos de VPN usando OpenVPN.
- Servicios internos de DNS y DHCP.
- Reglas de firewall y segmentaciÃ³n de trÃ¡fico.
- DiseÃ±o de red estilo LAN/DMZ.
- SanitizaciÃ³n de repositorios con enfoque de seguridad.
- DocumentaciÃ³n de componentes de infraestructura.

---

### TecnologÃ­as utilizadas

| Ãrea | TecnologÃ­a |
|---|---|
| Sistema operativo | Debian 12 |
| AutomatizaciÃ³n | SaltStack |
| VirtualizaciÃ³n | VirtualBox |
| Servidor web | Apache |
| Acceso remoto | OpenVPN |
| Acceso a ficheros | SFTP |
| Servicios de red | DNS / DHCP |
| Seguridad | Firewall, conceptos de CA, segmentaciÃ³n |
| Scripting | Bash |

---

### Estructura del repositorio

```text
.
â”œâ”€â”€ docs/
â”‚   â”œâ”€â”€ architecture.md
â”‚   â””â”€â”€ screenshots/
â”œâ”€â”€ examples/
â”‚   â”œâ”€â”€ openvpn/
â”‚   â”œâ”€â”€ pillars/
â”‚   â””â”€â”€ ssh/
â”œâ”€â”€ salt/
â”‚   â”œâ”€â”€ ca/
â”‚   â”œâ”€â”€ firewall/
â”‚   â”œâ”€â”€ vpn/
â”‚   â”œâ”€â”€ sftp/
â”‚   â”œâ”€â”€ webserver/
â”‚   â””â”€â”€ top.sls
â”œâ”€â”€ .gitignore
â”œâ”€â”€ LICENSE
â”œâ”€â”€ README.md
â””â”€â”€ SECURITY.md
```

---

### Nota de seguridad

Este repositorio ha sido limpiado antes de publicarse.

No incluye claves privadas reales, perfiles VPN reales, contraseÃ±as, tokens, archivos `.env`, configuraciÃ³n de producciÃ³n ni datos sensibles de SaltStack Pillar.

Cualquier credencial, clave o certificado necesario para ejecutar el laboratorio debe generarse localmente y nunca debe subirse al repositorio.

---

### Estado del proyecto

Proyecto de laboratorio finalizado y preparado para uso como portfolio.

Posibles mejoras futuras:

- AÃ±adir un diagrama visual de red.
- AÃ±adir capturas del despliegue.
- AÃ±adir guÃ­a paso a paso de despliegue.
- AÃ±adir validaciones automÃ¡ticas.
- AÃ±adir escaneo de secretos antes de cada commit.
- Mejorar la separaciÃ³n entre datos pÃºblicos y privados de SaltStack.

---

### Autor

Creado por [xml2811](https://github.com/xml2811) como parte de un portfolio profesional enfocado en sistemas, redes, Linux, automatizaciÃ³n e infraestructura.
