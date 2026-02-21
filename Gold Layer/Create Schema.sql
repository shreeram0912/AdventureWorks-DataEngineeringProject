CREATE SCHEMA gold;


SELECT
    *
    FROM
        OPENROWSET(
            BULK 'https://datalakeadventureworks1.dfs.core.windows.net/silver/AdventureWorks_Calendar',
            FORMAT ='PARQUET'
        ) as query1
        