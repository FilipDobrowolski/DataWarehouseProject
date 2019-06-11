
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'errors')
BEGIN
EXEC('CREATE SCHEMA errors')
END

create table errors.ERROR_PROCEDDED_AIRLINE (
    [ErrorCode] int,
    [ErrorColumn] int,
    [AIRLINE_NAME] varchar(100),
    [AIRLINE_IATA] varchar(100),
    [COUNTRY] varchar(100),
    [ACTIVE] varchar(100)
)
go

create table errors.ERROR_PROCEDDED_AIRPORT (
    [ErrorCode] int,
    [ErrorColumn] int,
    [AIRPORT_IATA] varchar(100),
    [AIRPORT_NAME] varchar(100),
    [CITY] varchar(100),
    [COUNTRY] varchar(100),
    [TIMEZONE] varchar(100)
)
go

create table errors.ERROR_PROCEDDED_ROUTE (
    [ErrorCode] int,
    [ErrorColumn] int,
    [SOURCE_AIRPORT] varchar(100),
    [DESTINATION_AIRPORT] varchar(100),
    [CODESHARE] varchar(100),
    [STOPS] varchar(100),
    [EQUIPMENT] varchar(100)
)
go

create table errors.ERROR_PROCEDDED_FLIGHT (
    [ErrorCode] int,
    [ErrorColumn] int,
    [FL_DATE] varchar(100),
    [OP_CARRIER] varchar(100),
    [TAIL_NUMBER] varchar(100),
    [ORIGIN] varchar(100),
    [ORIGIN_CITY_NAME] varchar(100),
    [DEST] varchar(100),
    [DEST_CITY_NAME] varchar(100),
    [DEP_TIME] varchar(100),
    [DEP_DELAY] varchar(100),
    [WHEELS_OFF] varchar(100),
    [WHEELS_ON] varchar(100),
    [ARR_TIME] varchar(100),
    [ARR_DELAY] varchar(100)
)
go
