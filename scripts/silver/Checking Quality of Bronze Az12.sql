-- Out of Range Dates
SELECT DISTINCT
bdate
FROM silver.erp_CUST_AZ12
WHERE bdate < '1920-01-01' OR bdate > GETDATE()

-- Data Standardization & Consistency
SELECT DISTINCT 
gen
FROM silver.erp_CUST_AZ12
