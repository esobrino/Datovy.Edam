EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Identify and describe a kind of entity or grouping purpose',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Entity_Type';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Type ID',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Entity_Type',
   @level2type = N'COLUMN',   @level2name = N'Type_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Description',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Entity_Type',
   @level2type = N'COLUMN',   @level2name = N'Description';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Category ID',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Entity_Type',
   @level2type = N'COLUMN',   @level2name = N'Category_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code Set Name',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Entity_Type',
   @level2type = N'COLUMN',   @level2name = N'CodeSet_Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Entity_Type',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Entity_Type',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Entity_Type',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Entity_Type',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Entity_Type',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Entity_Type',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Entity_Type',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Entity_Type',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Entity_Type',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Entity_Type',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Entity_Type',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'A group definition to manage an artifact, list, check-list, item-values group or other',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Entity';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Entity ID',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Entity',
   @level2type = N'COLUMN',   @level2name = N'Entity_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Type ID',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Entity',
   @level2type = N'COLUMN',   @level2name = N'Type_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Description',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Entity',
   @level2type = N'COLUMN',   @level2name = N'Description';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Entity',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Entity',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Entity',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Entity',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Entity',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Entity',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Entity',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Entity',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Entity',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Entity',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Entity',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Identify and describe a kind of element value',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Element_Value_Type';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Type ID',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Element_Value_Type',
   @level2type = N'COLUMN',   @level2name = N'Type_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Description',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Element_Value_Type',
   @level2type = N'COLUMN',   @level2name = N'Description';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Category ID',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Element_Value_Type',
   @level2type = N'COLUMN',   @level2name = N'Category_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tags',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Element_Value_Type',
   @level2type = N'COLUMN',   @level2name = N'Tags';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code Set Name',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Element_Value_Type',
   @level2type = N'COLUMN',   @level2name = N'CodeSet_Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Element_Value_Type',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Element_Value_Type',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Element_Value_Type',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Element_Value_Type',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Element_Value_Type',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Element_Value_Type',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Element_Value_Type',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Element_Value_Type',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Element_Value_Type',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Element_Value_Type',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Element_Value_Type',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'A instance of an Element and provided value',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Element_Value';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Element Value ID',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Element_Value',
   @level2type = N'COLUMN',   @level2name = N'Element_Value_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Element ID',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Element_Value',
   @level2type = N'COLUMN',   @level2name = N'Element_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Type ID',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Element_Value',
   @level2type = N'COLUMN',   @level2name = N'Type_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence No',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Element_Value',
   @level2type = N'COLUMN',   @level2name = N'Sequence_No';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Reference Date',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Element_Value',
   @level2type = N'COLUMN',   @level2name = N'Reference_Date';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Reference Time',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Element_Value',
   @level2type = N'COLUMN',   @level2name = N'Reference_Time';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Entity Type ID',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Element_Value',
   @level2type = N'COLUMN',   @level2name = N'Entity_Type_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Entity ID',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Element_Value',
   @level2type = N'COLUMN',   @level2name = N'Entity_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Checked',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Element_Value',
   @level2type = N'COLUMN',   @level2name = N'Checked';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Start Date',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Element_Value',
   @level2type = N'COLUMN',   @level2name = N'Start_Date';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'End Date',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Element_Value',
   @level2type = N'COLUMN',   @level2name = N'End_Date';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Start Value',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Element_Value',
   @level2type = N'COLUMN',   @level2name = N'Start_Value';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'End Value',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Element_Value',
   @level2type = N'COLUMN',   @level2name = N'End_Value';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Value Numeric',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Element_Value',
   @level2type = N'COLUMN',   @level2name = N'Value_Numeric';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Value Text',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Element_Value',
   @level2type = N'COLUMN',   @level2name = N'Value_Text';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Element_Value',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Element_Value',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Element_Value',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Element_Value',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Element_Value',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Element_Value',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Element_Value',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Element_Value',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Element_Value',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Element_Value',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Element_Value',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'A description of an element and its value that will be a child of an Entity',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Element';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Element ID',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Element',
   @level2type = N'COLUMN',   @level2name = N'Element_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Group ID',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Element',
   @level2type = N'COLUMN',   @level2name = N'Group_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Label Text',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Element',
   @level2type = N'COLUMN',   @level2name = N'Label_Text';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence No',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Element',
   @level2type = N'COLUMN',   @level2name = N'Sequence_No';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Period To Comply',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Element',
   @level2type = N'COLUMN',   @level2name = N'Period_To_Comply';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Required Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Element',
   @level2type = N'COLUMN',   @level2name = N'Required_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Value Type ID',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Element',
   @level2type = N'COLUMN',   @level2name = N'Value_Type_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code Type ID',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Element',
   @level2type = N'COLUMN',   @level2name = N'Code_Type_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Checked',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Element',
   @level2type = N'COLUMN',   @level2name = N'Checked';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Start Date',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Element',
   @level2type = N'COLUMN',   @level2name = N'Start_Date';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'End Date',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Element',
   @level2type = N'COLUMN',   @level2name = N'End_Date';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Start Value',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Element',
   @level2type = N'COLUMN',   @level2name = N'Start_Value';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'End Value',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Element',
   @level2type = N'COLUMN',   @level2name = N'End_Value';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Value Numeric',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Element',
   @level2type = N'COLUMN',   @level2name = N'Value_Numeric';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Value Text',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Element',
   @level2type = N'COLUMN',   @level2name = N'Value_Text';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Element',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Element',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Element',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Element',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Element',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Element',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Element',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Element',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Element',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Element',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Generic',
   @level1type = N'TABLE',    @level1name = N'Element',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Generic ',
   @level0type = N'SCHEMA',   @level0name = N'cd3',
   @level1type = N'TABLE',    @level1name = N'Generic';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Entity Type',
   @level0type = N'SCHEMA',   @level0name = N'cd3',
   @level1type = N'TABLE',    @level1name = N'Generic',
   @level2type = N'COLUMN',   @level2name = N'Entity_Type';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Entity',
   @level0type = N'SCHEMA',   @level0name = N'cd3',
   @level1type = N'TABLE',    @level1name = N'Generic',
   @level2type = N'COLUMN',   @level2name = N'Entity';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Element Value Type',
   @level0type = N'SCHEMA',   @level0name = N'cd3',
   @level1type = N'TABLE',    @level1name = N'Generic',
   @level2type = N'COLUMN',   @level2name = N'Element_Value_Type';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Element Value',
   @level0type = N'SCHEMA',   @level0name = N'cd3',
   @level1type = N'TABLE',    @level1name = N'Generic',
   @level2type = N'COLUMN',   @level2name = N'Element_Value';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Element',
   @level0type = N'SCHEMA',   @level0name = N'cd3',
   @level1type = N'TABLE',    @level1name = N'Generic',
   @level2type = N'COLUMN',   @level2name = N'Element';

