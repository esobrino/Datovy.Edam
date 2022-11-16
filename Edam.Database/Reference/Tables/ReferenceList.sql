CREATE TABLE [Reference].[ReferenceList] (
    [CreatedDate]      DATETIME2 (7) DEFAULT (getutcdate()) NOT NULL,
    [LastUpdateDate]   DATETIME2 (7) DEFAULT (getutcdate()) NOT NULL,
    [OrganizationId]   VARCHAR (20)  NOT NULL,
    [GroupId]          VARCHAR (40)  NULL,
    [IdNo]             SMALLINT      NOT NULL,
    [Name]             VARCHAR (80)  NOT NULL,
    [StatusNo]         SMALLINT      DEFAULT ((1)) NOT NULL,
    [DataOwnerId]      VARCHAR (20)  NULL,
    [UpdateSessionID]  VARCHAR (40)  NULL,
    [RecordStatusCode] CHAR (1)      DEFAULT ('A') NOT NULL,
    CONSTRAINT [pk_ReferenceList] PRIMARY KEY CLUSTERED ([OrganizationId] ASC, [IdNo] ASC),
    CONSTRAINT [fk_ReferenceListStatus] FOREIGN KEY ([StatusNo]) REFERENCES [Object].[ObjectStatus] ([IdNo])
);

