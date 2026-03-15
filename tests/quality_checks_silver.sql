/*
=========================================================================================================================================================
Quality Checks
=========================================================================================================================================================
Script Purpose:
    This script performs various quality checks for data consistency, accuracy, and standardization across the 'silver' schemas. It includes checks for:
    - Null or duplicate primary keys.
    - Unwanted spaces in string fields.
    - Data standardization and consistency.
    - Invalid date ranges and orders.
    - Data consistency between related fields.

Usage Notes:
    - Run these checks after data loading Silver Layer.
    - Investigate and resolve any discrepancies found during the checks.
*/
-- *******************************************************************************************************************************************************
-- Checking 'silver_crm_cust_info'
-- *******************************************************************************************************************************************************

USE DataWarehouse;

SELECT cst_id
    ,cst_key
    ,cst_firstname
    ,cst_lastname
    ,cst_marital_status
    ,cst_gndr
    ,cst_create_date
    ,dwh_create_date
FROM silver_crm_cust_info
LIMIT 1000;

-- 1. Check For Nulls or Duplicates in Primary Key
--   (Expectations: No Results.

SELECT cst_id,
       COUNT(*) AS TotalRows
FROM silver_crm_cust_info
GROUP BY cst_id
HAVING COUNT(*) > 1 OR cst_id IS NULL
ORDER BY cst_id;                                                -- OK

-- 2. Check for unwanted spaces in string values
--    Expectations: No Results

SELECT cst_key
FROM silver_crm_cust_info
WHERE cst_key != TRIM(cst_key);                                 -- OK

SELECT cst_firstname
FROM silver_crm_cust_info
WHERE cst_firstname != TRIM(cst_firstname);                     -- OK

SELECT cst_lastname
FROM silver_crm_cust_info
WHERE cst_lastname != TRIM(cst_lastname);                       -- OK

SELECT cst_marital_status
FROM silver_crm_cust_info
WHERE cst_marital_status != TRIM(cst_marital_status);           -- OK -->>>> Check for: LOW CARDINALITY INCONSISTENCY in 3. DATA STANDARDIZATION & CONSISTENCY

SELECT cst_gndr
FROM silver_crm_cust_info
WHERE cst_gndr != TRIM(cst_gndr);                               -- OK -->>>> Check for: LOW CARDINALITY INCONSISTENCY in 3. DATA STANDARDIZATION & CONSISTENCY

-- *******************************************************************************************************************************************************
-- Checking 'silver_crm_prd_info'
-- *******************************************************************************************************************************************************

USE DataWarehouse;

SELECT prd_id,
       cat_id,
       prd_key,
       prd_nm,
       prd_cost,
       prd_line,
       prd_start_dt,
       prd_end_dt,
       dwh_create_date
FROM silver_crm_prd_info;

-- 1. Check For Nulls or Duplicates in Primary Key
--    (Expectations: No Results)

SELECT prd_id,
       COUNT(*) AS row_count
FROM silver_crm_prd_info
GROUP BY prd_id
HAVING COUNT(*) > 1 OR prd_id IS NULL
ORDER BY prd_id;

-- 2. Search for Data Quality Issues with the prd_nm column
--    Observation: Check for unwanted spaces:
--    (Expectations: No Results)

SELECT prd_nm
FROM silver_crm_prd_info
WHERE prd_nm != TRIM(prd_nm);

-- 3. Search for Data Quality Issues with the prd_cost column
--    Check for NULL or Negative Numbers
--    Expectation: No Results

SELECT prd_cost
FROM silver_crm_prd_info
WHERE prd_cost < 0 OR prd_cost IS NULL;

-- 4. Search for Data Quality Issues with the prd_line column
--    DATA STANDARDIZATION & CONSISTENCY: LOW CARDINALITY ISSUE

SELECT DISTINCT prd_line
FROM silver_crm_prd_info;

-- 5. Search for Data Quality Issues with the prd_start_dt and prd_end_dt columns
--    Check for Invalid Date Orders: start_date > end_date
--    (Expectations: No Results)

SELECT *
FROM silver_crm_prd_info
WHERE prd_end_dt < prd_start_dt;

-- FINAL LOOK *****

SELECT * FROM silver_crm_prd_info;

-- *******************************************************************************************************************************************************
-- Checking 'silver_crm_sales_details'
-- *******************************************************************************************************************************************************

-- 1. Search for Data Quality Issues with the sls_ord_num column
--    Result: No Results

SELECT sls_ord_num
FROM silver_crm_sales_details
WHERE sls_ord_num != TRIM(sls_ord_num);

-- 3.2 Check the sls_order_dt, sls_ship_dt, sls_due_dt columns
-- sls_order_dt must always be earlier than sls_ship_dt or sls_due_dt

SELECT *
FROM silver_crm_sales_details
WHERE sls_order_dt > sls_ship_dt
   OR sls_order_dt > sls_due_dt;

-- 4. Check the DATA CONSISTENCY of these columns:
--    sls_sales | sls_quantity | sls_price
--    Result: No Results

SELECT DISTINCT sls_sales,
                sls_quantity,
                sls_price
FROM silver_crm_sales_details
WHERE sls_sales != sls_quantity * sls_price
   OR sls_sales IS NULL
   OR sls_quantity IS NULL
   OR sls_price IS NULL
   OR sls_sales <= 0
   OR sls_quantity <= 0
   OR sls_price <= 0
ORDER BY sls_sales, sls_quantity, sls_price;

-- FINAL LOOK *****

SELECT * FROM silver_crm_sales_details;

-- *******************************************************************************************************************************************************
-- Checking 'silver_erp_cust_az12'
-- *******************************************************************************************************************************************************

-- 1. The cid column can connect to the other table because it includes 3 extra characters
--    Expectation: No Results

SELECT CASE
           WHEN cid LIKE 'NAS%' THEN SUBSTRING(cid, 4)
           ELSE cid
       END AS cid,
       bdate,
       gen
FROM silver_erp_cust_az12
WHERE CASE
          WHEN cid LIKE 'NAS%' THEN SUBSTRING(cid, 4)
          ELSE cid
      END NOT IN (
          SELECT DISTINCT cst_key
          FROM silver_crm_cust_info
      );

-- 2. Check the bdate column -- date datatype
--    Check if bdate is Out of Range
--    Expectation: No Results

SELECT DISTINCT bdate
FROM silver_erp_cust_az12
WHERE bdate > CURRENT_DATE();

-- 3. Check the gen column: DATA STANDARDIZATION & CONSISTENCY
--    LOW CARDINALITY column - Check all possible values

SELECT DISTINCT gen
FROM silver_erp_cust_az12;

-- FINAL LOOK *****

SELECT *
FROM silver.erp_cust_az12;

-- *******************************************************************************************************************************************************
-- Checking 'silver_erp_loc_a101'
-- *******************************************************************************************************************************************************

USE DataWarehouse;

-- 1. Check the Data Quality - cid column
-- Testing the Output for bringing results NOT IN crm_cust_info
-- Result: No results

SELECT REPLACE(cid, '-', '') AS cid
FROM silver_erp_loc_a101
WHERE REPLACE(cid, '-', '') NOT IN (
    SELECT cst_key
    FROM silver_crm_cust_info
);

-- 2. Check the cntry column: DATA STANDARDIZATION & CONSISTENCY

SELECT DISTINCT cntry AS old_cntry,
       CASE
           WHEN TRIM(cntry) = 'DE' THEN 'Germany'
           WHEN TRIM(cntry) IN ('US', 'USA') THEN 'United States'
           WHEN TRIM(cntry) = '' OR cntry IS NULL THEN 'n/a'
           ELSE TRIM(cntry)
       END AS cntry
FROM silver_erp_loc_a101;

-- FINAL LOOK *****

SELECT * FROM silver_erp_loc_a101;

-- *******************************************************************************************************************************************************
-- Checking 'silver_erp_px_cat_g1v2'
-- *******************************************************************************************************************************************************

USE DataWarehouse;

---  FINAL LOOK *****

SELECT * FROM silver_erp_px_cat_g1v2;

----------------------------------------------------------------------------------------------------------------------------------------------------------
