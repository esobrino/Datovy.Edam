CREATE TABLE [B2B].[ExchangeCode] (
    [DataOwnerID]        VARCHAR (20)  NULL,
    [CodeID]             VARCHAR (40)  NOT NULL,
    [Description]        VARCHAR (128) NULL,
    [UpdateSessionID]    VARCHAR (40)  NULL,
    [CreatedDateTime]    DATETIME2 (7) DEFAULT (getutcdate()) NOT NULL,
    [LastUpdateDateTime] DATETIME2 (7) DEFAULT (getutcdate()) NOT NULL,
    [RecordStatusCode]   CHAR (1)      DEFAULT ('A') NOT NULL,
    PRIMARY KEY CLUSTERED ([CodeID] ASC)
);

