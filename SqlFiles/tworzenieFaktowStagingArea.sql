IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'staging_facts')
BEGIN
EXEC('CREATE SCHEMA staging_facts')
END
go

create table staging_facts.RAW_FLIGHT (
   FL_DATE              varchar(100)         null,
   OP_CARRIER           varchar(100)         null,
   TAIL_NUMBER          varchar(100)         null,
   ORIGIN               varchar(100)         null,
   ORIGIN_CITY_NAME     varchar(100)         null,
   DEST                 varchar(100)         null,
   DEST_CITY_NAME       varchar(100)         null,
   DEP_TIME             varchar(100)         null,
   DEP_DELAY            varchar(100)         null,
   WHEELS_OFF           varchar(100)         null,
   WHEELS_ON            varchar(100)         null,
   ARR_TIME             varchar(100)         null,
   ARR_DELAY            varchar(100)         null
)
go
