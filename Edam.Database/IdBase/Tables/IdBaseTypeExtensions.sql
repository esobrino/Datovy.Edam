CREATE TABLE [IdBase].[IdBaseTypeExtensions] (
    [TypeNo]      SMALLINT NOT NULL,
    [ExtensionNo] SMALLINT NOT NULL,
    CONSTRAINT [pk_ibte00] PRIMARY KEY CLUSTERED ([TypeNo] ASC, [ExtensionNo] ASC),
    CONSTRAINT [fk_ibte01] FOREIGN KEY ([TypeNo]) REFERENCES [IdBase].[IdBaseTypes] ([TypeNo]),
    CONSTRAINT [fk_ibte02] FOREIGN KEY ([ExtensionNo]) REFERENCES [IdBase].[IdBaseExtensions] ([ExtensionNo])
);

