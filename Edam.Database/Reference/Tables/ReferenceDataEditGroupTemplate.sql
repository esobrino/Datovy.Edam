CREATE TABLE [Reference].[ReferenceDataEditGroupTemplate] (
    [CreatedDate]    DATETIME2 (7) DEFAULT (getutcdate()) NOT NULL,
    [LastUpdateDate] DATETIME2 (7) DEFAULT (getutcdate()) NOT NULL,
    [OrganizationId] VARCHAR (20)  NOT NULL,
    [ReferenceId]    VARCHAR (20)  NOT NULL,
    [GroupNo]        BIGINT        NOT NULL,
    [TemplateNo]     BIGINT        NOT NULL,
    CONSTRAINT [pk_ReferenceDataEditGroupTemplate] PRIMARY KEY CLUSTERED ([OrganizationId] ASC, [GroupNo] ASC, [TemplateNo] ASC),
    CONSTRAINT [fk_ReferenceDataEditGroup] FOREIGN KEY ([GroupNo]) REFERENCES [Reference].[ReferenceDataEditGroup] ([GroupNo]),
    CONSTRAINT [fk_ReferenceDataEditGroupOrganization] FOREIGN KEY ([OrganizationId], [ReferenceId]) REFERENCES [Reference].[ReferenceObjects] ([OrganizationId], [ReferenceId]),
    CONSTRAINT [fk_ReferenceDataEditTemplate] FOREIGN KEY ([TemplateNo]) REFERENCES [Reference].[ReferenceDataEditTemplate] ([TemplateNo])
);

