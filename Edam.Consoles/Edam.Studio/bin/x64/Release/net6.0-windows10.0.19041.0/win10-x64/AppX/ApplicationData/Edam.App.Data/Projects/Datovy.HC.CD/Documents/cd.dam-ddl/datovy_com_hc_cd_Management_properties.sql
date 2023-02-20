EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Identify and describe a kind of Referral',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Referral_Type';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Type ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Referral_Type',
   @level2type = N'COLUMN',   @level2name = N'Type_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Description',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Referral_Type',
   @level2type = N'COLUMN',   @level2name = N'Description';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Category ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Referral_Type',
   @level2type = N'COLUMN',   @level2name = N'Category_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code Set Name',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Referral_Type',
   @level2type = N'COLUMN',   @level2name = N'CodeSet_Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Referral_Type',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Referral_Type',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Referral_Type',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Referral_Type',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Referral_Type',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Referral_Type',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Referral_Type',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Referral_Type',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Referral_Type',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Referral_Type',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Referral_Type',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'A recommendation of a person to an activity, program or product',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Referral';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Referral ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Referral',
   @level2type = N'COLUMN',   @level2name = N'Referral_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Type ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Referral',
   @level2type = N'COLUMN',   @level2name = N'Type_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Alternate ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Referral',
   @level2type = N'COLUMN',   @level2name = N'Alternate_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Referral Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Referral',
   @level2type = N'COLUMN',   @level2name = N'Referral_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Case ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Referral',
   @level2type = N'COLUMN',   @level2name = N'Case_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Profile ID... External reference to (Surveillance) Profile',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Referral',
   @level2type = N'COLUMN',   @level2name = N'Profile_ID';

EXECUTE sp_addextendedproperty
   @name = 'X_Reference', @value = 'Profile ID... External reference to (Surveillance) Profile',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Referral',
   @level2type = N'COLUMN',   @level2name = N'Profile_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Provider ID... External reference to (Provider) Provider',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Referral',
   @level2type = N'COLUMN',   @level2name = N'Provider_ID';

EXECUTE sp_addextendedproperty
   @name = 'X_Reference', @value = 'Provider ID... External reference to (Provider) Provider',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Referral',
   @level2type = N'COLUMN',   @level2name = N'Provider_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Activity ID... External reference to (Action) Activity',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Referral',
   @level2type = N'COLUMN',   @level2name = N'Activity_ID';

EXECUTE sp_addextendedproperty
   @name = 'X_Reference', @value = 'Activity ID... External reference to (Action) Activity',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Referral',
   @level2type = N'COLUMN',   @level2name = N'Activity_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Referral',
   @level2type = N'COLUMN',   @level2name = N'Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Status Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Referral',
   @level2type = N'COLUMN',   @level2name = N'Status_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Referral',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Referral',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Referral',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Referral',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Referral',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Referral',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Referral',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Referral',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Referral',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Referral',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Referral',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Identify and describe a variable code used to indicate a property or state of a value',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Flag_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Flag_Code',
   @level2type = N'COLUMN',   @level2name = N'Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Description',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Flag_Code',
   @level2type = N'COLUMN',   @level2name = N'Description';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Category ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Flag_Code',
   @level2type = N'COLUMN',   @level2name = N'Category_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code Set Name',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Flag_Code',
   @level2type = N'COLUMN',   @level2name = N'CodeSet_Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Flag_Code',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Flag_Code',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Flag_Code',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Flag_Code',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Flag_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Flag_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Flag_Code',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Flag_Code',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Flag_Code',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Flag_Code',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Flag_Code',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Identify and describe a kind of Case',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Case_Type';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Type ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Case_Type',
   @level2type = N'COLUMN',   @level2name = N'Type_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Description',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Case_Type',
   @level2type = N'COLUMN',   @level2name = N'Description';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Category ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Case_Type',
   @level2type = N'COLUMN',   @level2name = N'Category_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Duration',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Case_Type',
   @level2type = N'COLUMN',   @level2name = N'Duration';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Near Complete Duration',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Case_Type',
   @level2type = N'COLUMN',   @level2name = N'Near_Complete_Duration';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code Set Name',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Case_Type',
   @level2type = N'COLUMN',   @level2name = N'CodeSet_Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Case_Type',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Case_Type',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Case_Type',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Case_Type',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Case_Type',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Case_Type',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Case_Type',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Case_Type',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Case_Type',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Case_Type',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Case_Type',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Identify and describe the precedence or importance of something',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Priority_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Priority_Code',
   @level2type = N'COLUMN',   @level2name = N'Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Description',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Priority_Code',
   @level2type = N'COLUMN',   @level2name = N'Description';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Category ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Priority_Code',
   @level2type = N'COLUMN',   @level2name = N'Category_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code Set Name',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Priority_Code',
   @level2type = N'COLUMN',   @level2name = N'CodeSet_Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Priority_Code',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Priority_Code',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Priority_Code',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Priority_Code',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Priority_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Priority_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Priority_Code',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Priority_Code',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Priority_Code',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Priority_Code',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Priority_Code',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'An instance of a disposition of a Case or other',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Disposition';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Disposition ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Disposition',
   @level2type = N'COLUMN',   @level2name = N'Disposition_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Disposition',
   @level2type = N'COLUMN',   @level2name = N'Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Disposition Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Disposition',
   @level2type = N'COLUMN',   @level2name = N'Disposition_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Disposition',
   @level2type = N'COLUMN',   @level2name = N'Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Status Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Disposition',
   @level2type = N'COLUMN',   @level2name = N'Status_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Case ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Disposition',
   @level2type = N'COLUMN',   @level2name = N'Case_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Disposition',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Disposition',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Disposition',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Disposition',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Disposition',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Disposition',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Disposition',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Disposition',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Disposition',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Disposition',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Disposition',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'An aggregation of information about a set of related activities and events',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Case';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Case ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Case',
   @level2type = N'COLUMN',   @level2name = N'Case_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Type ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Case',
   @level2type = N'COLUMN',   @level2name = N'Type_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Alternate ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Case',
   @level2type = N'COLUMN',   @level2name = N'Alternate_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Officer ID... External reference to (Entity) Officer',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Case',
   @level2type = N'COLUMN',   @level2name = N'Officer_ID';

EXECUTE sp_addextendedproperty
   @name = 'X_Reference', @value = 'Officer ID... External reference to (Entity) Officer',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Case',
   @level2type = N'COLUMN',   @level2name = N'Officer_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Subject ID... External reference to (Entity) Person',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Case',
   @level2type = N'COLUMN',   @level2name = N'Subject_ID';

EXECUTE sp_addextendedproperty
   @name = 'X_Reference', @value = 'Subject ID... External reference to (Entity) Person',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Case',
   @level2type = N'COLUMN',   @level2name = N'Subject_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Provider ID... External reference to (Provider) Provider',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Case',
   @level2type = N'COLUMN',   @level2name = N'Provider_ID';

EXECUTE sp_addextendedproperty
   @name = 'X_Reference', @value = 'Provider ID... External reference to (Provider) Provider',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Case',
   @level2type = N'COLUMN',   @level2name = N'Provider_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Organization ID... External reference to (Entity) Organization',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Case',
   @level2type = N'COLUMN',   @level2name = N'Organization_ID';

EXECUTE sp_addextendedproperty
   @name = 'X_Reference', @value = 'Organization ID... External reference to (Entity) Organization',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Case',
   @level2type = N'COLUMN',   @level2name = N'Organization_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Disposition ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Case',
   @level2type = N'COLUMN',   @level2name = N'Disposition_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Probable Reason Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Case',
   @level2type = N'COLUMN',   @level2name = N'Probable_Reason_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Detection Method Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Case',
   @level2type = N'COLUMN',   @level2name = N'Detection_Method_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Profile ID... External reference to (Surveillance) Profile',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Case',
   @level2type = N'COLUMN',   @level2name = N'Profile_ID';

EXECUTE sp_addextendedproperty
   @name = 'X_Reference', @value = 'Profile ID... External reference to (Surveillance) Profile',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Case',
   @level2type = N'COLUMN',   @level2name = N'Profile_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Priority Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Case',
   @level2type = N'COLUMN',   @level2name = N'Priority_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Person Age',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Case',
   @level2type = N'COLUMN',   @level2name = N'Person_Age';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Person/Patient age unit at time of case investigation',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Case',
   @level2type = N'COLUMN',   @level2name = N'Person_Age_Unit_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Class Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Case',
   @level2type = N'COLUMN',   @level2name = N'Class_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Case',
   @level2type = N'COLUMN',   @level2name = N'Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Status Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Case',
   @level2type = N'COLUMN',   @level2name = N'Status_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Case',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Case',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Case',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Case',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Case',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Case',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Case',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Case',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Case',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Case',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Case',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'An instance of a code or variable used to indicate a property or state of something important',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Flag';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Flag ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Flag',
   @level2type = N'COLUMN',   @level2name = N'Flag_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Case ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Flag',
   @level2type = N'COLUMN',   @level2name = N'Case_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Flag',
   @level2type = N'COLUMN',   @level2name = N'Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Value',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Flag',
   @level2type = N'COLUMN',   @level2name = N'Value';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Description',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Flag',
   @level2type = N'COLUMN',   @level2name = N'Description';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Flag',
   @level2type = N'COLUMN',   @level2name = N'Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Status Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Flag',
   @level2type = N'COLUMN',   @level2name = N'Status_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Flag',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Flag',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Flag',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Flag',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Flag',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Flag',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Flag',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Flag',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Flag',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Flag',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Flag',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Identify and describe codes for a standard measure in terms of which quantities may be express',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Unit_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Unit_Code',
   @level2type = N'COLUMN',   @level2name = N'Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Description',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Unit_Code',
   @level2type = N'COLUMN',   @level2name = N'Description';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Category ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Unit_Code',
   @level2type = N'COLUMN',   @level2name = N'Category_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code Set Name',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Unit_Code',
   @level2type = N'COLUMN',   @level2name = N'CodeSet_Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Unit_Code',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Unit_Code',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Unit_Code',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Unit_Code',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Unit_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Unit_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Unit_Code',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Unit_Code',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Unit_Code',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Unit_Code',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Unit_Code',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Identify and describe a kind of state or change of state',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Status_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Status_Code',
   @level2type = N'COLUMN',   @level2name = N'Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Description',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Status_Code',
   @level2type = N'COLUMN',   @level2name = N'Description';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Category ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Status_Code',
   @level2type = N'COLUMN',   @level2name = N'Category_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code Set Name',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Status_Code',
   @level2type = N'COLUMN',   @level2name = N'CodeSet_Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Status_Code',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Status_Code',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Status_Code',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Status_Code',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Status_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Status_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Status_Code',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Status_Code',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Status_Code',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Status_Code',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Status_Code',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'A transfer of a responsability to an agent, officer or other',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Assignment';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Assignment ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Assignment',
   @level2type = N'COLUMN',   @level2name = N'Assignment_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Assigned Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Assignment',
   @level2type = N'COLUMN',   @level2name = N'Assigned_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Manager ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Assignment',
   @level2type = N'COLUMN',   @level2name = N'Manager_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Officer ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Assignment',
   @level2type = N'COLUMN',   @level2name = N'Officer_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Assignment',
   @level2type = N'COLUMN',   @level2name = N'Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Status Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Assignment',
   @level2type = N'COLUMN',   @level2name = N'Status_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Case ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Assignment',
   @level2type = N'COLUMN',   @level2name = N'Case_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Referral ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Assignment',
   @level2type = N'COLUMN',   @level2name = N'Referral_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Concept ID... External reference to (Generic) Element',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Assignment',
   @level2type = N'COLUMN',   @level2name = N'Concept_ID';

EXECUTE sp_addextendedproperty
   @name = 'X_Reference', @value = 'Concept ID... External reference to (Generic) Element',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Assignment',
   @level2type = N'COLUMN',   @level2name = N'Concept_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Contact ID... External reference to (Entity) Contact',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Assignment',
   @level2type = N'COLUMN',   @level2name = N'Contact_ID';

EXECUTE sp_addextendedproperty
   @name = 'X_Reference', @value = 'Contact ID... External reference to (Entity) Contact',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Assignment',
   @level2type = N'COLUMN',   @level2name = N'Contact_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Subject ID... External reference to (Entity) Person',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Assignment',
   @level2type = N'COLUMN',   @level2name = N'Subject_ID';

EXECUTE sp_addextendedproperty
   @name = 'X_Reference', @value = 'Subject ID... External reference to (Entity) Person',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Assignment',
   @level2type = N'COLUMN',   @level2name = N'Subject_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Priority Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Assignment',
   @level2type = N'COLUMN',   @level2name = N'Priority_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Assignment',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Assignment',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Assignment',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Assignment',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Assignment',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Assignment',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Assignment',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Assignment',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Assignment',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Assignment',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Assignment',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'An association related to a transfer of a responsability to an agent, officer or other',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Assignment_Link';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Assignment Link ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Assignment_Link',
   @level2type = N'COLUMN',   @level2name = N'Assignment_Link_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Assignment ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Assignment_Link',
   @level2type = N'COLUMN',   @level2name = N'Assignment_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Case ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Assignment_Link',
   @level2type = N'COLUMN',   @level2name = N'Case_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Officer ID... External reference to (Entity) Officer ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Assignment_Link',
   @level2type = N'COLUMN',   @level2name = N'Officer_ID';

EXECUTE sp_addextendedproperty
   @name = 'X_Reference', @value = 'Officer ID... External reference to (Entity) Officer ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Assignment_Link',
   @level2type = N'COLUMN',   @level2name = N'Officer_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Assignment_Link',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Assignment_Link',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Assignment_Link',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Assignment_Link',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Assignment_Link',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Assignment_Link',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Assignment_Link',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Assignment_Link',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Assignment_Link',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Assignment_Link',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Assignment_Link',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Identify and describe a Process by which the case first identified',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Detection_Method_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Detection_Method_Code',
   @level2type = N'COLUMN',   @level2name = N'Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Description',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Detection_Method_Code',
   @level2type = N'COLUMN',   @level2name = N'Description';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Category ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Detection_Method_Code',
   @level2type = N'COLUMN',   @level2name = N'Category_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code Set Name',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Detection_Method_Code',
   @level2type = N'COLUMN',   @level2name = N'CodeSet_Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Detection_Method_Code',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Detection_Method_Code',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Detection_Method_Code',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Detection_Method_Code',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Detection_Method_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Detection_Method_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Detection_Method_Code',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Detection_Method_Code',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Detection_Method_Code',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Detection_Method_Code',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Detection_Method_Code',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Identify and describe a Rationale for classifying a case as probable',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Probable_Reason_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Probable_Reason_Code',
   @level2type = N'COLUMN',   @level2name = N'Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Description',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Probable_Reason_Code',
   @level2type = N'COLUMN',   @level2name = N'Description';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Category ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Probable_Reason_Code',
   @level2type = N'COLUMN',   @level2name = N'Category_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code Set Name',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Probable_Reason_Code',
   @level2type = N'COLUMN',   @level2name = N'CodeSet_Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Probable_Reason_Code',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Probable_Reason_Code',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Probable_Reason_Code',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Probable_Reason_Code',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Probable_Reason_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Probable_Reason_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Probable_Reason_Code',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Probable_Reason_Code',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Probable_Reason_Code',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Probable_Reason_Code',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Probable_Reason_Code',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'A petition related to a recomendation to an activity, program, or product',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Request';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Request ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Request',
   @level2type = N'COLUMN',   @level2name = N'Request_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Type ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Request',
   @level2type = N'COLUMN',   @level2name = N'Type_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Alternate ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Request',
   @level2type = N'COLUMN',   @level2name = N'Alternate_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Request Date',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Request',
   @level2type = N'COLUMN',   @level2name = N'Request_Date';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Service Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Request',
   @level2type = N'COLUMN',   @level2name = N'Service_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Case ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Request',
   @level2type = N'COLUMN',   @level2name = N'Case_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Referral ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Request',
   @level2type = N'COLUMN',   @level2name = N'Referral_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Provider ID... External reference to (Provider) Provider',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Request',
   @level2type = N'COLUMN',   @level2name = N'Provider_ID';

EXECUTE sp_addextendedproperty
   @name = 'X_Reference', @value = 'Provider ID... External reference to (Provider) Provider',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Request',
   @level2type = N'COLUMN',   @level2name = N'Provider_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Activity ID... External reference to (Action) Activity',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Request',
   @level2type = N'COLUMN',   @level2name = N'Activity_ID';

EXECUTE sp_addextendedproperty
   @name = 'X_Reference', @value = 'Activity ID... External reference to (Action) Activity',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Request',
   @level2type = N'COLUMN',   @level2name = N'Activity_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Item ID... External reference to (Article) Item',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Request',
   @level2type = N'COLUMN',   @level2name = N'Item_ID';

EXECUTE sp_addextendedproperty
   @name = 'X_Reference', @value = 'Item ID... External reference to (Article) Item',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Request',
   @level2type = N'COLUMN',   @level2name = N'Item_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Request',
   @level2type = N'COLUMN',   @level2name = N'Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Status Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Request',
   @level2type = N'COLUMN',   @level2name = N'Status_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Request',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Request',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Request',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Request',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Request',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Request',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Request',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Request',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Request',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Request',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Request',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Identify and describe a kind of service',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Service_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Service_Code',
   @level2type = N'COLUMN',   @level2name = N'Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Description',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Service_Code',
   @level2type = N'COLUMN',   @level2name = N'Description';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Category ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Service_Code',
   @level2type = N'COLUMN',   @level2name = N'Category_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code Set Name',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Service_Code',
   @level2type = N'COLUMN',   @level2name = N'CodeSet_Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Service_Code',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Service_Code',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Service_Code',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Service_Code',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Service_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Service_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Service_Code',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Service_Code',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Service_Code',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Service_Code',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Service_Code',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Identify and describe the kind of note or comment',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Note_Type';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Type ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Note_Type',
   @level2type = N'COLUMN',   @level2name = N'Type_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Description',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Note_Type',
   @level2type = N'COLUMN',   @level2name = N'Description';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Category ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Note_Type',
   @level2type = N'COLUMN',   @level2name = N'Category_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code Set Name',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Note_Type',
   @level2type = N'COLUMN',   @level2name = N'CodeSet_Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Note_Type',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Note_Type',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Note_Type',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Note_Type',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Note_Type',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Note_Type',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Note_Type',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Note_Type',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Note_Type',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Note_Type',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Note_Type',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'A statement, comment, or remark defining a thing or providing additional information',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Note';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Note ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Note_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Note Type ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Note_Type_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Note Text',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Note_Text';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Note Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Note_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Author ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Author_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Author Role ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Author_Role_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Author Name',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Author_Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Status Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Status_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Case ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Case_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Identify and describe the kind of media',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Media_Type';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Type ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Media_Type',
   @level2type = N'COLUMN',   @level2name = N'Type_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Description',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Media_Type',
   @level2type = N'COLUMN',   @level2name = N'Description';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Category ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Media_Type',
   @level2type = N'COLUMN',   @level2name = N'Category_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Provided to set a comma delimited list of Privacy, Security or other data Tags such as GDPR, HIPAA, PII or other.',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Media_Type',
   @level2type = N'COLUMN',   @level2name = N'Tags';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code Set Name',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Media_Type',
   @level2type = N'COLUMN',   @level2name = N'CodeSet_Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Media_Type',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Media_Type',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Media_Type',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Media_Type',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Media_Type',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Media_Type',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Media_Type',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Media_Type',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Media_Type',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Media_Type',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Media_Type',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'A document, image, or other digital artifacts that describe or define something',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Media';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Media ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Media_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Alternate ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Alternate_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Type ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Type_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Category Text',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Category_Text';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Status Code',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Status_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Url Text',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Url_Text';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Size In Bytes',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Size_In_Bytes';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Media Data',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Media_Data';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Scope Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Scope_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Content Type Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Content_Type_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Content Type Text',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Content_Type_Text';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Default Indicator',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Default_Indicator';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Serial No',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Serial_No';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Status Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Status_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Reference Date Type ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Reference_Date_Type_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Reference Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Reference_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Case ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Case_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Management',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Management ',
   @level0type = N'SCHEMA',   @level0name = N'cd7',
   @level1type = N'TABLE',    @level1name = N'Management';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Referral Type',
   @level0type = N'SCHEMA',   @level0name = N'cd7',
   @level1type = N'TABLE',    @level1name = N'Management',
   @level2type = N'COLUMN',   @level2name = N'Referral_Type';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Referral',
   @level0type = N'SCHEMA',   @level0name = N'cd7',
   @level1type = N'TABLE',    @level1name = N'Management',
   @level2type = N'COLUMN',   @level2name = N'Referral';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Flag Code',
   @level0type = N'SCHEMA',   @level0name = N'cd7',
   @level1type = N'TABLE',    @level1name = N'Management',
   @level2type = N'COLUMN',   @level2name = N'Flag_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Case Type',
   @level0type = N'SCHEMA',   @level0name = N'cd7',
   @level1type = N'TABLE',    @level1name = N'Management',
   @level2type = N'COLUMN',   @level2name = N'Case_Type';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Priority Code',
   @level0type = N'SCHEMA',   @level0name = N'cd7',
   @level1type = N'TABLE',    @level1name = N'Management',
   @level2type = N'COLUMN',   @level2name = N'Priority_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Disposition',
   @level0type = N'SCHEMA',   @level0name = N'cd7',
   @level1type = N'TABLE',    @level1name = N'Management',
   @level2type = N'COLUMN',   @level2name = N'Disposition';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Case',
   @level0type = N'SCHEMA',   @level0name = N'cd7',
   @level1type = N'TABLE',    @level1name = N'Management',
   @level2type = N'COLUMN',   @level2name = N'Case';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Flag',
   @level0type = N'SCHEMA',   @level0name = N'cd7',
   @level1type = N'TABLE',    @level1name = N'Management',
   @level2type = N'COLUMN',   @level2name = N'Flag';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Unit Code',
   @level0type = N'SCHEMA',   @level0name = N'cd7',
   @level1type = N'TABLE',    @level1name = N'Management',
   @level2type = N'COLUMN',   @level2name = N'Unit_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Status Code',
   @level0type = N'SCHEMA',   @level0name = N'cd7',
   @level1type = N'TABLE',    @level1name = N'Management',
   @level2type = N'COLUMN',   @level2name = N'Status_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Assignment',
   @level0type = N'SCHEMA',   @level0name = N'cd7',
   @level1type = N'TABLE',    @level1name = N'Management',
   @level2type = N'COLUMN',   @level2name = N'Assignment';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Assignment Link',
   @level0type = N'SCHEMA',   @level0name = N'cd7',
   @level1type = N'TABLE',    @level1name = N'Management',
   @level2type = N'COLUMN',   @level2name = N'Assignment_Link';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Detection Method Code',
   @level0type = N'SCHEMA',   @level0name = N'cd7',
   @level1type = N'TABLE',    @level1name = N'Management',
   @level2type = N'COLUMN',   @level2name = N'Detection_Method_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Probable Reason Code',
   @level0type = N'SCHEMA',   @level0name = N'cd7',
   @level1type = N'TABLE',    @level1name = N'Management',
   @level2type = N'COLUMN',   @level2name = N'Probable_Reason_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Request',
   @level0type = N'SCHEMA',   @level0name = N'cd7',
   @level1type = N'TABLE',    @level1name = N'Management',
   @level2type = N'COLUMN',   @level2name = N'Request';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Service Code',
   @level0type = N'SCHEMA',   @level0name = N'cd7',
   @level1type = N'TABLE',    @level1name = N'Management',
   @level2type = N'COLUMN',   @level2name = N'Service_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Note Type',
   @level0type = N'SCHEMA',   @level0name = N'cd7',
   @level1type = N'TABLE',    @level1name = N'Management',
   @level2type = N'COLUMN',   @level2name = N'Note_Type';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Note',
   @level0type = N'SCHEMA',   @level0name = N'cd7',
   @level1type = N'TABLE',    @level1name = N'Management',
   @level2type = N'COLUMN',   @level2name = N'Note';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Media Type',
   @level0type = N'SCHEMA',   @level0name = N'cd7',
   @level1type = N'TABLE',    @level1name = N'Management',
   @level2type = N'COLUMN',   @level2name = N'Media_Type';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Media',
   @level0type = N'SCHEMA',   @level0name = N'cd7',
   @level1type = N'TABLE',    @level1name = N'Management',
   @level2type = N'COLUMN',   @level2name = N'Media';

