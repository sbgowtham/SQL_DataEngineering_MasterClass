SCD (Slowly Changing Dimension) is a method used in databases to track and preserve historical changes in data over time.

Why We Use SCD

Track Historical Data: We want to retain older versions of our data for accurate historical analysis and trend reporting (e.g., how many sales happened when the customer had a different address).

Data Accuracy: Ensures that updates to dimension data (like a last name change) won’t override previous valid data in a way that confuses analysis.

Simplify Reporting and Analytics: Makes it easier for analysts to query the data, knowing they can trust the historical records.

Main Types of SCD

Type 1: Overwrite

Type 2: Add New Record

Type 3: Add New Attribute

Type 1

CREATE TABLE dim_product_type1 (
    product_id INT PRIMARY KEY,         
    product_title VARCHAR(255),
    category VARCHAR(100),
    brand VARCHAR(100)
);

INSERT INTO dim_product_type1 (product_id, product_title, category, brand)
VALUES (101, 'Amazon Echo Dot 3rd Gen', 'Smart Speakers', 'Amazon');

select * from dim_product_type1

UPDATE dim_product_type1
SET product_title = 'Amazon Echo Dot (3rd Gen)'
WHERE product_id = 101;

select * from dim_product_type1


Type 2 

CREATE TABLE dim_seller_type2 (
    seller_key INT PRIMARY KEY,        
    seller_id INT,                     
    seller_name VARCHAR(255),
    store_location VARCHAR(255),
    effective_date DATE,               
    end_date DATE,                     
    is_current BOOLEAN                
);

INSERT INTO dim_seller_type2 (seller_key, seller_id, seller_name, store_location, effective_date, end_date, is_current)
VALUES (1, 501, 'Best Sellers Inc.', 'Seattle, WA', '2022-01-01', NULL, TRUE);


select * from dim_seller_type2;

UPDATE dim_seller_type2
SET end_date = '2023-01-15',
    is_current = FALSE
WHERE seller_id = 501 AND is_current = TRUE;


select * from dim_seller_type2


INSERT INTO dim_seller_type2 (seller_key, seller_id, seller_name, store_location, effective_date, end_date, is_current)
VALUES (2, 501, 'Best Sellers Inc.', 'Los Angeles, CA', '2023-01-15', NULL, TRUE);


select * from dim_seller_type2 where seller_id = 501

Type 3 

CREATE TABLE dim_product_type3 (
    product_id INT PRIMARY KEY,         
    product_title VARCHAR(255),
    current_category VARCHAR(100),
    previous_category VARCHAR(100)       
);

INSERT INTO dim_product_type3 (product_id, product_title, current_category, previous_category)
VALUES (201, 'Amazon Fire TV Stick', 'Streaming Devices', NULL);


select * from dim_product_type3;

UPDATE dim_product_type3
SET previous_category = current_category,
    current_category = 'Media Players'
WHERE product_id = 201;


select * from dim_product_type3;
