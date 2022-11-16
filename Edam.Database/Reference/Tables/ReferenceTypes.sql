CREATE TABLE [Reference].[ReferenceTypes] (
    [IdNo]               SMALLINT      NOT NULL,
    [IdPrefix]           CHAR (2)      NOT NULL,
    [Description]        VARCHAR (20)  NULL,
    [SpanishDescription] VARCHAR (20)  NULL,
    [DataOwnerId]        VARCHAR (20)  NULL,
    [UpdateSessionID]    VARCHAR (40)  NULL,
    [RecordStatusCode]   CHAR (1)      DEFAULT ('A') NOT NULL,
    [CreatedDate]        DATETIME2 (7) DEFAULT (getutcdate()) NOT NULL,
    [LastUpdateDate]     DATETIME2 (7) DEFAULT (getutcdate()) NOT NULL,
    PRIMARY KEY CLUSTERED ([IdNo] ASC)
);

