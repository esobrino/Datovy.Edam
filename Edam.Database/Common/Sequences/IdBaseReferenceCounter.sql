﻿CREATE SEQUENCE [Common].[IdBaseReferenceCounter]
    AS INT
    INCREMENT BY 1
    MINVALUE 0
    MAXVALUE 999999
    CYCLE
    CACHE 15;
