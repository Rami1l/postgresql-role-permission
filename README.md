# PostgreSQL Role-Permission Model

This project demonstrates how to implement Role-Based Access Control (RBAC) in PostgreSQL using SQL scripts.

##  Structure

The RBAC model is implemented in 3 layers:
1. **Permission Roles**: Fine-grained access (SELECT, INSERT, UPDATE, DELETE) on specific tables.
2. **Functional Roles**: Job-based roles (`role_admin`, `role_inventory_team`, `role_sales_analyst`) which inherit permission roles.
3. **Users**: Mapped to functional roles only.

##  Files

- `schema_and_tables.sql`: Creates the database schema (`sales`) and tables.
- `rbac_permissions.sql`: Creates permission roles and grants specific rights on tables.
- `roles_and_users.sql`: Creates users and functional roles, and assigns permissions accordingly.

##  Example Roles

| Role                 | Permissions                                              |
|----------------------|----------------------------------------------------------|
| `role_admin`         | Full access to all tables                                |
| `role_inventory_team`| Can insert/update on `orders`, `products`               |
| `role_sales_analyst` | Can read from `orders`, `ordersarchive`, `customers`     |

##  How to Use

1. Run `schema_and_tables.sql` to create tables.
2. Run `rbac_permissions.sql` to create permission roles.
3. Run `roles_and_users.sql` to create users and assign roles.





