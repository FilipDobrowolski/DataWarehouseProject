CREATE TABLE staging_dimensions.[FINAL_ROUTE] (
    [SOURCE_AIRPORT] varchar(4),
    [DESTINATION_AIRPORT] varchar(4),
    [CODESHARE] varchar(2),
    [STOPS] int
)

CREATE TABLE staging_dimensions.[FINAL_AIRLINE] (
    [AIRLINE_IATA] varchar(3),
    [AIRLINE_NAME] varchar(100),
    [COUNTRY] varchar(100),
    [ACTIVE] varchar(2)
)

CREATE TABLE staging_dimensions.[FINAL_AIRPORT] (
    [AIRPORT_IATA] varchar(4),
    [AIRPORT_NAME] varchar(100),
    [CITY] varchar(100),
    [COUNTRY] varchar(100),
    [TIMEZONE] decimal(3,1)
)
