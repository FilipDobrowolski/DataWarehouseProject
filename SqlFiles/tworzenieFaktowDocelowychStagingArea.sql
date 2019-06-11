CREATE TABLE staging_facts.[FINAL_FLIGHT] (
    [FL_DATE] date,
    [OP_CARRIER] varchar(3),
    [TAIL_NUMBER] varchar(7),
    [ORIGIN] varchar(4),
    [ORIGIN_CITY_NAME] varchar(100),
    [DEST] varchar(4),
    [DEST_CITY_NAME] varchar(100),
    [DEP_TIME] time(0),
    [DEP_DELAY] numeric(10,3),
    [WHEELS_OFF] time(0),
    [WHEELS_ON] time(0),
    [ARR_TIME] time(0),
    [ARR_DELAY] numeric(10,3)
)
