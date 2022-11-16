CREATE TABLE [Reference].[ReferencePolicyTypes] (
    [IdNo]               SMALLINT       NOT NULL,
    [GroupNo]            SMALLINT       DEFAULT ((0)) NOT NULL,
    [ValueTypeNo]        SMALLINT       DEFAULT ((0)) NOT NULL,
    [Value]              VARCHAR (1024) DEFAULT ('') NOT NULL,
    [Description]        VARCHAR (80)   NULL,
    [SpanishDescription] VARCHAR (80)   NULL,
    [DataOwnerId]        VARCHAR (20)   NULL,
    [UpdateSessionID]    VARCHAR (40)   NULL,
    [RecordStatusCode]   CHAR (1)       DEFAULT ('A') NOT NULL,
    [CreatedDate]        DATETIME2 (7)  DEFAULT (getutcdate()) NOT NULL,
    [LastUpdateDate]     DATETIME2 (7)  DEFAULT (getutcdate()) NOT NULL,
    CONSTRAINT [pk_ReferencePolicyType] PRIMARY KEY CLUSTERED ([IdNo] ASC, [GroupNo] ASC),
    CONSTRAINT [fk_ReferencePolicyTypeGroup] FOREIGN KEY ([GroupNo]) REFERENCES [Reference].[ReferencePolicyGroups] ([IdNo]),
    CONSTRAINT [fk_ReferencePolicyTypeValueType] FOREIGN KEY ([ValueTypeNo]) REFERENCES [Object].[ObjectValueTypes] ([IdNo])
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ux_ReferencePolicyType]
    ON [Reference].[ReferencePolicyTypes]([IdNo] ASC);

