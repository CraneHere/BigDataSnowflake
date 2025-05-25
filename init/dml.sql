INSERT INTO customers (first_name, last_name, age, email, country, postal_code, pet_type, pet_name, pet_breed)
SELECT DISTINCT
    customer_first_name, customer_last_name, customer_age, customer_email,
    customer_country, customer_postal_code,
    customer_pet_type, customer_pet_name, customer_pet_breed
FROM raw_sales_data;

INSERT INTO sellers (first_name, last_name, email, country, postal_code)
SELECT DISTINCT
    seller_first_name, seller_last_name, seller_email, seller_country, seller_postal_code
FROM raw_sales_data;

INSERT INTO sellers (first_name, last_name, email, country, postal_code)
SELECT DISTINCT
    seller_first_name, seller_last_name, seller_email, seller_country, seller_postal_code
FROM raw_sales_data;

INSERT INTO stores (name, location, city, state, country, phone, email)
SELECT DISTINCT
    store_name, store_location, store_city, store_state, store_country, store_phone, store_email
FROM raw_sales_data;

INSERT INTO stores (name, location, city, state, country, phone, email)
SELECT DISTINCT
    store_name, store_location, store_city, store_state, store_country, store_phone, store_email
FROM raw_sales_data;

INSERT INTO fact_sales (
    customer_id, seller_id, product_id, store_id, supplier_id,
    sale_date, quantity, total_price
)
SELECT
    c.customer_id,
    s.seller_id,
    p.product_id,
    st.store_id,
    sp.supplier_id,
    r.sale_date,
    r.sale_quantity,
    r.sale_total_price
FROM raw_sales_data r
JOIN customers c ON r.customer_email = c.email
JOIN sellers s ON r.seller_email = s.email
JOIN products p ON r.product_name = p.name AND r.product_brand = p.brand
JOIN stores st ON r.store_name = st.name AND r.store_email = st.email
JOIN suppliers sp ON r.supplier_email = sp.email;

