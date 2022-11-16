CREATE TABLE [Data].[DataCodeSet] (
    [OrganizationId]   VARCHAR (20)   NULL,
    [DomainNo]         INT            NOT NULL,
    [CodeSetNo]        BIGINT         IDENTITY (1, 1) NOT NULL,
    [CodeSetId]        VARCHAR (20)   NULL,
    [CodeSetUri]       VARCHAR (2048) NOT NULL,
    [CodeSetName]      VARCHAR (128)  NULL,
    [VersionId]        VARCHAR (20)   NULL,
    [DataOwnerId]      VARCHAR (20)   NULL,
    [CreatedDate]      DATETIME2 (7)  DEFAULT (getutcdate()) NOT NULL,
    [LastUpdateDate]   DATETIME2 (7)  DEFAULT (getutcdate()) NOT NULL,
    [UpdateSessionID]  VARCHAR (40)   NULL,
    [RecordStatusCode] CHAR (1)       DEFAULT ('A') NOT NULL,
    PRIMARY KEY CLUSTERED ([CodeSetNo] ASC),
    CONSTRAINT [fk_DataCodeSetDomain] FOREIGN KEY ([DomainNo]) REFERENCES [Data].[DataDomain] ([DomainNo])
);

