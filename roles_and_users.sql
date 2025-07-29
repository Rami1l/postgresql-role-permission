-- Create group roles to represent business-level responsibilities
CREATE ROLE role_sales_analyst;
CREATE ROLE role_inventory_team;
CREATE ROLE role_admin;

-- Assign permission roles to each group role
-- Sales Analyst: can only read from selected tables
GRANT perm_select_orders TO role_sales_analyst;
GRANT perm_select_archive TO role_sales_analyst;

-- Inventory Team: can insert and update specific tables
GRANT perm_insert_orders TO role_inventory_team;
GRANT perm_update_products TO role_inventory_team;

-- Admin: full access to all tables
GRANT perm_full_all TO role_admin;


-- Create users with login credentials
CREATE USER fares WITH PASSWORD '1234fares';
CREATE USER ahmed WITH PASSWORD '1234ahmed';
CREATE USER rami  WITH PASSWORD '1234rami';

-- Assign each user to their corresponding group role
GRANT role_sales_analyst TO fares;
GRANT role_inventory_team TO ahmed;
GRANT role_admin TO rami;