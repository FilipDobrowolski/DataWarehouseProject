CREATE TABLE stage_dim.[FINAL_ROUTE_PLANE] (
    [IATA_DEP_AIRPORT] varchar(4),
    [IATA_ARR_AIRPORT] varchar(4),
    [PLANE_IATA] varchar(4)
)

CREATE TABLE stage_dim.[FINAL_ROUTE] (
    [SOURCE_AIRPORT] varchar(4),
    [DESTINATION_AIRPORT] varchar(4),
    [CODESHARE] varchar(2),
    [STOPS] int
)

CREATE TABLE stage_dim.[FINAL_PLANE] (
    [PLANE_IATA] varchar(4),
    [PLANE_NAME] varchar(100)
)

CREATE TABLE stage_dim.[FINAL_AIRLINE] (
    [AIRLINE_IATA] varchar(3),
    [AIRLINE_NAME] varchar(100),
    [COUNTRY] varchar(100),
    [ACTIVE] varchar(2)
)

CREATE TABLE stage_dim.[FINAL_AIRPORT] (
    [AIRPORT_IATA] varchar(4),
    [AIRPORT_NAME] varchar(100),
    [CITY] varchar(100),
    [COUNTRY] varchar(100),
    [TIMEZONE] decimal(3,1)
)
