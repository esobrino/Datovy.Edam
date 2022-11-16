CREATE TABLE [Reference].[ReferencePreference] (
    [CreatedDate]    DATETIME      DEFAULT (getdate()) NULL,
    [OrganizationId] VARCHAR (20)  DEFAULT ('COMMONS') NOT NULL,
    [ReferenceId]    VARCHAR (20)  NOT NULL,
    [PreferencesBag] VARCHAR (MAX) NULL,
    CONSTRAINT [pk_ReferencePreference] PRIMARY KEY CLUSTERED ([OrganizationId] ASC, [ReferenceId] ASC)
);

