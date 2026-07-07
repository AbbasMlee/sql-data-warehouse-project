/* 

Creating Database with Schemas

Script crates a new database named "DataWarehouse" after chcking if it already exists.
If the databse exists, it's dropped and recreated. The script ceates 'bronze', 'silver', 'gold' schemas.

NOTE:
  Running the script will dropm the entire 'DataWarehouse' database if it exists. All data in the database will be permanently
  lost. Ensure you have proper backups before running this script.
*/


USE master;
GO

--Drop and recreate 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END
GO

-- Create databaswe named DataWarehouse
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

--Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
