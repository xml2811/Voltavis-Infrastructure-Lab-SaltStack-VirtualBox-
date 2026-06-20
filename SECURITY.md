# Security Policy

## English

This repository is a sanitized infrastructure lab intended for educational and portfolio purposes.

The following files must never be committed:

- Private keys.
- Real certificates.
- VPN client profiles.
- Passwords.
- API keys.
- Tokens.
- `.env` files.
- Production configuration.
- Sensitive SaltStack Pillar data.

If sensitive files are required to run the lab, they must be generated locally and excluded from version control.

If you find sensitive information in this repository, please open an issue or contact the repository owner.

---

## EspaÃ±ol

Este repositorio es un laboratorio de infraestructura sanitizado y preparado para uso educativo y de portfolio.

Nunca deben subirse al repositorio:

- Claves privadas.
- Certificados reales.
- Perfiles VPN reales.
- ContraseÃ±as.
- API keys.
- Tokens.
- Archivos `.env`.
- ConfiguraciÃ³n de producciÃ³n.
- Datos sensibles de SaltStack Pillar.

Si se necesitan archivos sensibles para ejecutar el laboratorio, deben generarse localmente y mantenerse fuera del control de versiones.

Si encuentras informaciÃ³n sensible en este repositorio, abre una issue o contacta con el propietario.
