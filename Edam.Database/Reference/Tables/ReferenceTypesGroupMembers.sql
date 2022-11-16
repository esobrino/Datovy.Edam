CREATE TABLE [Reference].[ReferenceTypesGroupMembers] (
    [IdNo]   SMALLINT NOT NULL,
    [TypeNo] SMALLINT NOT NULL,
    CONSTRAINT [pk_ReferenceTypesGroupMemberIdNoTypeNo] PRIMARY KEY CLUSTERED ([IdNo] ASC, [TypeNo] ASC),
    CONSTRAINT [fk_ReferenceTypesGroupMemberIdNo] FOREIGN KEY ([IdNo]) REFERENCES [Reference].[ReferenceTypesGroups] ([IdNo]),
    CONSTRAINT [fk_ReferenceTypesGroupMemberTypeNo] FOREIGN KEY ([TypeNo]) REFERENCES [Reference].[ReferenceBaseTypes] ([IdNo])
);

