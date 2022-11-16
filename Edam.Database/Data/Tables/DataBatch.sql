CREATE TABLE [Data].[DataBatch] (
    [BatchNo]          INT          IDENTITY (1, 1) NOT NULL,
    [BatchId]          VARCHAR (40) NOT NULL,
    [DomainNo]         INT          NOT NULL,
    [GroupId]          VARCHAR (40) NULL,
    [SequenceNo]       INT          NULL,
    [VersionId]        VARCHAR (20) NULL,
    [CreatedDate]      DATETIME     DEFAULT (getutcdate()) NOT NULL,
    [LastUpdateDate]   DATETIME     DEFAULT (getutcdate()) NOT NULL,
    [OrganizationId]   VARCHAR (20) NOT NULL,
    [DataOwnerId]      VARCHAR (20) NOT NULL,
    [UpdateSessionID]  VARCHAR (40) NULL,
    [RecordStatusCode] CHAR (1)     DEFAULT ('A') NOT NULL,
    PRIMARY KEY CLUSTERED ([BatchId] ASC),
    CONSTRAINT [fk_DataBatchDomain] FOREIGN KEY ([DomainNo]) REFERENCES [Data].[DataDomain] ([DomainNo])
);

