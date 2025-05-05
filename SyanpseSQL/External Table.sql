CREATE DATABASE SCOPED CREDENTIAL cred_murat
WITH IDENTITY = 'Managed Identity'

CREATE EXTERNAL DATA SOURCE source_silver
WITH
    (
        LOCATION = 'https://awsstoragedatalakeilk.blob.core.windows.net/silver',
        CREDENTIAL = cred_murat
    )

CREATE EXTERNAL DATA SOURCE source_gold
WITH
    (
        LOCATION = 'https://awsstoragedatalakeilk.blob.core.windows.net/gold',
        CREDENTIAL = cred_murat
    )

CREATE EXTERNAL FILE FORMAT format_parquet
WITH
    (
        FORMAT_TYPE = PARQUET,
        DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
    )


CREATE EXTERNAL TABLE gold.extsales
WITH
    (
        LOCATION = 'extsales',
        DATA_SOURCE = source_gold,
        FILE_FORMAT = format_parquet
    )
AS
SELECT * FROM gold.sales



CREATE EXTERNAL TABLE gold.extcust
WITH
    (
        LOCATION = 'extcust',
        DATA_SOURCE = source_gold,
        FILE_FORMAT = format_parquet
    )
AS
SELECT * FROM gold.customers

CREATE EXTERNAL TABLE gold.extcal
WITH
    (
        LOCATION = 'extcal',
        DATA_SOURCE = source_gold,
        FILE_FORMAT = format_parquet
    )
AS
SELECT * FROM gold.calendar


CREATE EXTERNAL TABLE gold.extproducts
WITH
    (
        LOCATION = 'extproducts',
        DATA_SOURCE = source_gold,
        FILE_FORMAT = format_parquet
    )
AS 
SELECT * FROM gold.products

CREATE EXTERNAL TABLE gold.extreturns
WITH
    (
        LOCATION = 'extreturns',
        DATA_SOURCE = source_gold,
        FILE_FORMAT = format_parquet
    )
AS
SELECT * FROM gold.returns

CREATE EXTERNAL TABLE gold.extSubCat
WITH
    (
        LOCATION = 'extSubCat',
        DATA_SOURCE = source_gold,
        FILE_FORMAT = format_parquet
    )
AS
SELECT * FROM gold.SubCategories

CREATE EXTERNAL TABLE gold.extTerr
WITH
    (
        LOCATION = 'extTerr',
        DATA_SOURCE = source_gold,
        FILE_FORMAT = format_parquet
    )
AS
SELECT * FROM gold.Territories
SELECT * FROM gold.extTerr