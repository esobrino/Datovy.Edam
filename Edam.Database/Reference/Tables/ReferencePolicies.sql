CREATE TABLE [Reference].[ReferencePolicies] (
    [CreatedDate]    DATETIME       DEFAULT (getdate()) NOT NULL,
    [OrganizationId] VARCHAR (20)   NOT NULL,
    [ReferenceId]    VARCHAR (20)   NOT NULL,
    [GroupNo]        SMALLINT       DEFAULT ((0)) NOT NULL,
    [TypeNo]         SMALLINT       DEFAULT ((0)) NOT NULL,
    [Value]          VARCHAR (1024) DEFAULT ('') NOT NULL,
    CONSTRAINT [fk_ReferencePoliciesGroup] FOREIGN KEY ([GroupNo]) REFERENCES [Reference].[ReferencePolicyGroups] ([IdNo]),
    CONSTRAINT [fk_ReferencePoliciesReference] FOREIGN KEY ([OrganizationId], [ReferenceId]) REFERENCES [Reference].[ReferenceObjects] ([OrganizationId], [ReferenceId]),
    CONSTRAINT [fk_ReferencePoliciesType] FOREIGN KEY ([TypeNo], [GroupNo]) REFERENCES [Reference].[ReferencePolicyTypes] ([IdNo], [GroupNo])
);

