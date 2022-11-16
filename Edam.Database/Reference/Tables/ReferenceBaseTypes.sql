CREATE TABLE [Reference].[ReferenceBaseTypes] (
    [IdNo]               SMALLINT      NOT NULL,
    [Description]        VARCHAR (80)  NOT NULL,
    [SpanishDescription] VARCHAR (80)  NOT NULL,
    [ForceComposedName]  BIT           DEFAULT ((0)) NOT NULL,
    [ApplyToIndividual]  BIT           DEFAULT ((0)) NOT NULL,
    [CategoryId]         VARCHAR (128) NULL,
    [DataOwnerId]        VARCHAR (20)  NULL,
    [UpdateSessionID]    VARCHAR (40)  NULL,
    [RecordStatusCode]   CHAR (1)      DEFAULT ('A') NOT NULL,
    [CreatedDate]        DATETIME2 (7) DEFAULT (getutcdate()) NOT NULL,
    [LastUpdateDate]     DATETIME2 (7) DEFAULT (getutcdate()) NOT NULL,
    PRIMARY KEY CLUSTERED ([IdNo] ASC)
);

