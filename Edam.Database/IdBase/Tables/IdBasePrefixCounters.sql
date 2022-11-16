CREATE TABLE [IdBase].[IdBasePrefixCounters] (
    [OrganizationId]   VARCHAR (20)  NOT NULL,
    [PrefixId]         VARCHAR (2)   NOT NULL,
    [IdString]         VARCHAR (20)  NOT NULL,
    [Description]      VARCHAR (40)  NOT NULL,
    [IdCount]          INT           NOT NULL,
    [DataOwnerId]      VARCHAR (20)  NULL,
    [UpdateSessionID]  VARCHAR (40)  NULL,
    [RecordStatusCode] CHAR (1)      DEFAULT ('A') NOT NULL,
    [CreatedDate]      DATETIME2 (7) DEFAULT (getutcdate()) NOT NULL,
    [LastUpdateDate]   DATETIME2 (7) DEFAULT (getutcdate()) NOT NULL,
    CONSTRAINT [pk_IdBasePrefixCounter] PRIMARY KEY CLUSTERED ([OrganizationId] ASC, [PrefixId] ASC)
);

