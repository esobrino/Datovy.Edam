CREATE TABLE [IdBase].[IdBaseCounters] (
    [IdNo]        INT          NOT NULL,
    [IdString]    VARCHAR (20) NOT NULL,
    [Description] VARCHAR (40) NOT NULL,
    [IdCount]     INT          NOT NULL,
    PRIMARY KEY CLUSTERED ([IdNo] ASC)
);

