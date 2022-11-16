CREATE TABLE [Reference].[ReferenceDataEditGroup] (
    [CreatedDate]    DATETIME2 (7) DEFAULT (getutcdate()) NOT NULL,
    [LastUpdateDate] DATETIME2 (7) DEFAULT (getutcdate()) NOT NULL,
    [OrganizationId] VARCHAR (20)  NULL,
    [GroupNo]        BIGINT        NOT NULL,
    [GroupName]      VARCHAR (80)  NULL,
    [ScopeNo]        SMALLINT      DEFAULT ((1)) NULL,
    [StatusNo]       SMALLINT      DEFAULT ((1)) NULL,
    [LinkData]       VARCHAR (MAX) NULL,
    PRIMARY KEY CLUSTERED ([GroupNo] ASC),
    CONSTRAINT [fk_ReferenceDataEditGroupScope] FOREIGN KEY ([ScopeNo]) REFERENCES [Object].[ObjectScopes] ([IdNo]),
    CONSTRAINT [fk_ReferenceDataEditGroupStatus] FOREIGN KEY ([StatusNo]) REFERENCES [Object].[ObjectStatus] ([IdNo])
);

