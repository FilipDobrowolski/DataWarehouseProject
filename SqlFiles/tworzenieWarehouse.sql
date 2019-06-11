
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'warehouse')
BEGIN
EXEC('CREATE SCHEMA warehouse')
END


create table warehouse.DIM_AIRLINE (
   IATA_REPORTING_AIRLINE varchar(3)           not null,
   AIRLINE_NAME         varchar(100)         not null,
   OFFICE_COUNTRY       varchar(100)         not null,
   ACTIVE               varchar(2)           null,
   constraint PK_DIM_AIRLINE primary key nonclustered (IATA_REPORTING_AIRLINE)
)
go


create table warehouse.DIM_ARRIVAL_AIRPORT (
   IATA_ARR_AIRPORT_ID  varchar(4)           not null,
   ARRIVAL_AIRPORT_NAME varchar(100)         not null,
   ARRIVAL_CITY         varchar(100)         not null,
   ARRIVAL_COUNTRY      varchar(100)         not null,
   ARRIVAL_TIMEZONE     decimal(3,1)          null,
   constraint PK_DIM_ARRIVAL_AIRPORT primary key nonclustered (IATA_ARR_AIRPORT_ID)
)
go


create table warehouse.DIM_DEPARTURE_AIRPORT (
   IATA_DEP_AIRPORT_ID  varchar(4)           not null,
   DEPARTURE_AIRPORT_NAME varchar(100)         not null,
   DEPARTURE_CITY       varchar(100)         not null,
   DEP_COUNTRY          varchar(100)         not null,
   DEP_TIMEZONE         decimal(3,1)          null,
   constraint PK_DIM_DEPARTURE_AIRPORT primary key nonclustered (IATA_DEP_AIRPORT_ID)
)
go


create table warehouse.DIM_DEPARTURE_CALENDAR (
   DEPARTURE_DATE_ID    date            not null,
   DEPARTURE_QUARTER    int                  not null,
   DEPARTURE_DAY_OF_WEEK int                  not null,
   DEPARTURE_NAME_DAY   varchar(10)          not null,
   DEPARTURE_LEAP_YEAR  int                  not null,
   DEPARTURE_DAY        int                  not null,
   DEPARTURE_MONTH      int                  not null,
   DEPARTURE_YEAR       int                  not null,
   constraint PK_DIM_DEPARTURE_CALENDAR primary key nonclustered (DEPARTURE_DATE_ID)
)
go


create table warehouse.DIM_ROUTE (
   IATA_DEP_AIRPORT_ID  varchar(4)           not null,
   IATA_ARR_AIRPORT_ID  varchar(4)           not null,
   CODESHARE            varchar(2)           null,
   STOPS                int                  not null,
   constraint PK_DIM_ROUTE primary key nonclustered (IATA_DEP_AIRPORT_ID, IATA_ARR_AIRPORT_ID)
)
go


create table warehouse.DIM_WHEELS_OFF_TIME (
   W_OFF_TIME_ID        time(0)             not null,
   W_OFF_TIME_HOUR      int                  not null,
   W_OFF_TIME_MIUTE     int                  not null,
   W_OFF_TIME_SECOND    int                  not null,
   constraint PK_DIM_WHEELS_OFF_TIME primary key nonclustered (W_OFF_TIME_ID)
)
go


create table warehouse.DIM_WHEELS_ON_TIME (
   W_ON_TIME_ID         time(0)             not null,
   W_ON_TIME_HOUR       int                  not null,
   W_ON_TIME_MINUTE     int                  not null,
   W_ON_TIME_SECOND     int                  not null,
   constraint PK_DIM_WHEELS_ON_TIME primary key nonclustered (W_ON_TIME_ID)
)
go


create table warehouse.DIM_DEPARTURE_TIME (
   DEP_TIME_ID          time(0)             not null,
   DEP_TIME_HOUR        int                  not null,
   DEP_TIME_MINUTE      int                  not null,
   DEP_TIME_SECOND      int                  not null,
   constraint PK_DIM_DEPARTURE_TIME primary key nonclustered (DEP_TIME_ID)
)
go


create table warehouse.DIM_ARRIVAL_TIME (
   ARR_TIME_ID          time(0)             not null,
   ARR_TIME_HOUR        int                  not null,
   ARR_TIME_MINUTE      int                  not null,
   ARR_TIME_SECOND      int                  not null,
   constraint PK_DIM_ARRIVAL_TIME primary key nonclustered (ARR_TIME_ID)
)
go


create table warehouse.FACT_FLIGHT (
   FLIGHT_ID            int                  identity,
   DEPARTURE_DATE_ID    date           not null,
   IATA_REPORTING_AIRLINE varchar(3)           not null,
   IATA_DEP_AIRPORT_ID  varchar(4)           not null,
   IATA_ARR_AIRPORT_ID  varchar(4)           not null,
   TAIL_NUMBER          varchar(7)           not null,
   DEP_CITY_NAME       varchar(100)         not null,
   ARR_CITY_NAME        varchar(100)         not null,
   DEP_TIME_ID       time(0)             not null,
   DEPARTURE_DELAY      decimal(10,3)        not null,
   W_OFF_TIME_ID           time(0)             not null,
   W_ON_TIME_ID            time(0)             not null,
   ARR_TIME_ID          time(0)             not null,
   ARRIVE_DELAY         decimal(10,3)        not null,
   constraint PK_FACT_FLIGHT primary key nonclustered (FLIGHT_ID)
)
go


create index FK_DEP_AIRPORT_ROUTE_FK on warehouse.DIM_ROUTE (
IATA_DEP_AIRPORT_ID ASC
)
go

create index FK_ARR_AIRPORT_ROUTE_FK on warehouse.DIM_ROUTE (
IATA_ARR_AIRPORT_ID ASC
)
go

create index FK_AIRLINE_FLIGHT_FK on warehouse.FACT_FLIGHT (
IATA_REPORTING_AIRLINE ASC
)
go

create index FK_ROUTE_FLIGHT_FK on warehouse.FACT_FLIGHT (
IATA_DEP_AIRPORT_ID ASC,
IATA_ARR_AIRPORT_ID ASC
)
go

create index FK_DEPARTURE_CALENDAR_FLIGHT_FK on warehouse.FACT_FLIGHT (
DEPARTURE_DATE_ID ASC
)
go

create index FK_DEP_TIME_FLIGHT_FK on warehouse.FACT_FLIGHT (
DEP_TIME_ID ASC
)
go

create index FK_ARR_TIME_FLIGHT_FK on warehouse.FACT_FLIGHT (
ARR_TIME_ID ASC
)
go

create index FK_WHEELS_OFF_FLIGHT_FK on warehouse.FACT_FLIGHT (
W_OFF_TIME_ID ASC
)
go

create index FK_WHEELS_ON_FLIGHT_FK on warehouse.FACT_FLIGHT (
W_ON_TIME_ID ASC
)
go


alter table warehouse.DIM_ROUTE
   add constraint FK_DIM_ROUT_FK_ARR_AI_DIM_ARRI foreign key (IATA_ARR_AIRPORT_ID)
      references warehouse.DIM_ARRIVAL_AIRPORT (IATA_ARR_AIRPORT_ID)
go

alter table warehouse.DIM_ROUTE
   add constraint FK_DIM_ROUT_FK_DEP_AI_DIM_DEPA foreign key (IATA_DEP_AIRPORT_ID)
      references warehouse.DIM_DEPARTURE_AIRPORT (IATA_DEP_AIRPORT_ID)
go

alter table warehouse.FACT_FLIGHT
   add constraint FK_FACT_FLI_FK_AIRLIN_DIM_AIRL foreign key (IATA_REPORTING_AIRLINE)
      references warehouse.DIM_AIRLINE (IATA_REPORTING_AIRLINE)
go

alter table warehouse.FACT_FLIGHT
   add constraint FK_FACT_FLI_FK_ARR_TI_DIM_ARRI foreign key (ARR_TIME_ID)
      references warehouse.DIM_ARRIVAL_TIME (ARR_TIME_ID)
go

alter table warehouse.FACT_FLIGHT
   add constraint FK_FACT_FLI_FK_DEPART_DIM_DEPA foreign key (DEPARTURE_DATE_ID)
      references warehouse.DIM_DEPARTURE_CALENDAR (DEPARTURE_DATE_ID)
go

alter table warehouse.FACT_FLIGHT
   add constraint FK_FACT_FLI_FK_DEP_TI_DIM_DEPA foreign key (DEP_TIME_ID)
      references warehouse.DIM_DEPARTURE_TIME (DEP_TIME_ID)
go

alter table warehouse.FACT_FLIGHT
   add constraint FK_FACT_FLI_FK_ROUTE__DIM_ROUT foreign key (IATA_DEP_AIRPORT_ID, IATA_ARR_AIRPORT_ID)
      references warehouse.DIM_ROUTE (IATA_DEP_AIRPORT_ID, IATA_ARR_AIRPORT_ID)
go

alter table warehouse.FACT_FLIGHT
   add constraint FK_FACT_FLI_FK_W_OFF__DIM_WHEE foreign key (W_OFF_TIME_ID)
      references warehouse.DIM_WHEELS_OFF_TIME (W_OFF_TIME_ID)
go

alter table warehouse.FACT_FLIGHT
   add constraint FK_FACT_FLI_FK_W_ON_F_DIM_WHEE foreign key (W_ON_TIME_ID)
      references warehouse.DIM_WHEELS_ON_TIME (W_ON_TIME_ID)
go




