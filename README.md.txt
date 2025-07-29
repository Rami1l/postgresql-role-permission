# PostgreSQL RBAC Project – Role-Based Access Control

This project demonstrates a clean and scalable implementation of Role-Based Access Control (RBAC) in PostgreSQL using a layered role structure.

## 🔧 Structure

- `schema_and_tables.sql`: Creates the database schema and base tables under the `sales` schema.
- `rbac_permissions.sql`: Defines fine-grained permission roles (e.g., SELECT on `customers`, INSERT on `orders`, etc.).
- `roles_and_users.sql`: Defines business/group roles and assigns permissions and users to appropriate roles.

## 👥 Roles Overview

| Business Role        | Permissions                                               |
|----------------------|-----------------------------------------------------------|
| `role_sales_analyst` | SELECT from `customers`, `orders`, `ordersarchive`        |
| `role_inventory_team`| INSERT `orders`, UPDATE `products`                        |
| `role_admin`         | Full access to all tables in `sales` schema               |

## 📚 Purpose

The project follows RBAC best practices by separating:
- **Permission roles** (fine-grained access to objects)
- **Group roles** (business-level responsibilities)
- **Users** (login accounts)

This design allows for clear separation of concerns, simplified permission audits, and flexible access management.

## ✅ Usage

1. Run the files in the following order:
   - `schema_and_tables.sql`
   - `rbac_permissions.sql`
   - `roles_and_users.sql`
2. Connect as different users (`fares`, `ahmed`, `rami`) to test access.
