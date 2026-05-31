# PostgreSQL objects

This directory stores PostgreSQL database objects for Portal Omen.

The folder structure follows the physical database model:

- `postgres/` - PostgreSQL system database. Project objects are not created here.
- `PORTAL/` - `PORTAL` database for the platform, portal and admin modules.
- `TOOL/` - `TOOL` database for tool-specific schemas and data marts.

Frontend and API must not depend on this folder layout directly. They work through API contracts.
