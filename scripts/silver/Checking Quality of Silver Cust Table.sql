-- Check for nulls or duplicates in Primary Key
-- Expectation: No Results
SELECT 
cst_id,
COUNT(*)
FROM silver.crm_cust_info
GROUP BY cst_id
HAVING COUNT(*) > 1 OR cst_id IS NULL

-- Check for Unwanted Spaces
-- Expectation: No Results
SELECT cst_key
FROM silver.crm_cust_info
WHERE cst_key != TRIM(cst_key)

-- Data Standardization & Consostency
SELECT DISTINCT cst_martial_status
FROM silver.crm_cust_info

SELECT DISTINCT cst_gndr
FROM silver.crm_cust_info

SELECT *
FROM silver.crm_cust_info
