CREATE TYPE [Reference].[ReferencePolicyValueItem] AS TABLE (
    [SerialNo]       BIGINT         NOT NULL,
    [OrganizationId] VARCHAR (20)   NULL,
    [EntityId]       VARCHAR (20)   NULL,
    [PolicyNo]       SMALLINT       NULL,
    [Value]          VARCHAR (1024) NULL,
    PRIMARY KEY CLUSTERED ([SerialNo] ASC));

