CREATE TABLE [Data].[DataDictionary] (
    [CreatedDate]      DATETIME       DEFAULT (getdate()) NOT NULL,
    [LastUpdateDate]   DATETIME2 (7)  DEFAULT (getutcdate()) NOT NULL,
    [DictionaryNo]     INT            IDENTITY (1, 1) NOT NULL,
    [OrganizationId]   VARCHAR (20)   NOT NULL,
    [DataOwnerId]      VARCHAR (20)   NOT NULL,
    [Name]             VARCHAR (128)  NULL,
    [RootURI]          VARCHAR (2048) NOT NULL,
    [UpdateSessionID]  VARCHAR (40)   NULL,
    [RecordStatusCode] CHAR (1)       DEFAULT ('A') NOT NULL,
    PRIMARY KEY CLUSTERED ([DictionaryNo] ASC)
);

