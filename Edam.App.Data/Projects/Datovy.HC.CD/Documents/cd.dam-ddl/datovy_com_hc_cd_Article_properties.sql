EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Describe, provide details about an article or thing',
   @level0type = N'SCHEMA',   @level0name = N'Article',
   @level1type = N'TABLE',    @level1name = N'Item';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Item ID',
   @level0type = N'SCHEMA',   @level0name = N'Article',
   @level1type = N'TABLE',    @level1name = N'Item',
   @level2type = N'COLUMN',   @level2name = N'Item_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Name',
   @level0type = N'SCHEMA',   @level0name = N'Article',
   @level1type = N'TABLE',    @level1name = N'Item',
   @level2type = N'COLUMN',   @level2name = N'Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Identify and describe the kind of Item',
   @level0type = N'SCHEMA',   @level0name = N'Article',
   @level1type = N'TABLE',    @level1name = N'Item',
   @level2type = N'COLUMN',   @level2name = N'Type_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Value Amount',
   @level0type = N'SCHEMA',   @level0name = N'Article',
   @level1type = N'TABLE',    @level1name = N'Item',
   @level2type = N'COLUMN',   @level2name = N'Value_Amount';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Quantity',
   @level0type = N'SCHEMA',   @level0name = N'Article',
   @level1type = N'TABLE',    @level1name = N'Item',
   @level2type = N'COLUMN',   @level2name = N'Quantity';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Article',
   @level1type = N'TABLE',    @level1name = N'Item',
   @level2type = N'COLUMN',   @level2name = N'Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Status Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Article',
   @level1type = N'TABLE',    @level1name = N'Item',
   @level2type = N'COLUMN',   @level2name = N'Status_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Article',
   @level1type = N'TABLE',    @level1name = N'Item',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Article',
   @level1type = N'TABLE',    @level1name = N'Item',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Article',
   @level1type = N'TABLE',    @level1name = N'Item',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Article',
   @level1type = N'TABLE',    @level1name = N'Item',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Article',
   @level1type = N'TABLE',    @level1name = N'Item',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Article',
   @level1type = N'TABLE',    @level1name = N'Item',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Article',
   @level1type = N'TABLE',    @level1name = N'Item',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Article',
   @level1type = N'TABLE',    @level1name = N'Item',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Article',
   @level1type = N'TABLE',    @level1name = N'Item',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Article',
   @level1type = N'TABLE',    @level1name = N'Item',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Article',
   @level1type = N'TABLE',    @level1name = N'Item',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Identify and describe the kind of Item',
   @level0type = N'SCHEMA',   @level0name = N'Article',
   @level1type = N'TABLE',    @level1name = N'Item_Type';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Type ID',
   @level0type = N'SCHEMA',   @level0name = N'Article',
   @level1type = N'TABLE',    @level1name = N'Item_Type',
   @level2type = N'COLUMN',   @level2name = N'Type_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Description',
   @level0type = N'SCHEMA',   @level0name = N'Article',
   @level1type = N'TABLE',    @level1name = N'Item_Type',
   @level2type = N'COLUMN',   @level2name = N'Description';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Category ID',
   @level0type = N'SCHEMA',   @level0name = N'Article',
   @level1type = N'TABLE',    @level1name = N'Item_Type',
   @level2type = N'COLUMN',   @level2name = N'Category_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code Set Name',
   @level0type = N'SCHEMA',   @level0name = N'Article',
   @level1type = N'TABLE',    @level1name = N'Item_Type',
   @level2type = N'COLUMN',   @level2name = N'CodeSet_Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Article',
   @level1type = N'TABLE',    @level1name = N'Item_Type',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Article',
   @level1type = N'TABLE',    @level1name = N'Item_Type',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Article',
   @level1type = N'TABLE',    @level1name = N'Item_Type',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Article',
   @level1type = N'TABLE',    @level1name = N'Item_Type',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Article',
   @level1type = N'TABLE',    @level1name = N'Item_Type',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Article',
   @level1type = N'TABLE',    @level1name = N'Item_Type',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Article',
   @level1type = N'TABLE',    @level1name = N'Item_Type',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Article',
   @level1type = N'TABLE',    @level1name = N'Item_Type',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Article',
   @level1type = N'TABLE',    @level1name = N'Item_Type',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Article',
   @level1type = N'TABLE',    @level1name = N'Item_Type',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Article',
   @level1type = N'TABLE',    @level1name = N'Item_Type',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Article ',
   @level0type = N'SCHEMA',   @level0name = N'cd9',
   @level1type = N'TABLE',    @level1name = N'Article';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Item',
   @level0type = N'SCHEMA',   @level0name = N'cd9',
   @level1type = N'TABLE',    @level1name = N'Article',
   @level2type = N'COLUMN',   @level2name = N'Item';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Item Type',
   @level0type = N'SCHEMA',   @level0name = N'cd9',
   @level1type = N'TABLE',    @level1name = N'Article',
   @level2type = N'COLUMN',   @level2name = N'Item_Type';

