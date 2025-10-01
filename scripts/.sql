/* Fuente CSV (GitHub):
   https://raw.githubusercontent.com/Ricardo-Ugarte/Powerbi-country-flags/main/data/countries_flags.csv
*/

IF OBJECT_ID('dbo.CountryFlags','U') IS NOT NULL
    DROP TABLE dbo.CountryFlags;
GO

CREATE TABLE dbo.CountryFlags (
    CountryName NVARCHAR(100) NOT NULL,
    Continent   NVARCHAR(30)  NOT NULL,
    ISO2        CHAR(2)       NOT NULL PRIMARY KEY,
    FlagURL     NVARCHAR(255) NOT NULL
);
GO
