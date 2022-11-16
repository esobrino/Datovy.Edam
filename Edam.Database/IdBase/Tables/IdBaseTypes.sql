CREATE TABLE [IdBase].[IdBaseTypes] (
    [TypeNo]             SMALLINT      NOT NULL,
    [Description]        VARCHAR (40)  NOT NULL,
    [SpanishDescription] VARCHAR (20)  DEFAULT ('') NOT NULL,
    [Length]             INT           NOT NULL,
    [Template]           VARCHAR (128) NULL,
    [Required]           BIT           DEFAULT ((0)) NOT NULL,
    [TableName]          VARCHAR (40)  NULL,
    [TypeName]           VARCHAR (40)  DEFAULT ('System.String') NOT NULL,
    PRIMARY KEY CLUSTERED ([TypeNo] ASC)
);

