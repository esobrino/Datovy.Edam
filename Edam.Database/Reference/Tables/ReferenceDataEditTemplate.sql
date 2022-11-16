CREATE TABLE [Reference].[ReferenceDataEditTemplate] (
    [CreatedDate]       DATETIME2 (7) DEFAULT (getutcdate()) NOT NULL,
    [LastUpdateDate]    DATETIME2 (7) DEFAULT (getutcdate()) NOT NULL,
    [OrganizationId]    VARCHAR (20)  NOT NULL,
    [TemplateNo]        BIGINT        NOT NULL,
    [TemplateVersionId] VARCHAR (20)  DEFAULT ('v1r0') NULL,
    [ResourceName]      VARCHAR (128) NOT NULL,
    [TemplateDefaultNo] BIGINT        NULL,
    [TemplateTypeNo]    SMALLINT      DEFAULT ((20)) NULL,
    [TemplateData]      VARCHAR (MAX) NULL,
    [MapData]           VARCHAR (MAX) NULL,
    [GroupData]         VARCHAR (MAX) NULL,
    [Title]             VARCHAR (128) NOT NULL,
    [GroupNo]           BIGINT        DEFAULT ((0)) NOT NULL,
    [ScopeNo]           SMALLINT      DEFAULT ((1)) NULL,
    [StatusNo]          SMALLINT      DEFAULT ((1)) NULL,
    [PostUpdateScript]  VARCHAR (MAX) NULL,
    PRIMARY KEY CLUSTERED ([TemplateNo] ASC),
    CONSTRAINT [fk_ReferenceDataEditTemplateGroup] FOREIGN KEY ([GroupNo]) REFERENCES [Reference].[ReferenceDataEditGroup] ([GroupNo]),
    CONSTRAINT [fk_ReferenceDataEditTemplateScope] FOREIGN KEY ([ScopeNo]) REFERENCES [Object].[ObjectScopes] ([IdNo]),
    CONSTRAINT [fk_ReferenceDataEditTemplateStatus] FOREIGN KEY ([StatusNo]) REFERENCES [Object].[ObjectStatus] ([IdNo])
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ReferenceDataEditTemplateByName]
    ON [Reference].[ReferenceDataEditTemplate]([ResourceName] ASC);

