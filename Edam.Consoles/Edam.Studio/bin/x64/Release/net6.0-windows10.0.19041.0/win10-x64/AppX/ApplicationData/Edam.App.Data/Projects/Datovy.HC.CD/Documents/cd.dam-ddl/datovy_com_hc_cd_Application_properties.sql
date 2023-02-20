EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Identify end-user or service access during a period of time',
   @level0type = N'SCHEMA',   @level0name = N'Application',
   @level1type = N'TABLE',    @level1name = N'Session';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session ID',
   @level0type = N'SCHEMA',   @level0name = N'Application',
   @level1type = N'TABLE',    @level1name = N'Session',
   @level2type = N'COLUMN',   @level2name = N'Session_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Identify and describe the session type',
   @level0type = N'SCHEMA',   @level0name = N'Application',
   @level1type = N'TABLE',    @level1name = N'Session',
   @level2type = N'COLUMN',   @level2name = N'Session_Type_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Application',
   @level1type = N'TABLE',    @level1name = N'Session',
   @level2type = N'COLUMN',   @level2name = N'Session_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Referral ID... External reference to a (Surveillance) Referral',
   @level0type = N'SCHEMA',   @level0name = N'Application',
   @level1type = N'TABLE',    @level1name = N'Session',
   @level2type = N'COLUMN',   @level2name = N'Referral_ID';

EXECUTE sp_addextendedproperty
   @name = 'X_Reference', @value = 'Referral ID... External reference to a (Surveillance) Referral',
   @level0type = N'SCHEMA',   @level0name = N'Application',
   @level1type = N'TABLE',    @level1name = N'Session',
   @level2type = N'COLUMN',   @level2name = N'Referral_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Case ID... External reference to a (Management) Case',
   @level0type = N'SCHEMA',   @level0name = N'Application',
   @level1type = N'TABLE',    @level1name = N'Session',
   @level2type = N'COLUMN',   @level2name = N'Case_ID';

EXECUTE sp_addextendedproperty
   @name = 'X_Reference', @value = 'Case ID... External reference to a (Management) Case',
   @level0type = N'SCHEMA',   @level0name = N'Application',
   @level1type = N'TABLE',    @level1name = N'Session',
   @level2type = N'COLUMN',   @level2name = N'Case_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Officer ID... External reference to a (Entity) Officer',
   @level0type = N'SCHEMA',   @level0name = N'Application',
   @level1type = N'TABLE',    @level1name = N'Session',
   @level2type = N'COLUMN',   @level2name = N'Officer_ID';

EXECUTE sp_addextendedproperty
   @name = 'X_Reference', @value = 'Officer ID... External reference to a (Entity) Officer',
   @level0type = N'SCHEMA',   @level0name = N'Application',
   @level1type = N'TABLE',    @level1name = N'Session',
   @level2type = N'COLUMN',   @level2name = N'Officer_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Contact ID... External reference to a (Entity) Contact',
   @level0type = N'SCHEMA',   @level0name = N'Application',
   @level1type = N'TABLE',    @level1name = N'Session',
   @level2type = N'COLUMN',   @level2name = N'Contact_ID';

EXECUTE sp_addextendedproperty
   @name = 'X_Reference', @value = 'Contact ID... External reference to a (Entity) Contact',
   @level0type = N'SCHEMA',   @level0name = N'Application',
   @level1type = N'TABLE',    @level1name = N'Session',
   @level2type = N'COLUMN',   @level2name = N'Contact_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Token ID',
   @level0type = N'SCHEMA',   @level0name = N'Application',
   @level1type = N'TABLE',    @level1name = N'Session',
   @level2type = N'COLUMN',   @level2name = N'Token_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Application',
   @level1type = N'TABLE',    @level1name = N'Session',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Application',
   @level1type = N'TABLE',    @level1name = N'Session',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Application',
   @level1type = N'TABLE',    @level1name = N'Session',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Application',
   @level1type = N'TABLE',    @level1name = N'Session',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Application',
   @level1type = N'TABLE',    @level1name = N'Session',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Application',
   @level1type = N'TABLE',    @level1name = N'Session',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Application',
   @level1type = N'TABLE',    @level1name = N'Session',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Application',
   @level1type = N'TABLE',    @level1name = N'Session',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Application',
   @level1type = N'TABLE',    @level1name = N'Session',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Application',
   @level1type = N'TABLE',    @level1name = N'Session',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Application',
   @level1type = N'TABLE',    @level1name = N'Session',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Registry of the access token for given officer or system user',
   @level0type = N'SCHEMA',   @level0name = N'Application',
   @level1type = N'TABLE',    @level1name = N'Access_Token';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'User ID... External reference to a (Entity) Officer',
   @level0type = N'SCHEMA',   @level0name = N'Application',
   @level1type = N'TABLE',    @level1name = N'Access_Token',
   @level2type = N'COLUMN',   @level2name = N'User_ID';

EXECUTE sp_addextendedproperty
   @name = 'X_Reference', @value = 'User ID... External reference to a (Entity) Officer',
   @level0type = N'SCHEMA',   @level0name = N'Application',
   @level1type = N'TABLE',    @level1name = N'Access_Token',
   @level2type = N'COLUMN',   @level2name = N'User_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Token ID',
   @level0type = N'SCHEMA',   @level0name = N'Application',
   @level1type = N'TABLE',    @level1name = N'Access_Token',
   @level2type = N'COLUMN',   @level2name = N'Token_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Application',
   @level1type = N'TABLE',    @level1name = N'Access_Token',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Application',
   @level1type = N'TABLE',    @level1name = N'Access_Token',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Application',
   @level1type = N'TABLE',    @level1name = N'Access_Token',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Application',
   @level1type = N'TABLE',    @level1name = N'Access_Token',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Application',
   @level1type = N'TABLE',    @level1name = N'Access_Token',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Application',
   @level1type = N'TABLE',    @level1name = N'Access_Token',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Application',
   @level1type = N'TABLE',    @level1name = N'Access_Token',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Application',
   @level1type = N'TABLE',    @level1name = N'Access_Token',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Application',
   @level1type = N'TABLE',    @level1name = N'Access_Token',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Application',
   @level1type = N'TABLE',    @level1name = N'Access_Token',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Application',
   @level1type = N'TABLE',    @level1name = N'Access_Token',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Registry or log of application runtime related messages',
   @level0type = N'SCHEMA',   @level0name = N'Application',
   @level1type = N'TABLE',    @level1name = N'App_Message_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code Number',
   @level0type = N'SCHEMA',   @level0name = N'Application',
   @level1type = N'TABLE',    @level1name = N'App_Message_Code',
   @level2type = N'COLUMN',   @level2name = N'Code_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Application',
   @level1type = N'TABLE',    @level1name = N'App_Message_Code',
   @level2type = N'COLUMN',   @level2name = N'Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Description',
   @level0type = N'SCHEMA',   @level0name = N'Application',
   @level1type = N'TABLE',    @level1name = N'App_Message_Code',
   @level2type = N'COLUMN',   @level2name = N'Description';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Category ID',
   @level0type = N'SCHEMA',   @level0name = N'Application',
   @level1type = N'TABLE',    @level1name = N'App_Message_Code',
   @level2type = N'COLUMN',   @level2name = N'Category_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code Set Name',
   @level0type = N'SCHEMA',   @level0name = N'Application',
   @level1type = N'TABLE',    @level1name = N'App_Message_Code',
   @level2type = N'COLUMN',   @level2name = N'CodeSet_Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Application',
   @level1type = N'TABLE',    @level1name = N'App_Message_Code',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Application',
   @level1type = N'TABLE',    @level1name = N'App_Message_Code',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Application',
   @level1type = N'TABLE',    @level1name = N'App_Message_Code',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Application',
   @level1type = N'TABLE',    @level1name = N'App_Message_Code',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Application',
   @level1type = N'TABLE',    @level1name = N'App_Message_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Application',
   @level1type = N'TABLE',    @level1name = N'App_Message_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Application',
   @level1type = N'TABLE',    @level1name = N'App_Message_Code',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Application',
   @level1type = N'TABLE',    @level1name = N'App_Message_Code',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Application',
   @level1type = N'TABLE',    @level1name = N'App_Message_Code',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Application',
   @level1type = N'TABLE',    @level1name = N'App_Message_Code',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Application',
   @level1type = N'TABLE',    @level1name = N'App_Message_Code',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Application ',
   @level0type = N'SCHEMA',   @level0name = N'cd8',
   @level1type = N'TABLE',    @level1name = N'Application';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session',
   @level0type = N'SCHEMA',   @level0name = N'cd8',
   @level1type = N'TABLE',    @level1name = N'Application',
   @level2type = N'COLUMN',   @level2name = N'Session';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Access Token',
   @level0type = N'SCHEMA',   @level0name = N'cd8',
   @level1type = N'TABLE',    @level1name = N'Application',
   @level2type = N'COLUMN',   @level2name = N'Access_Token';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'App Message Code',
   @level0type = N'SCHEMA',   @level0name = N'cd8',
   @level1type = N'TABLE',    @level1name = N'Application',
   @level2type = N'COLUMN',   @level2name = N'App_Message_Code';

