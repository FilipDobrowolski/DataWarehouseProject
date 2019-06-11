CREATE TABLE staging_dimensions.[PROCEDDED_ROUTE] (
    [SOURCE_AIRPORT] varchar(100),
    [DESTINATION_AIRPORT] varchar(100),
    [CODESHARE] varchar(100),
    [STOPS] varchar(100),
    [EQUIPMENT] varchar(100)
)

CREATE TABLE staging_dimensions.[PROCEDDED_AIRLINE] (
    [AIRLINE_NAME] varchar(100),
    [AIRLINE_IATA] varchar(100),
    [COUNTRY] varchar(100),
    [ACTIVE] varchar(100)
)

CREATE TABLE staging_dimensions.[PROCEDDED_AIRPORT] (
    [AIRPORT_IATA] varchar(100),
    [AIRPORT_NAME] varchar(100),
    [CITY] varchar(100),
    [COUNTRY] varchar(100),
    [TIMEZONE] varchar(100)
)