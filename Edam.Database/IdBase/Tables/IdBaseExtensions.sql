CREATE TABLE [IdBase].[IdBaseExtensions] (
    [ExtensionNo] SMALLINT      NOT NULL,
    [IdString]    VARCHAR (20)  NOT NULL,
    [Description] VARCHAR (40)  NOT NULL,
    [Length]      INT           NOT NULL,
    [Template]    VARCHAR (128) NULL,
    [Required]    BIT           DEFAULT ((0)) NOT NULL,
    [TypeName]    VARCHAR (40)  DEFAULT ('System.String') NOT NULL,
    PRIMARY KEY CLUSTERED ([ExtensionNo] ASC)
);

