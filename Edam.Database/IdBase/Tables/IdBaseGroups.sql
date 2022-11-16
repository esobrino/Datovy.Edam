CREATE TABLE [IdBase].[IdBaseGroups] (
    [IdNo]               SMALLINT      NOT NULL,
    [Description]        VARCHAR (40)  NOT NULL,
    [SpanishDescription] VARCHAR (40)  NOT NULL,
    [DataOwnerId]        VARCHAR (20)  NULL,
    [UpdateSessionID]    VARCHAR (40)  NULL,
    [RecordStatusCode]   CHAR (1)      DEFAULT ('A') NOT NULL,
    [CreatedDate]        DATETIME2 (7) DEFAULT (getutcdate()) NOT NULL,
    [LastUpdateDate]     DATETIME2 (7) DEFAULT (getutcdate()) NOT NULL,
    PRIMARY KEY CLUSTERED ([IdNo] ASC)
);

