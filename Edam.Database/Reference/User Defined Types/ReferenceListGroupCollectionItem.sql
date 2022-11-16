CREATE TYPE [Reference].[ReferenceListGroupCollectionItem] AS TABLE (
    [SerialNo]       BIGINT        NOT NULL,
    [OrganizationId] VARCHAR (20)  NULL,
    [ReferenceId]    VARCHAR (20)  NULL,
    [GroupNo]        SMALLINT      NULL,
    [ListNo]         SMALLINT      NULL,
    [ReferenceDate]  DATETIME2 (7) NULL,
    [Comment]        VARCHAR (80)  NULL,
    PRIMARY KEY CLUSTERED ([SerialNo] ASC));

