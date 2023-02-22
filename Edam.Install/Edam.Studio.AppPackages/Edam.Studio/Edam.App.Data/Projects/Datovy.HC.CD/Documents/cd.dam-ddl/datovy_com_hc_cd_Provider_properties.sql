EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'The Healthcare Provider Taxonomy code set divides health care providers into hierarchical groupings by type, classification, and specialization, and assigns a code to each grouping',
   @level0type = N'SCHEMA',   @level0name = N'Provider',
   @level1type = N'TABLE',    @level1name = N'Provider_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Provider',
   @level1type = N'TABLE',    @level1name = N'Provider_Code',
   @level2type = N'COLUMN',   @level2name = N'Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Description',
   @level0type = N'SCHEMA',   @level0name = N'Provider',
   @level1type = N'TABLE',    @level1name = N'Provider_Code',
   @level2type = N'COLUMN',   @level2name = N'Description';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Category ID',
   @level0type = N'SCHEMA',   @level0name = N'Provider',
   @level1type = N'TABLE',    @level1name = N'Provider_Code',
   @level2type = N'COLUMN',   @level2name = N'Category_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code Set Name',
   @level0type = N'SCHEMA',   @level0name = N'Provider',
   @level1type = N'TABLE',    @level1name = N'Provider_Code',
   @level2type = N'COLUMN',   @level2name = N'CodeSet_Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Provider',
   @level1type = N'TABLE',    @level1name = N'Provider_Code',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Provider',
   @level1type = N'TABLE',    @level1name = N'Provider_Code',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Provider',
   @level1type = N'TABLE',    @level1name = N'Provider_Code',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Provider',
   @level1type = N'TABLE',    @level1name = N'Provider_Code',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Provider',
   @level1type = N'TABLE',    @level1name = N'Provider_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Provider',
   @level1type = N'TABLE',    @level1name = N'Provider_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Provider',
   @level1type = N'TABLE',    @level1name = N'Provider_Code',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Provider',
   @level1type = N'TABLE',    @level1name = N'Provider_Code',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Provider',
   @level1type = N'TABLE',    @level1name = N'Provider_Code',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Provider',
   @level1type = N'TABLE',    @level1name = N'Provider_Code',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Provider',
   @level1type = N'TABLE',    @level1name = N'Provider_Code',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'A reference to a provider or entity',
   @level0type = N'SCHEMA',   @level0name = N'Provider',
   @level1type = N'TABLE',    @level1name = N'Provider_Reference';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Provider Reference ID',
   @level0type = N'SCHEMA',   @level0name = N'Provider',
   @level1type = N'TABLE',    @level1name = N'Provider_Reference',
   @level2type = N'COLUMN',   @level2name = N'Provider_Reference_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Alternate ID',
   @level0type = N'SCHEMA',   @level0name = N'Provider',
   @level1type = N'TABLE',    @level1name = N'Provider_Reference',
   @level2type = N'COLUMN',   @level2name = N'Alternate_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Provider Code',
   @level0type = N'SCHEMA',   @level0name = N'Provider',
   @level1type = N'TABLE',    @level1name = N'Provider_Reference',
   @level2type = N'COLUMN',   @level2name = N'Provider_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Person ID... External reference to (Entity) Person',
   @level0type = N'SCHEMA',   @level0name = N'Provider',
   @level1type = N'TABLE',    @level1name = N'Provider_Reference',
   @level2type = N'COLUMN',   @level2name = N'Person_ID';

EXECUTE sp_addextendedproperty
   @name = 'X_Reference', @value = 'Person ID... External reference to (Entity) Person',
   @level0type = N'SCHEMA',   @level0name = N'Provider',
   @level1type = N'TABLE',    @level1name = N'Provider_Reference',
   @level2type = N'COLUMN',   @level2name = N'Person_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Organization ID... External reference to (Entity) Organization',
   @level0type = N'SCHEMA',   @level0name = N'Provider',
   @level1type = N'TABLE',    @level1name = N'Provider_Reference',
   @level2type = N'COLUMN',   @level2name = N'Organization_ID';

EXECUTE sp_addextendedproperty
   @name = 'X_Reference', @value = 'Organization ID... External reference to (Entity) Organization',
   @level0type = N'SCHEMA',   @level0name = N'Provider',
   @level1type = N'TABLE',    @level1name = N'Provider_Reference',
   @level2type = N'COLUMN',   @level2name = N'Organization_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Name ID... External reference to (Entity) Name',
   @level0type = N'SCHEMA',   @level0name = N'Provider',
   @level1type = N'TABLE',    @level1name = N'Provider_Reference',
   @level2type = N'COLUMN',   @level2name = N'Name_ID';

EXECUTE sp_addextendedproperty
   @name = 'X_Reference', @value = 'Name ID... External reference to (Entity) Name',
   @level0type = N'SCHEMA',   @level0name = N'Provider',
   @level1type = N'TABLE',    @level1name = N'Provider_Reference',
   @level2type = N'COLUMN',   @level2name = N'Name_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Provider',
   @level1type = N'TABLE',    @level1name = N'Provider_Reference',
   @level2type = N'COLUMN',   @level2name = N'Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Status Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Provider',
   @level1type = N'TABLE',    @level1name = N'Provider_Reference',
   @level2type = N'COLUMN',   @level2name = N'Status_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Provider',
   @level1type = N'TABLE',    @level1name = N'Provider_Reference',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Provider',
   @level1type = N'TABLE',    @level1name = N'Provider_Reference',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Provider',
   @level1type = N'TABLE',    @level1name = N'Provider_Reference',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Provider',
   @level1type = N'TABLE',    @level1name = N'Provider_Reference',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Provider',
   @level1type = N'TABLE',    @level1name = N'Provider_Reference',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Provider',
   @level1type = N'TABLE',    @level1name = N'Provider_Reference',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Provider',
   @level1type = N'TABLE',    @level1name = N'Provider_Reference',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Provider',
   @level1type = N'TABLE',    @level1name = N'Provider_Reference',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Provider',
   @level1type = N'TABLE',    @level1name = N'Provider_Reference',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Provider',
   @level1type = N'TABLE',    @level1name = N'Provider_Reference',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Provider',
   @level1type = N'TABLE',    @level1name = N'Provider_Reference',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Provider ',
   @level0type = N'SCHEMA',   @level0name = N'cd11',
   @level1type = N'TABLE',    @level1name = N'Provider';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Provider Code',
   @level0type = N'SCHEMA',   @level0name = N'cd11',
   @level1type = N'TABLE',    @level1name = N'Provider',
   @level2type = N'COLUMN',   @level2name = N'Provider_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Provider Reference',
   @level0type = N'SCHEMA',   @level0name = N'cd11',
   @level1type = N'TABLE',    @level1name = N'Provider',
   @level2type = N'COLUMN',   @level2name = N'Provider_Reference';

