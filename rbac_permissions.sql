-- Create permission roles for fine-grained access control

CREATE ROLE perm_select_customers;
CREATE ROLE perm_select_orders;
CREATE ROLE perm_select_archive;

CREATE ROLE perm_insert_orders;
CREATE ROLE perm_update_products;

CREATE ROLE perm_full_all;


-- Grant actual permissions to the roles
GRANT SELECT ON sales.customers TO perm_select_customers;
GRANT SELECT ON sales.orders TO perm_select_orders;
GRANT SELECT ON sales.ordersarchive TO perm_select_archive;

GRANT INSERT ON sales.orders TO perm_insert_orders;
GRANT UPDATE ON sales.products TO perm_update_products;

GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA sales TO perm_full_all;