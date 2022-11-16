CREATE TABLE [Data].[DataGroup] (
    [CreatedDate]      DATETIME       DEFAULT (getutcdate()) NOT NULL,
    [LastUpdateDate]   DATETIME2 (7)  DEFAULT (getutcdate()) NOT NULL,
    [GroupNo]          INT            IDENTITY (1, 1) NOT NULL,
    [GroupId]          VARCHAR (20)   NULL,
    [GroupTypeNo]      INT            DEFAULT ((0)) NOT NULL,
    [AlternateID]      VARCHAR (40)   NULL,
    [GroupURI]         VARCHAR (2048) NOT NULL,
    [Path]             VARCHAR (2048) NULL,
    [Name]             VARCHAR (256)  NULL,
    [Description]      VARCHAR (1024) NULL,
    [StatusNo]         SMALLINT       DEFAULT ((0)) NOT NULL,
    [UpdateSessionID]  VARCHAR (40)   NULL,
    [RecordStatusCode] CHAR (1)       DEFAULT ('A') NOT NULL,
    PRIMARY KEY CLUSTERED ([GroupNo] ASC),
    CONSTRAINT [fk_DataAssetGroupType] FOREIGN KEY ([GroupTypeNo]) REFERENCES [Data].[DataAssetGroupType] ([IdNo]),
    CONSTRAINT [fk_DataGroupStatus] FOREIGN KEY ([StatusNo]) REFERENCES [Object].[ObjectStatus] ([IdNo])
);

