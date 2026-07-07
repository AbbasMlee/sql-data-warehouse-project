/* This query is used to add data to tables in bronze schema. */


TRUNCATE TABLE bronze.crm_cust_info;

BULK INSERT bronze.crm_cust_info
FROM 'file_path\file_name.csv'
WITH (
	FIRSTROW = 2,
	FIELDTERMINATOR = ',',
	TABLOCK
);

-- ==================================================================================================================================== --

TRUNCATE TABLE bronze.crm_prd_info;

BULK INSERT bronze.crm_prd_info
FROM 'file_path\file_name.csv'
WITH (
	FIRSTROW = 2,
	FIELDTERMINATOR = ',',
	TABLOCK
);

-- ==================================================================================================================================== --

TRUNCATE TABLE bronze.crm_sales_details;

BULK INSERT bronze.crm_sales_details
FROM 'file_path\file_name.csv'
WITH (
	FIRSTROW = 2,
	FIELDTERMINATOR = ',',
	TABLOCK
);

-- ==================================================================================================================================== --

TRUNCATE TABLE bronze.erp_CUST_AZ12;

BULK INSERT bronze.erp_CUST_AZ12
FROM 'file_path\file_name.csv'
WITH (
	FIRSTROW = 2,
	FIELDTERMINATOR = ',',
	TABLOCK
);

-- ==================================================================================================================================== --

TRUNCATE TABLE bronze.erp_LOC_A101;

BULK INSERT bronze.erp_LOC_A101
FROM 'file_path\file_name.csv'
WITH (
	FIRSTROW = 2,
	FIELDTERMINATOR = ',',
	TABLOCK
);

-- ==================================================================================================================================== --

TRUNCATE TABLE bronze.erp_PX_CAT_G1V2;

BULK INSERT bronze.erp_PX_CAT_G1V2
FROM 'file_path\file_name.csv'
WITH (
	FIRSTROW = 2,
	FIELDTERMINATOR = ',',
	TABLOCK
);
