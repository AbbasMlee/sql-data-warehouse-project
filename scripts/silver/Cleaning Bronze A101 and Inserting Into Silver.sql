INSERT INTO silver.erp_LOC_A101
(cid, cntry)
SELECT 
REPLACE(cid, '-', '') cid,
CASE WHEN UPPER(TRIM(cntry)) = 'DE'THEN 'Germany'
	WHEN UPPER(TRIM(cntry)) = 'US' THEN 'United States'
	WHEN UPPER(TRIM(cntry)) = 'USA' THEN 'United States'
	WHEN UPPER(TRIM(cntry)) = '' OR cntry IS NULL THEN 'n/a'
	ELSE TRIM(cntry)
END cntry
FROM bronze.erp_LOC_A101
