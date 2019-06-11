IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'staging_dimensions')
BEGIN
EXEC('CREATE SCHEMA staging_dimensions')
END

create table staging_dimensions.RAW_AIRLINE (
   OF_AIRLINE_ID        varchar(100)         null,
   AIRLINE_NAME         varchar(100)         null,
   ALIAS                varchar(100)         null,
   AIRLINE_IATA         varchar(100)         null,
   AIRLINE_ICAO         varchar(100)         null,
   CALLSIGN             varchar(100)         null,
   AIRLINE_COUNTRY      varchar(100)         null,
   ACTIVE               varchar(100)         null
)
go

create table staging_dimensions.RAW_AIRPORT (
   OF_AIRPORT_ID        varchar(100)         null,
   AIRPORT_NAME         varchar(100)         null,
   CITY                 varchar(100)         null,
   AIRPORT_COUNTRY      varchar(100)         null,
   AIRPORT_IATA         varchar(100)         null,
   AIRPORT_ICAO         varchar(100)         null,
   LATITUDE             varchar(100)         null,
   LONGITUDE            varchar(100)         null,
   ALTITUDE             varchar(100)         null,
   TIMEZONE             varchar(100)         null,
   DST                  varchar(100)         null,
   TZ_TIMEZONE          varchar(100)         null,
   TYPE                 varchar(100)         null,
   SOURCE               varchar(100)         null
)
go

create table staging_dimensions.RAW_ROUTE (
   AIRLINE_CODE         varchar(100)         null,
   AIRLINE_OF_ID        varchar(100)         null,
   SOURCE_AIRPORT       varchar(100)         null,
   SOURCE_AIRPORT_ID    varchar(100)         null,
   DESTINATION_AIRPORT  varchar(100)         null,
   DESTINATION_AIRPORT_ID varchar(100)         null,
   CODESHARE            varchar(100)         null,
   STOPS                varchar(100)         null,
   EQUIPMENT            varchar(100)         null
)
go