-- Optional: choose database
USE DataWarehouse;

SET @bronze_batch_start_time = NOW();

-- ==========================================================
-- Truncate Bronze Tables
-- ==========================================================

TRUNCATE TABLE bronze_crm_cust_info;
TRUNCATE TABLE bronze_crm_prd_info;
TRUNCATE TABLE bronze_crm_sales_details;

TRUNCATE TABLE bronze_erp_cust_az12;
TRUNCATE TABLE bronze_erp_loc_a101;
TRUNCATE TABLE bronze_erp_px_cat_g1v2;

-- ==========================================================
-- Load CRM Tables
-- ==========================================================

LOAD DATA INFILE '/var/lib/mysql-files/cust_info.csv'
INTO TABLE bronze_crm_cust_info
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@cst_id, cst_key, cst_firstname, cst_lastname, cst_marital_status, cst_gndr, @cst_create_date)
SET
cst_id = NULLIF(@cst_id,''),
cst_create_date = NULLIF(TRIM(REPLACE(@cst_create_date,'\r','')),'');

LOAD DATA INFILE '/var/lib/mysql-files/prd_info.csv'
INTO TABLE bronze_crm_prd_info
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(prd_id, prd_key, prd_nm, @prd_cost, prd_line, @prd_start_dt, @prd_end_dt)
SET
prd_cost = NULLIF(@prd_cost,''),
prd_start_dt = NULLIF(TRIM(REPLACE(@prd_start_dt,'\r','')),''),
prd_end_dt = NULLIF(TRIM(REPLACE(@prd_end_dt,'\r','')),'');

LOAD DATA INFILE '/var/lib/mysql-files/sales_details.csv'
INTO TABLE bronze_crm_sales_details
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(sls_ord_num, sls_prd_key, sls_cust_id, @sls_order_dt, @sls_ship_dt, @sls_due_dt, @sls_sales, sls_quantity, @sls_price)
SET
sls_order_dt = NULLIF(TRIM(REPLACE(@sls_order_dt,'\r','')),''),
sls_ship_dt = NULLIF(TRIM(REPLACE(@sls_ship_dt,'\r','')),''),
sls_due_dt = NULLIF(TRIM(REPLACE(@sls_due_dt,'\r','')),''),
sls_sales = NULLIF(TRIM(REPLACE(@sls_sales,'\r','')),''),
sls_price = NULLIF(TRIM(REPLACE(@sls_price,'\r','')),'');

-- ==========================================================
-- Load ERP Tables
-- ==========================================================

LOAD DATA INFILE '/var/lib/mysql-files/cust_az12.csv'
INTO TABLE bronze_erp_cust_az12
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE '/var/lib/mysql-files/loc_a101.csv'
INTO TABLE bronze_erp_loc_a101
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE '/var/lib/mysql-files/px_cat_g1v2.csv'
INTO TABLE bronze_erp_px_cat_g1v2
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- ==========================================================
-- Row Counts
-- ==========================================================

SELECT 'bronze_crm_cust_info' AS table_name, COUNT(*) AS row_count FROM bronze_crm_cust_info
UNION ALL
SELECT 'bronze_crm_prd_info', COUNT(*) FROM bronze_crm_prd_info
UNION ALL
SELECT 'bronze_crm_sales_details', COUNT(*) FROM bronze_crm_sales_details
UNION ALL
SELECT 'bronze_erp_cust_az12', COUNT(*) FROM bronze_erp_cust_az12
UNION ALL
SELECT 'bronze_erp_loc_a101', COUNT(*) FROM bronze_erp_loc_a101
UNION ALL
SELECT 'bronze_erp_px_cat_g1v2', COUNT(*) FROM bronze_erp_px_cat_g1v2;

-- ==========================================================
-- Load Duration
-- ==========================================================

SELECT
@bronze_batch_start_time AS batch_start_time,
NOW() AS batch_end_time,
TIMESTAMPDIFF(SECOND,@bronze_batch_start_time,NOW()) AS total_load_seconds;

SELECT 'Bronze Load Completed Successfully' AS msg;