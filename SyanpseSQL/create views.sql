CREATE VIEW gold.customers
	AS SELECT * FROM  OPENROWSET
        (
            BULK 'https://awsstoragedatalakeilk.blob.core.windows.net/silver/AdventureWorks_Customers/',
            FORMAT = 'PARQUET'
        ) as QUER1

CREATE VIEW gold.calendar
	AS SELECT * FROM  OPENROWSET
        (
            BULK 'https://awsstoragedatalakeilk.blob.core.windows.net/silver/AdventureWorks_Calendar/',
            FORMAT = 'PARQUET'
        ) as QUER1

CREATE VIEW gold.products
	AS SELECT * FROM  OPENROWSET
        (
            BULK 'https://awsstoragedatalakeilk.blob.core.windows.net/silver/AdventureWorks_Products/',
            FORMAT = 'PARQUET'
        ) as QUER1


CREATE VIEW gold.returns
	AS SELECT * FROM  OPENROWSET
        (
            BULK 'https://awsstoragedatalakeilk.blob.core.windows.net/silver/AdventureWorks_Returns/',
            FORMAT = 'PARQUET'
        ) as QUER1


CREATE VIEW gold.sales
	AS SELECT * FROM  OPENROWSET
        (
            BULK 'https://awsstoragedatalakeilk.blob.core.windows.net/silver/AdventureWorks_Sales/',
            FORMAT = 'PARQUET'
        ) as QUER1


CREATE VIEW gold.SubCategories
	AS SELECT * FROM  OPENROWSET
        (
            BULK 'https://awsstoragedatalakeilk.blob.core.windows.net/silver/AdventureWorks_SubCategories/',
            FORMAT = 'PARQUET'
        ) as QUER1



CREATE VIEW gold.Territories
	AS SELECT * FROM  OPENROWSET
        (
            BULK 'https://awsstoragedatalakeilk.blob.core.windows.net/silver/AdventureWorks_Territories/',
            FORMAT = 'PARQUET'
        ) as QUER1


