CREATE TABLE [IdBase].[IdBaseGroupMembers] (
    [IdNo]    INT      NOT NULL,
    [GroupNo] SMALLINT DEFAULT ((0)) NOT NULL,
    [TypeNo]  SMALLINT DEFAULT ((0)) NOT NULL,
    PRIMARY KEY CLUSTERED ([IdNo] ASC),
    CONSTRAINT [fk_ibgm00] FOREIGN KEY ([GroupNo]) REFERENCES [IdBase].[IdBaseGroups] ([IdNo]),
    CONSTRAINT [fk_ibgm01] FOREIGN KEY ([TypeNo]) REFERENCES [IdBase].[IdBaseTypes] ([TypeNo])
);

