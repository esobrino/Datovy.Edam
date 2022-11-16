CREATE TABLE [Reference].[ReferenceListGroup] (
    [CreatedDate]      DATETIME2 (7) DEFAULT (getutcdate()) NOT NULL,
    [OrganizationId]   VARCHAR (20)  NOT NULL,
    [GroupNo]          SMALLINT      NOT NULL,
    [ListNo]           SMALLINT      NOT NULL,
    [Name]             VARCHAR (80)  NOT NULL,
    [SequenceNo]       SMALLINT      DEFAULT ((0)) NOT NULL,
    [StatusNo]         SMALLINT      DEFAULT ((1)) NOT NULL,
    [DataOwnerId]      VARCHAR (20)  NULL,
    [UpdateSessionID]  VARCHAR (40)  NULL,
    [RecordStatusCode] CHAR (1)      DEFAULT ('A') NOT NULL,
    [LastUpdateDate]   DATETIME2 (7) DEFAULT (getutcdate()) NOT NULL,
    CONSTRAINT [pk_ReferenceListGroup] PRIMARY KEY CLUSTERED ([OrganizationId] ASC, [GroupNo] ASC, [ListNo] ASC),
    CONSTRAINT [fk_ReferenceListGroupNo] FOREIGN KEY ([OrganizationId], [GroupNo]) REFERENCES [Reference].[ReferenceList] ([OrganizationId], [IdNo]),
    CONSTRAINT [fk_ReferenceListGroupStatus] FOREIGN KEY ([StatusNo]) REFERENCES [Object].[ObjectStatus] ([IdNo])
);

