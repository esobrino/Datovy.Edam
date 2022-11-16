CREATE TABLE [Data].[DataNote] (
    [CreatedDate]      DATETIME      DEFAULT (getdate()) NOT NULL,
    [LastUpdateDate]   DATETIME2 (7) DEFAULT (getutcdate()) NOT NULL,
    [OrganizationId]   VARCHAR (20)  NOT NULL,
    [AgentId]          VARCHAR (20)  NOT NULL,
    [ReferenceId]      VARCHAR (20)  NOT NULL,
    [NoteNo]           INT           IDENTITY (1, 1) NOT NULL,
    [NoteText]         VARCHAR (MAX) NOT NULL,
    [NoteTypeNo]       INT           DEFAULT ((0)) NOT NULL,
    [UpdateSessionID]  VARCHAR (40)  NULL,
    [RecordStatusCode] CHAR (1)      DEFAULT ('A') NOT NULL,
    PRIMARY KEY CLUSTERED ([NoteNo] ASC),
    CONSTRAINT [fk_DataNoteReference] FOREIGN KEY ([ReferenceId]) REFERENCES [Data].[DataReferenceObject] ([ReferenceId]),
    CONSTRAINT [fk_DataNoteType] FOREIGN KEY ([NoteTypeNo]) REFERENCES [Data].[DataNoteType] ([IdNo])
);

