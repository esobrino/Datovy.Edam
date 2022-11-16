CREATE TABLE [Data].[DataCode] (
    [IdNo]             BIGINT        IDENTITY (1, 1) NOT NULL,
    [BatchNo]          INT           NOT NULL,
    [CodeSetNo]        BIGINT        NOT NULL,
    [CodeId]           VARCHAR (40)  NULL,
    [AlternateId]      VARCHAR (80)  NULL,
    [OrganizationId]   VARCHAR (20)  NULL,
    [VersionId]        VARCHAR (20)  NULL,
    [Description]      VARCHAR (512) NOT NULL,
    [CategoryId]       VARCHAR (20)  NULL,
    [DataOwnerId]      VARCHAR (20)  NULL,
    [CreatedDate]      DATETIME2 (7) DEFAULT (getutcdate()) NOT NULL,
    [LastUpdateDate]   DATETIME2 (7) DEFAULT (getutcdate()) NOT NULL,
    [UpdateSessionID]  VARCHAR (40)  NULL,
    [RecordStatusCode] CHAR (1)      DEFAULT ('A') NOT NULL,
    PRIMARY KEY CLUSTERED ([IdNo] ASC),
    CONSTRAINT [fk_DataCodeNo] FOREIGN KEY ([CodeSetNo]) REFERENCES [Data].[DataCodeSet] ([CodeSetNo])
);

