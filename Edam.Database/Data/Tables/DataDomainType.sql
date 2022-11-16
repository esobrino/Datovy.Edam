CREATE TABLE [Data].[DataDomainType] (
    [CreatedDate]        DATETIME2 (7) DEFAULT (getutcdate()) NOT NULL,
    [LastUpdateDate]     DATETIME2 (7) DEFAULT (getutcdate()) NOT NULL,
    [IdNo]               SMALLINT      NOT NULL,
    [Description]        VARCHAR (40)  NOT NULL,
    [SpanishDescription] VARCHAR (40)  NOT NULL,
    [UpdateSessionID]    VARCHAR (40)  NULL,
    [RecordStatusCode]   CHAR (1)      DEFAULT ('A') NOT NULL,
    PRIMARY KEY CLUSTERED ([IdNo] ASC)
);

