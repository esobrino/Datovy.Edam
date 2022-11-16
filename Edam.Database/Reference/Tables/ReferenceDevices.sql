CREATE TABLE [Reference].[ReferenceDevices] (
    [CreatedDate]    DATETIME     DEFAULT (getdate()) NOT NULL,
    [OrganizationId] VARCHAR (20) DEFAULT ('COMMONS') NOT NULL,
    [ReferenceId]    VARCHAR (20) NOT NULL,
    [DeviceId]       VARCHAR (60) NOT NULL,
    [Alias]          VARCHAR (80) NULL,
    [LastUpdate]     DATETIME     DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [fk_ReferenceDevicesReference] FOREIGN KEY ([OrganizationId], [ReferenceId]) REFERENCES [Reference].[ReferenceObjects] ([OrganizationId], [ReferenceId])
);

