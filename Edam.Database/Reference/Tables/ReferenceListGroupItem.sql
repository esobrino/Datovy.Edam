CREATE TABLE [Reference].[ReferenceListGroupItem] (
    [CreatedDate]    DATETIME2 (7) DEFAULT (getutcdate()) NOT NULL,
    [LastUpdateDate] DATETIME2 (7) DEFAULT (getutcdate()) NOT NULL,
    [OrganizationId] VARCHAR (20)  NOT NULL,
    [ListNo]         SMALLINT      NOT NULL,
    [GroupNo]        SMALLINT      NOT NULL,
    [ReferenceId]    VARCHAR (20)  NOT NULL,
    [ReferenceDate]  DATETIME2 (7) NULL,
    [Comment]        VARCHAR (80)  NULL,
    CONSTRAINT [pk_ReferenceListGroupItemPK] PRIMARY KEY CLUSTERED ([OrganizationId] ASC, [ReferenceId] ASC, [ListNo] ASC),
    CONSTRAINT [fk_ReferenceListGroupItemGroup] FOREIGN KEY ([OrganizationId], [GroupNo], [ListNo]) REFERENCES [Reference].[ReferenceListGroup] ([OrganizationId], [GroupNo], [ListNo])
);

