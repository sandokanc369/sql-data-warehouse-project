/*
============================================================================================
Quality Checks
============================================================================================
Script Purpose:
    This script performs quality checks to validate the integrity, consistency, and accuracy 
    of the Gold layer.  These checks ensure:
    - Uniqueness of surrogate keys in dimension views.
    - Referential integrity between fact and dimension views.
    - Validation of relationships in the data model for analytical purposes.

Usage Notes:
    - Run these checks after data loading Silver Layer.
    - Investigate and resolve any discrepancies found during the checks.
*/

-- ========================================================================================
-- Checking 'gold.dim_customers'
-- ========================================================================================

USE DataWarehouse;
GO

SELECT * FROM [gold].[dim_customers];

-- Check for Uniqueness of Customer Key in gold.dim_customers
-- Expectation: No Results

SELECT
  customer_key
  ,COUNT(*) AS duplicate_count
FROM gold.dim_customers
GROUP BY customer_key
  HAVING COUNT(*) > 1;

-- Check Low Cardinality column
SELECT DISTINCT gender
FROM [gold].[dim_customers];

-- ========================================================================================
-- Checking 'gold.dim_products'
-- ========================================================================================

SELECT * FROM [gold].[dim_products];

-- ----------------------------------------------------------------------------------
-- ----------------------------------------------------------------------------------

SELECT * FROM [gold].[fact_sales];

-- 1. Foreign Key Integrity (Dimensions) : 
--    Check if all dimension views can be succesfully join to the fact view

-- First test the first join
-- Expectation: No Results

SELECT * FROM [gold].[fact_sales] f
LEFT JOIN [gold].[dim_customers] c
ON (f.customer_key = c.customer_key)
WHERE c.customer_key IS NULL;

-- Add the second join and test it
-- Expectation: No Results

SELECT * FROM [gold].[fact_sales] f
LEFT JOIN [gold].[dim_customers] c
ON (f.customer_key = c.customer_key)
LEFT JOIN [gold].[dim_products] p
ON (f.product_key = p.product_key)
WHERE p.product_key IS NULL;

---- Combination of Joins final Result

SELECT * FROM [gold].[fact_sales] f
LEFT JOIN [gold].[dim_customers] c
ON (f.customer_key = c.customer_key)
LEFT JOIN [gold].[dim_products] p
ON (f.product_key = p.product_key);
