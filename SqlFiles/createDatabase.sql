/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2012                    */
/* Created on:     13.04.2019 15:29:18                          */
/*==============================================================*/


if exists (select 1
            from  sysobjects
           where  id = object_id('Airline')
            and   type = 'U')
   drop table Airline
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Airport')
            and   type = 'U')
   drop table Airport
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ArrivalTime')
            and   type = 'U')
   drop table ArrivalTime
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DepatureTime')
            and   type = 'U')
   drop table DepatureTime
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Flight')
            and   type = 'U')
   drop table Flight
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Route')
            and   type = 'U')
   drop table Route
go

/*==============================================================*/
/* Table: Airline                                               */
/*==============================================================*/
create table Airline (
   AirlineID            int                  not null,
   Name                 varchar(30)          null,
   constraint PK_AIRLINE primary key nonclustered (AirlineID)
)
go

/*==============================================================*/
/* Table: Airport                                               */
/*==============================================================*/
create table Airport (
   AirportID            int                  not null,
   Name                 varchar(30)          null,
   constraint PK_AIRPORT primary key nonclustered (AirportID)
)
go

/*==============================================================*/
/* Table: ArrivalTime                                           */
/*==============================================================*/
create table ArrivalTime (
   ArrTimeID            int                  not null,
   Year                 int                  null,
   Month                int                  null,
   Day                  int                  null,
   Hour                 int                  null,
   Minute               int                  null,
   Timezone             varchar(20)          null,
   constraint PK_ARRIVALTIME primary key nonclustered (ArrTimeID)
)
go

/*==============================================================*/
/* Table: DepatureTime                                          */
/*==============================================================*/
create table DepatureTime (
   DepTimeID            int                  not null,
   Year                 int                  null,
   Month                int                  null,
   Day                  int                  null,
   Hour                 int                  null,
   Minute               int                  null,
   Timezone             varchar(20)          null,
   constraint PK_DEPATURETIME primary key nonclustered (DepTimeID)
)
go

/*==============================================================*/
/* Table: Flight                                                */
/*==============================================================*/
create table Flight (
   DepTimeID            int                  not null,
   ArrTimeID            int                  not null,
   RouteID              int                  not null,
   NumberOfFlights      int                  null,
   FlightTImeTotal      float                null,
   NumberOfFlightsDelayed int                  null,
   DelayTimeTotal       float                null,
   AvgDelay             float                null,
   NumberOfCanelledFlights int                  null,
   Punctuality          float                null,
   constraint PK_FLIGHT primary key nonclustered (DepTimeID, ArrTimeID, RouteID)
)
go

/*==============================================================*/
/* Table: Route                                                 */
/*==============================================================*/
create table Route (
   RouteID              int                  not null,
   AirlineID            int                  null,
   SourceairportID      int                  null,
   DestinationAirportID int                  null,
   ArrivalDelay         int                  null,
   DepartureDelay       int                  null,
   constraint PK_ROUTE primary key nonclustered (RouteID)
)
go

