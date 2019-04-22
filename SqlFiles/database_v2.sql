/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2012                    */
/* Created on:     22.04.2019 14:46:58                          */
/*==============================================================*/


if exists (select 1
            from  sysobjects
           where  id = object_id('Airline')
            and   type = 'U')
   drop table Airline
go

if exists (select 1
            from  sysobjects
           where  id = object_id('AirportDestination')
            and   type = 'U')
   drop table AirportDestination
go

if exists (select 1
            from  sysobjects
           where  id = object_id('AirportSource')
            and   type = 'U')
   drop table AirportSource
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ArrivalDate')
            and   type = 'U')
   drop table ArrivalDate
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ArrivalTime')
            and   type = 'U')
   drop table ArrivalTime
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ArrivalTimezone')
            and   type = 'U')
   drop table ArrivalTimezone
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DepartureDate')
            and   type = 'U')
   drop table DepartureDate
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DepartureTimezone')
            and   type = 'U')
   drop table DepartureTimezone
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
/* Table: AirportDestination                                    */
/*==============================================================*/
create table AirportDestination (
   AirportDstnID        int                  not null,
   Name                 varchar(30)          null,
   constraint PK_AIRPORTDESTINATION primary key nonclustered (AirportDstnID)
)
go

/*==============================================================*/
/* Table: AirportSource                                         */
/*==============================================================*/
create table AirportSource (
   AirportSrcID         int                  not null,
   Name                 varchar(30)          null,
   constraint PK_AIRPORTSOURCE primary key nonclustered (AirportSrcID)
)
go

/*==============================================================*/
/* Table: ArrivalDate                                           */
/*==============================================================*/
create table ArrivalDate (
   ArrDateID            int                  not null,
   Year                 int                  null,
   Month                int                  null,
   Day                  int                  null,
   constraint PK_ARRIVALDATE primary key nonclustered (ArrDateID)
)
go

/*==============================================================*/
/* Table: ArrivalTime                                           */
/*==============================================================*/
create table ArrivalTime (
   ArrTimeID            int                  not null,
   Hour                 int                  null,
   Minute               int                  null,
   ArrTimezone          varchar(5)           null,
   constraint PK_ARRIVALTIME primary key nonclustered (ArrTimeID)
)
go

/*==============================================================*/
/* Table: ArrivalTimezone                                       */
/*==============================================================*/
create table ArrivalTimezone (
   ArrTimezone          varchar(5)           not null,
   Name                 varchar(20)          null,
   constraint PK_ARRIVALTIMEZONE primary key nonclustered (ArrTimezone)
)
go

/*==============================================================*/
/* Table: DepartureDate                                         */
/*==============================================================*/
create table DepartureDate (
   DepDateID            int                  not null,
   Year                 int                  null,
   Month                int                  null,
   Day                  int                  null,
   constraint PK_DEPARTUREDATE primary key nonclustered (DepDateID)
)
go

/*==============================================================*/
/* Table: DepartureTimezone                                     */
/*==============================================================*/
create table DepartureTimezone (
   DepTimezone          varchar(5)           not null,
   Name                 varchar(20)          null,
   constraint PK_DEPARTURETIMEZONE primary key nonclustered (DepTimezone)
)
go

/*==============================================================*/
/* Table: DepatureTime                                          */
/*==============================================================*/
create table DepatureTime (
   DepTimeID            int                  not null,
   Hour                 int                  null,
   Minute               int                  null,
   DepTimezone          varchar(5)           null,
   constraint PK_DEPATURETIME primary key nonclustered (DepTimeID)
)
go

/*==============================================================*/
/* Table: Flight                                                */
/*==============================================================*/
create table Flight (
   DepTimeID            int                  not null,
   DepDateID            int                  not null,
   ArrTimeID            int                  not null,
   ArrDateID            int                  not null,
   AirlineID            int                  not null,
   AirportSrcID         int                  not null,
   AirportDstnID        int                  not null,
   ArrivalDelay         int                  null,
   DepartureDelay       int                  null,
   NumoFlightsTotal     int                  null,
   FlightTimeTotal      int                  null,
   IsDelayed            bit                  null,
   DelayedTimeTotal     int                  null,
   IsCancelled          bit                  null,
   constraint PK_FLIGHT primary key nonclustered (DepTimeID, DepDateID, ArrTimeID, ArrDateID, AirlineID, AirportSrcID, AirportDstnID)
)
go

