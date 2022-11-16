CREATE TABLE [Data].[DataCodeElement] (
    [IdNo]             BIGINT        IDENTITY (1, 1) NOT NULL,
    [CodeSetNo]        BIGINT        NOT NULL,
    [ElementNo]        INT           NULL,
    [ElementPath]      VARCHAR (512) NOT NULL,
    [OrganizationId]   VARCHAR (20)  NULL,
    [DataOwnerId]      VARCHAR (20)  NULL,
    [CreatedDate]      DATETIME2 (7) DEFAULT (getutcdate()) NOT NULL,
    [LastUpdateDate]   DATETIME2 (7) DEFAULT (getutcdate()) NOT NULL,
    [UpdateSessionID]  VARCHAR (40)  NULL,
    [RecordStatusCode] CHAR (1)      DEFAULT ('A') NOT NULL,
    PRIMARY KEY CLUSTERED ([IdNo] ASC),
    CONSTRAINT [fk_DataCodeElementCodeSet] FOREIGN KEY ([CodeSetNo]) REFERENCES [Data].[DataCodeSet] ([CodeSetNo]),
    CONSTRAINT [fk_DataCodeElementNo] FOREIGN KEY ([ElementNo]) REFERENCES [Data].[DataElement] ([ElementNo])
);

