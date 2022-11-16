CREATE TABLE [Reference].[ReferenceTraceLog] (
    [CreatedDate]    DATETIME     DEFAULT (getdate()) NOT NULL,
    [TraceDate]      DATETIME     DEFAULT (getdate()) NOT NULL,
    [SessionId]      VARCHAR (40) NULL,
    [TraceNo]        BIGINT       IDENTITY (1, 1) NOT NULL,
    [TypeNo]         SMALLINT     DEFAULT ((0)) NOT NULL,
    [OrganizationId] VARCHAR (20) DEFAULT ('COMMONS') NOT NULL,
    [ReferenceId]    VARCHAR (20) NOT NULL,
    PRIMARY KEY CLUSTERED ([TraceNo] ASC),
    CONSTRAINT [fk_ReferenceTraceLog] FOREIGN KEY ([OrganizationId], [ReferenceId]) REFERENCES [Reference].[ReferenceObjects] ([OrganizationId], [ReferenceId]),
    CONSTRAINT [fk_ReferenceTraceLogType] FOREIGN KEY ([TypeNo]) REFERENCES [Reference].[ReferenceTraceTypes] ([IdNo])
);

