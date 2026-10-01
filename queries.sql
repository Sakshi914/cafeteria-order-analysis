-- Check available order-related tables
SHOW TABLES LIKE '%order%';

-- Check item/dish-related tables
SHOW TABLES LIKE '%dish%';

-- Inspect orders table structure
DESCRIBE orders;

-- Inspect carts table structure
DESCRIBE carts;

-- Extract transaction-level fields for Python analysis
SELECT
    id,
    order_date,
    branch_id,
    user_id,
    sub_total,
    tax_amount,
    discount_amount,
    grand_total,
    mode_of_transaction,
    order_through,
    order_status,
    is_refunded
FROM orders
LIMIT 50000;

-- Additional extract from a later portion of the table
SELECT
    id,
    order_date,
    branch_id,
    user_id,
    sub_total,
    tax_amount,
    discount_amount,
    grand_total,
    mode_of_transaction,
    order_through,
    order_status,
    is_refunded
FROM orders
WHERE id > 5000000
LIMIT 50000;

-- Additional extract from another portion
SELECT
    id,
    order_date,
    branch_id,
    user_id,
    sub_total,
    tax_amount,
    discount_amount,
    grand_total,
    mode_of_transaction,
    order_through,
    order_status,
    is_refunded
FROM orders
WHERE id > 7000000
LIMIT 50000;