-- Creating External Table in Synapse Analytics follows 3 step process:
CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'Home@123'
-- 1. Credential - Pick the data using managed identity, SAS Token or CLI 
CREATE DATABASE SCOPED CREDENTIAL cred_ram
WITH
    IDENTITY = 'Managed Identity'
-- 2. External Data Source - when we don't want to use URL for all tables reading 
-- need to create separate external data source for gold and silve
CREATE EXTERNAL DATA SOURCE source_silver
WITH
    (
        LOCATION = 'https://datalakeadventureworks1.dfs.core.windows.net/silver',
        CREDENTIAL = cred_ram
    )

-- Gold
CREATE EXTERNAL DATA SOURCE source_gold
WITH
    (
        LOCATION = 'https://datalakeadventureworks1.dfs.core.windows.net/gold',
        CREDENTIAL = cred_ram
    )


-- 3. External File Format - Define format
CREATE EXTERNAL FILE FORMAT format_parquet
WITH
    (
        FORMAT_TYPE = PARQUET,
        DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
    )

------------------------------------
-- CREATE EXTERNAL TABLES
-------------------------------------

CREATE EXTERNAL TABLE gold.externalsales
WITH
    (
        LOCATION = 'externalsales',
        DATA_SOURCE = source_gold,
        FILE_FORMAT = format_parquet
    ) AS
    SELECT * FROM gold.sales

