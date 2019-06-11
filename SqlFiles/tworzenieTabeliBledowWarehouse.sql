create table errors.ERROR_WAREHOUSE_AIRLINE (
    [ErrorCode] int,
    [ErrorColumn] int,
   IATA_REPORTING_AIRLINE varchar(100)           null,
   AIRLINE_NAME         varchar(100)           null,
   OFFICE_COUNTRY       varchar(100)           null,
   ACTIVE               varchar(100)           null
)
go

create table errors.ERROR_WAREHOUSE_ARRIVAL_AIRPORT (
    [ErrorCode] int,
    [ErrorColumn] int,
   IATA_ARR_AIRPORT_ID  varchar(100)           null,
   ARRIVAL_AIRPORT_NAME varchar(100)           null,
   ARRIVAL_CITY         varchar(100)           null,
   ARRIVAL_COUNTRY      varchar(100)           null,
   ARRIVAL_TIMEZONE     varchar(100)           null
)
go

create table errors.ERROR_WAREHOUSE_DEPARTURE_AIRPORT (
    [ErrorCode] int,
    [ErrorColumn] int,
   IATA_DEP_AIRPORT_ID  varchar(100)           null,
   DEPARTURE_AIRPORT_NAME varchar(100)           null,
   DEPARTURE_CITY       varchar(100)           null,
   DEP_COUNTRY          varchar(100)           null,
   DEP_TIMEZONE         varchar(100)           null
)
go

create table errors.ERROR_WAREHOUSE_DEPARTURE_CALENDAR (
    [ErrorCode] int,
    [ErrorColumn] int,
   DEPARTURE_DATE_ID    varchar(100)           null,
   DEPARTURE_QUARTER    varchar(100)           null,
   DEPARTURE_DAY_OF_WEEK varchar(100)           null,
   DEPARTURE_NAME_DAY   varchar(100)           null,
   DEPARTURE_LEAP_YEAR  varchar(100)           null,
   DEPARTURE_DAY        varchar(100)           null,
   DEPARTURE_MONTH      varchar(100)           null,
   DEPARTURE_YEAR       varchar(100)           null
)
go

create table errors.ERROR_WAREHOUSE_ROUTE (
    [ErrorCode] int,
    [ErrorColumn] int,
   IATA_DEP_AIRPORT_ID  varchar(100)           null,
   IATA_ARR_AIRPORT_ID  varchar(100)           null,
   CODESHARE            varchar(100)           null,
   STOPS                varchar(100)           null
)
go

create table errors.ERROR_WAREHOUSE_FLIGHT (
   [ErrorCode] int,
   [ErrorColumn] int,
   DEPARTURE_DATE_ID  varchar(100)           null,
   IATA_REPORTING_AIRLINE  varchar(100)           null,
   IATA_DEP_AIRPORT_ID  varchar(100)           null,
   IATA_ARR_AIRPORT_ID  varchar(100)           null,
   TAIL_NUMBER  varchar(100)           null,
   DEP_CITY_NAME  varchar(100)           null,
   ARR_CITY_NAME  varchar(100)           null,
   DEPARTURE_TIME  varchar(100)           null,
   DEPARTURE_DELAY  varchar(100)           null,
   WHEELS_OFF  varchar(100)           null,
   WHEELS_ON  varchar(100)           null,
   ARRIVE_TIME  varchar(100)           null,
   ARRIVE_DELAY  varchar(100)           null
)
go


CREATE TABLE errors.ERROR_WAREHOUSE_STARTING(
    [ErrorCode] int,
    [ErrorColumn] int,
   TIME_ID varchar(100)           null,
   TIME_HOUR         varchar(100)         null,
   TIME_MINUTE       varchar(100)         null,
   TIME_SECOND               varchar(100)           null
)
go

CREATE TABLE errors.ERROR_WAREHOUSE_LANDING(
    [ErrorCode] int,
    [ErrorColumn] int,
   TIME_ID varchar(100)           null,
   TIME_HOUR         varchar(100)         null,
   TIME_MINUTE       varchar(100)         null,
   TIME_SECOND               varchar(100)           null
)
go
CREATE TABLE errors.ERROR_WAREHOUSE_DEPARTURE_TIME(
    [ErrorCode] int,
    [ErrorColumn] int,
   TIME_ID varchar(100)           null,
   TIME_HOUR         varchar(100)         null,
   TIME_MINUTE       varchar(100)         null,
   TIME_SECOND               varchar(100)           null
)
go
CREATE TABLE errors.ERROR_WAREHOUSE_ARRIVAL_TIME(
    [ErrorCode] int,
    [ErrorColumn] int,
   TIME_ID varchar(100)           null,
   TIME_HOUR  varchar(100)         null,
   TIME_MINUTE  varchar(100)         null,
   TIME_SECOND               varchar(100)           null
)
go
