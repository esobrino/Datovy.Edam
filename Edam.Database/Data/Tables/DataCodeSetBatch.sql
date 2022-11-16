CREATE TABLE [Data].[DataCodeSetBatch] (
    [OrganizationId]   VARCHAR (20)  NULL,
    [DomainNo]         INT           NOT NULL,
    [CodeSetNo]        BIGINT        NULL,
    [BatchNo]          INT           IDENTITY (1, 1) NOT NULL,
    [BatchId]          VARCHAR (40)  NOT NULL,
    [CreatedDate]      DATETIME2 (7) DEFAULT (getutcdate()) NOT NULL,
    [LastUpdateDate]   DATETIME2 (7) DEFAULT (getutcdate()) NOT NULL,
    [UpdateSessionID]  VARCHAR (40)  NULL,
    [RecordStatusCode] CHAR (1)      DEFAULT ('A') NOT NULL,
    PRIMARY KEY CLUSTERED ([BatchNo] ASC),
    CONSTRAINT [fk_DataCodeSetBatch] FOREIGN KEY ([CodeSetNo]) REFERENCES [Data].[DataCodeSet] ([CodeSetNo])
);

