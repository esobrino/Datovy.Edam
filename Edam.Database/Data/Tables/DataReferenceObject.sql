CREATE TABLE [Data].[DataReferenceObject] (
    [CreatedDate]      DATETIME       DEFAULT (getutcdate()) NOT NULL,
    [LastUpdateDate]   DATETIME2 (7)  DEFAULT (getutcdate()) NOT NULL,
    [ReferenceDate]    DATETIME       DEFAULT (getutcdate()) NOT NULL,
    [ReferenceId]      VARCHAR (20)   NOT NULL,
    [ReferenceTypeNo]  INT            NOT NULL,
    [AliasId]          VARCHAR (20)   NULL,
    [AlternateId]      VARCHAR (40)   NULL,
    [Description]      VARCHAR (1024) NULL,
    [StatusNo]         INT            DEFAULT ((0)) NOT NULL,
    [UpdateSessionId]  VARCHAR (40)   NULL,
    [RecordStatusCode] CHAR (1)       DEFAULT ('A') NOT NULL,
    PRIMARY KEY CLUSTERED ([ReferenceId] ASC),
    CONSTRAINT [fk_DataReferenceObjectType] FOREIGN KEY ([ReferenceTypeNo]) REFERENCES [Data].[DataReferenceType] ([IdNo]),
    CONSTRAINT [fk_DataReferenceStatus] FOREIGN KEY ([StatusNo]) REFERENCES [Data].[DataReferenceStatus] ([IdNo])
);

