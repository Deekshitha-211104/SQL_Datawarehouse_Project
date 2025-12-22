/*
==================================================================
Stored Procedure : Load Bronze Layer (Source -> Bronze)
==================================================================

Script Purpose:
   Uses the 'BULK INSERT' command to load data from csv Files to bronze tables.
============================================================================
*/


BULK INSERT bronze.crm_prd_info
FROM "C:\Users\deeks_w4ub1k8\OneDrive\Desktop\sql-data-warehouse-project-main\datasets\source_crm\prd_info.csv"
WITH(
FIRSTROW = 2,
FIELDTERMINATOR=',',
TABLOCK
);

BULK INSERT bronze.crm_sales_details
FROM "C:\Users\deeks_w4ub1k8\OneDrive\Desktop\sql-data-warehouse-project-main\datasets\source_crm\sales_details.csv"
WITH(
FIRSTROW=2,
FIELDTERMINATOR=',',
TABLOCK
);

BULK INSERT bronze.erp_CUST_AZ12
FROM "C:\Users\deeks_w4ub1k8\OneDrive\Desktop\sql-data-warehouse-project-main\datasets\source_erp\CUST_AZ12.csv"
WITH(
FIRSTROW=2,
FIELDTERMINATOR=',',
TABLOCK
);

BULK INSERT bronze.erp_LOC_A101
FROM "C:\Users\deeks_w4ub1k8\OneDrive\Desktop\sql-data-warehouse-project-main\datasets\source_erp\LOC_A101.csv"
WITH(
FIRSTROW=2,
FIELDTERMINATOR=',',
TABLOCK
);

BULK INSERT bronze.erp_PX_CAT_G1V2
FROM "C:\Users\deeks_w4ub1k8\OneDrive\Desktop\sql-data-warehouse-project-main\datasets\source_erp\PX_CAT_G1V2.csv"
WITH(
FIRSTROW=2,
FIELDTERMINATOR=',',
TABLOCK
);
