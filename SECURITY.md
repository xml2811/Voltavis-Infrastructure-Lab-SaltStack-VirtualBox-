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

## Espanol

Este repositorio es un laboratorio de infraestructura sanitizado y preparado para uso educativo y de portfolio.

Nunca deben subirse al repositorio:

- Claves privadas.
- Certificados reales.
- Perfiles VPN reales.
- Contrasenas.
- API keys.
- Tokens.
- Archivos `.env`.
- Configuracion de produccion.
- Datos sensibles de SaltStack Pillar.

Si se necesitan archivos sensibles para ejecutar el laboratorio, deben generarse localmente y mantenerse fuera del control de versiones.

Si encuentras informacion sensible en este repositorio, abre una issue o contacta con el propietario.