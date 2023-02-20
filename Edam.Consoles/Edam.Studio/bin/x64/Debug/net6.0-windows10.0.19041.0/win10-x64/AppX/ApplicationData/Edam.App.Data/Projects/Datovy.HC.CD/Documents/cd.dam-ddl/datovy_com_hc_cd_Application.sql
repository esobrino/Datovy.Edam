-- Application
CREATE TABLE [Application].[Session] (
   [Session_ID] VARCHAR(40) NOT NULL,
   [Session_Type_ID] VARCHAR(30),
   [Session_DateTime] VARCHAR(0),
   [Referral_ID] VARCHAR(40),
   [Case_ID] VARCHAR(40),
   [Officer_ID] VARCHAR(40),
   [Contact_ID] VARCHAR(40),
   [Token_ID] VARCHAR(40),
   [Tenant_ID] VARCHAR(40),
   [Data_Owner_ID] VARCHAR(40),
   [Agency_Reporting_ID] VARCHAR(40),
   [Sequence_Number] INT,
   [Effective_DateTime] VARCHAR(0),
   [Effective_End_DateTime] VARCHAR(0),
   [Version_Number] VARCHAR(20),
   [Created_DateTime] VARCHAR(0),
   [Updated_DateTime] VARCHAR(0),
   [Record_Status_Code_ID] VARCHAR(1),
   [Session_Updated_ID] VARCHAR(40),
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
   CONSTRAINT pk_Session PRIMARY KEY ([Session_ID])
   CONSTRAINT fk_Session_Referral_ID
      FOREIGN KEY ([Referral_ID])
      REFERENCES [Management].[Referral]([Referral_ID]),
   CONSTRAINT fk_Session_Case_ID
      FOREIGN KEY ([Case_ID])
      REFERENCES [Management].[Case]([Case_ID]),
   CONSTRAINT fk_Session_Contact_ID
      FOREIGN KEY ([Contact_ID])
      REFERENCES [Entity].[Contact]([Contact_ID]),
   CONSTRAINT fk_Session_Token_ID
      FOREIGN KEY ([Token_ID])
      REFERENCES [Application].[Access_Token]([Token_ID]),
);

CREATE TABLE [Application].[Access_Token] (
   [User_ID] VARCHAR(40),
   [Token_ID] VARCHAR(40) NOT NULL,
   [Tenant_ID] VARCHAR(40),
   [Data_Owner_ID] VARCHAR(40),
   [Agency_Reporting_ID] VARCHAR(40),
   [Sequence_Number] INT,
   [Effective_DateTime] VARCHAR(0),
   [Effective_End_DateTime] VARCHAR(0),
   [Version_Number] VARCHAR(20),
   [Created_DateTime] VARCHAR(0),
   [Updated_DateTime] VARCHAR(0),
   [Record_Status_Code_ID] VARCHAR(1),
   [Session_Updated_ID] VARCHAR(40),
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
   CONSTRAINT pk_Access_Token PRIMARY KEY ([Token_ID])
);

CREATE TABLE [Application].[App_Message_Code] (
   [Code_Number] INT NOT NULL,
   [Code_ID] VARCHAR(60),
   [Description] VARCHAR(128),
   [Category_ID] VARCHAR(30),
   [CodeSet_Name] VARCHAR(80),
   [Tenant_ID] VARCHAR(40),
   [Data_Owner_ID] VARCHAR(40),
   [Agency_Reporting_ID] VARCHAR(40),
   [Sequence_Number] INT,
   [Effective_DateTime] VARCHAR(0),
   [Effective_End_DateTime] VARCHAR(0),
   [Version_Number] VARCHAR(20),
   [Created_DateTime] VARCHAR(0),
   [Updated_DateTime] VARCHAR(0),
   [Record_Status_Code_ID] VARCHAR(1),
   [Session_Updated_ID] VARCHAR(40),
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
   CONSTRAINT pk_App_Message_Code PRIMARY KEY ([Code_Number])
);

