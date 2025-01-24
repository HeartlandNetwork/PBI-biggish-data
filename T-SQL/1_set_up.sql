

-- Create a new database named SampleDB
--CREATE DATABASE BioTIME;
--GO

-- Optionally, switch to the new database
USE BioTIME;
GO

DROP TABLE IF EXISTS dbo.obs_summary;

CREATE TABLE  dbo.obs_summary 
(
    ID INT,
    STUDYID INT,
    BDAY INT,
    BMONTH INT,
    BYEAR INT,
    SAMPLE_DESC  NVARCHAR(100),
    PLOT INT,
    ID_SPECIES INT,
    LATITUDE FLOAT,
    LONGITUDE FLOAT,
    SUM_ABUNDANCE INT,
    SUM_BIOMASS INT,
    GENUS  NVARCHAR(100),
    SPECIES  NVARCHAR(100),
    GENUS_SPECIES  NVARCHAR(200)
);
GO

BULK INSERT dbo.obs_summary
FROM 'C:\Users\GRowell\work\Databases\BioTIME\BioTIMEQuery_24_06_2021.csv'
WITH (
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n'
);


