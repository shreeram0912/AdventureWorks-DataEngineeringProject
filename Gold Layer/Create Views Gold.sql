--- Create Calendar View
CREATE VIEW gold.calendar
AS SELECT * FROM
OPENROWSET(
    BULK 'https://datalakeadventureworks1.dfs.core.windows.net/silver/AdventureWorks_Calendar',
    FORMAT = 'PARQUET'
) AS Query1

--- Create Customers View
CREATE VIEW gold.customers
AS SELECT * FROM
OPENROWSET(
    BULK 'https://datalakeadventureworks1.dfs.core.windows.net/silver/AdventureWorks_Customers',
    FORMAT = 'PARQUET'
) AS Query1


--- Create Product_Subcategories View
CREATE VIEW gold.product_subcategories
AS SELECT * FROM
OPENROWSET(
    BULK 'https://datalakeadventureworks1.dfs.core.windows.net/silver/AdventureWorks_Product_Subcategories',
    FORMAT = 'PARQUET'
) AS Query1


--- Create Products View
CREATE VIEW gold.products
AS SELECT * FROM
OPENROWSET(
    BULK 'https://datalakeadventureworks1.dfs.core.windows.net/silver/AdventureWorks_Products',
    FORMAT = 'PARQUET'
) AS Query1


--- Create Returns View
CREATE VIEW gold.returns
AS SELECT * FROM
OPENROWSET(
    BULK 'https://datalakeadventureworks1.dfs.core.windows.net/silver/AdventureWorks_Returns',
    FORMAT = 'PARQUET'
) AS Query1


--- Create Sales View
CREATE VIEW gold.sales
AS SELECT * FROM
OPENROWSET(
    BULK 'https://datalakeadventureworks1.dfs.core.windows.net/silver/AdventureWorks_Sales',
    FORMAT = 'PARQUET'
) AS Query1


--- Create Territories View
CREATE VIEW gold.territories
AS SELECT * FROM
OPENROWSET(
    BULK 'https://datalakeadventureworks1.dfs.core.windows.net/silver/AdventureWorks_Territories',
    FORMAT = 'PARQUET'
) AS Query1


--- Create Product_Category View
CREATE VIEW gold.product_categories
AS SELECT * FROM
OPENROWSET(
    BULK 'https://datalakeadventureworks1.dfs.core.windows.net/silver/AdventureWorks_Product_Categories',
    FORMAT = 'PARQUET'
) AS Query1
