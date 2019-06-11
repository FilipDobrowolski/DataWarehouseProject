create table errors.ERROR_FINAL_AIRLINE (
    [ErrorCode] int,
    [ErrorColumn] int,
   [AIRLINE_IATA] varchar(100)           null,
   [AIRLINE_NAME]        varchar(100)           null,
   [COUNTRY]       varchar(100)           null,
   [ACTIVE]               varchar(100)           null
)
go

create table errors.ERROR_FINAL_AIRPORT (
    [ErrorCode] int,
    [ErrorColumn] int,
   [AIRPORT_IATA]  varchar(100)           null,
   [AIRPORT_NAME] varchar(100)           null,
   [CITY]       varchar(100)           null,
   [COUNTRY]          varchar(100)           null,
   [TIMEZONE]         varchar(100)           null
)
go


create table errors.ERROR_FINAL_ROUTE (
    [ErrorCode] int,
    [ErrorColumn] int,
   [PLANE_IATA]  varchar(100)           null,
   [DESTINATION_AIRPORT]  varchar(100)           null,
   [CODESHARE]            varchar(100)           null,
   [STOPS]                varchar(100)           null
)
go

create table errors.ERROR_FINAL_FLIGHT (
    [ErrorCode] int,
    [ErrorColumn] int,
   [FL_DATE]            varchar(100)           null,
   [OP_CARRIER]    varchar(100)           null,
   [TAIL_NUMBER] varchar(100)           null,
   [ORIGIN]  varchar(100)           null,
   [ORIGIN_CITY_NAME]  varchar(100)           null,
   [DEST]          varchar(100)           null,
   [DEST_CITY_NAME]       varchar(100)           null,
   [DEP_TIME]        varchar(100)           null,
   [DEP_DELAY]       varchar(100)           null,
   [WHEELS_OFF]      varchar(100)           null,
   [WHEELS_ON]           varchar(100)           null,
   [ARR_TIME]            varchar(100)           null,
   [ARR_DELAY]          varchar(100)           null
)
go
