-- cd
CREATE TABLE [cd].[Disease_Surveillance] (
   [Action] VARCHAR(0),
   [Application] VARCHAR(0),
   [Article] VARCHAR(0),
   [Clinical] VARCHAR(0),
   [Entity] VARCHAR(0),
   [Epidemiology] VARCHAR(0),
   [Generic] VARCHAR(0),
   [Geography] VARCHAR(0),
   [Management] VARCHAR(0),
   [Message] VARCHAR(0),
   [Provider] VARCHAR(0),
   [Surveillance] VARCHAR(0)
   [Tenant_ID] VARCHAR(40) NOT NULL,
   [Data_Owner_ID] VARCHAR(40) NOT NULL,
   [Agency_Reporting_ID] VARCHAR(40) NOT NULL,
   [Sequence_Number] INTEGER NOT NULL,
   [Effective_DateTime] DATETIME(getutcdate()) NOT NULL,
   [Effective_End_DateTime] DATETIME NOT NULL,
   [Version_Number] VARCHAR(20) NOT NULL,
   [Created_DateTime] DATETIME NOT NULL,
   [Updated_DateTime] DATETIME NOT NULL,
   [Record_Status_Code_ID] CHAR(1) NOT NULL,
   [Session_Updated_ID] VARCHAR(40) NOT NULL,
   [_RECORD_NO_] BIGINT IDENTITY NOT NULL,
   CONSTRAINT pk_Disease_Surveillance PRIMARY KEY ([_RECORD_NO_])
);

