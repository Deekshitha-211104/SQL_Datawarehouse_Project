/*
************************************
DDL Script : Create Bronze Tables
************************************
Script Purpose :
    This script creates tables in the 'bronze' schema 
    Run this script to re-define the DDL structure of 'bronze' Tables.
__________________________________________________________________________
*/


CREATE TABLE bronze.crm_cust_info(
cst_id INT,
cst_key NVARCHAR(50),
cst_firstname NVARCHAR(50),
cst_lastname NVARCHAR(50),
cst_marital_status NVARCHAR(50),
cst_gndr NVARCHAR(50),
cst_create_date DATE)

CREATE TABLE bronze.crm_prd_info(
prd_id INT,
prd_key NVARCHAR(50)
,prd_nm NVARCHAR(50),
prd_cost INT,
prd_line NVARCHAR(50),
prd_start_dt DATE,
prd_end_dt DATE
)

CREATE TABLE bronze.crm_sales_details(
sls_ord_num NVARCHAR(50),
sls_prd_key NVARCHAR(50),
sls_cust_id INT,
sls_order_dt INT,
sls_ship_dt INT,
sls_due_dt INT,
sls_sales INT,
sls_quantity INT,
sls_price INT
)

CREATE TABLE bronze.erp_CUST_AZ12(
CID NVARCHAR(50),
BDATE DATE,
GEN NVARCHAR(10)
)

CREATE TABLE bronze.erp_LOC_A101(
CID NVARCHAR(50),
CNTRY NVARCHAR(50)
)

CREATE TABLE bronze.erp_PX_CAT_G1V2(
ID NVARCHAR(10),
CAT NVARCHAR(20),
SUBCAT NVARCHAR(20),
MAINTENANCE NVARCHAR(5)
)

