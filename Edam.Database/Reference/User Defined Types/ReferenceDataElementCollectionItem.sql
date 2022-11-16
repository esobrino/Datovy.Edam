CREATE TYPE [Reference].[ReferenceDataElementCollectionItem] AS TABLE (
    [SerialNo]  BIGINT        NOT NULL,
    [Name]      VARCHAR (128) NULL,
    [ValueType] SMALLINT      NULL,
    [KeyType]   SMALLINT      NULL,
    [ValueText] VARCHAR (128) NULL,
    PRIMARY KEY CLUSTERED ([SerialNo] ASC));

