CREATE TABLE [Data].[DataDomain] (
    [CreatedDate]      DATETIME2 (7)  DEFAULT (getutcdate()) NOT NULL,
    [LastUpdateDate]   DATETIME2 (7)  DEFAULT (getutcdate()) NOT NULL,
    [OrganizationId]   VARCHAR (20)   NOT NULL,
    [DataOwnerId]      VARCHAR (20)   NOT NULL,
    [TypeNo]           SMALLINT       DEFAULT ((0)) NOT NULL,
    [Prefix]           VARCHAR (20)   NOT NULL,
    [Root]             VARCHAR (1024) NOT NULL,
    [Domain]           VARCHAR (2048) NULL,
    [DomainNo]         INT            IDENTITY (1, 1) NOT NULL,
    [DomainID]         VARCHAR (20)   NULL,
    [DomainURI]        VARCHAR (2048) NOT NULL,
    [DomainName]       VARCHAR (256)  NOT NULL,
    [Description]      VARCHAR (MAX)  NOT NULL,
    [UpdateSessionID]  VARCHAR (40)   NULL,
    [RecordStatusCode] CHAR (1)       DEFAULT ('A') NOT NULL,
    PRIMARY KEY CLUSTERED ([DomainNo] ASC),
    CONSTRAINT [fk_DataDomainType] FOREIGN KEY ([TypeNo]) REFERENCES [Data].[DataDomainType] ([IdNo])
);

