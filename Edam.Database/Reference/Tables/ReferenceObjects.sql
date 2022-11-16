CREATE TABLE [Reference].[ReferenceObjects] (
    [CreatedDate]    DATETIME         DEFAULT (getdate()) NOT NULL,
    [LastUpdateDate] DATETIME         DEFAULT (getdate()) NOT NULL,
    [ObjectNo]       BIGINT           IDENTITY (1, 1) NOT NULL,
    [TypeNo]         SMALLINT         DEFAULT ((0)) NOT NULL,
    [EntityTypeNo]   SMALLINT         DEFAULT ((0)) NOT NULL,
    [ReferenceGuid]  UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [OrganizationId] VARCHAR (20)     NOT NULL,
    [ReferenceId]    VARCHAR (20)     NOT NULL,
    [AlternateId]    VARCHAR (40)     DEFAULT ('') NOT NULL,
    [Alias]          VARCHAR (80)     DEFAULT ('') NOT NULL,
    [Description]    VARCHAR (80)     DEFAULT ('') NOT NULL,
    [StatusNo]       SMALLINT         DEFAULT ((0)) NOT NULL,
    [PropertiesBag]  VARCHAR (MAX)    NULL,
    CONSTRAINT [pk_ReferenceObjectPk] PRIMARY KEY CLUSTERED ([OrganizationId] ASC, [ReferenceId] ASC),
    CONSTRAINT [fk_ReferenceObjectStatus] FOREIGN KEY ([StatusNo]) REFERENCES [Object].[ObjectStatus] ([IdNo]),
    CONSTRAINT [fk_ReferenceObjectTypeNo] FOREIGN KEY ([TypeNo]) REFERENCES [Reference].[ReferenceTypes] ([IdNo]),
    CONSTRAINT [fk_ReferenceObjectTypeNoEntityTypeNo] FOREIGN KEY ([EntityTypeNo]) REFERENCES [Reference].[ReferenceBaseTypes] ([IdNo])
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ux_ReferenceObject]
    ON [Reference].[ReferenceObjects]([ObjectNo] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ux_ReferenceObjectAlternateId]
    ON [Reference].[ReferenceObjects]([OrganizationId] ASC, [ReferenceId] ASC, [AlternateId] ASC);

