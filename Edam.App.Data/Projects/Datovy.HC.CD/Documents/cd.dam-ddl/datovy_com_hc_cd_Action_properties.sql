EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'A document, image, or other digital artifacts that describe or define something',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Media';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Activity ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Activity_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Event ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Event_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Media ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Media_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Alternate ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Alternate_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Type ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Type_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Category Text',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Category_Text';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Status Code',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Status_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Url Text',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Url_Text';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Size In Bytes',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Size_In_Bytes';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Media Data',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Media_Data';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Scope Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Scope_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Content Type Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Content_Type_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Content Type Text',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Content_Type_Text';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Default Indicator',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Default_Indicator';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Serial No',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Serial_No';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Status Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Status_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Reference Date Type ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Reference_Date_Type_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Reference Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Reference_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Identify and describe an actor part in a activity or event',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Role_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Role_Code',
   @level2type = N'COLUMN',   @level2name = N'Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Description',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Role_Code',
   @level2type = N'COLUMN',   @level2name = N'Description';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Category ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Role_Code',
   @level2type = N'COLUMN',   @level2name = N'Category_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code Set Name',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Role_Code',
   @level2type = N'COLUMN',   @level2name = N'CodeSet_Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Role_Code',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Role_Code',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Role_Code',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Role_Code',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Role_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Role_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Role_Code',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Role_Code',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Role_Code',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Role_Code',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Role_Code',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Identify an Organization, Person, or Thing associated with an Action, Activity, or Event',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Party_Type';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Party_Type',
   @level2type = N'COLUMN',   @level2name = N'Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Description',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Party_Type',
   @level2type = N'COLUMN',   @level2name = N'Description';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Category ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Party_Type',
   @level2type = N'COLUMN',   @level2name = N'Category_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code Set Name',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Party_Type',
   @level2type = N'COLUMN',   @level2name = N'CodeSet_Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Party_Type',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Party_Type',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Party_Type',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Party_Type',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Party_Type',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Party_Type',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Party_Type',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Party_Type',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Party_Type',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Party_Type',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Party_Type',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Identify an Organization, Person, or Thing associated with an Action, Activity, or Event',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Party';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Party ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Party',
   @level2type = N'COLUMN',   @level2name = N'Party_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Type ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Party',
   @level2type = N'COLUMN',   @level2name = N'Type_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Identification ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Party',
   @level2type = N'COLUMN',   @level2name = N'Identification_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Role Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Party',
   @level2type = N'COLUMN',   @level2name = N'Role_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Duration',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Party',
   @level2type = N'COLUMN',   @level2name = N'Duration';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Activity ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Party',
   @level2type = N'COLUMN',   @level2name = N'Activity_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Organization ID... An external reference to an (Entity) Organization',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Party',
   @level2type = N'COLUMN',   @level2name = N'Organization_ID';

EXECUTE sp_addextendedproperty
   @name = 'X_Reference', @value = 'Organization ID... An external reference to an (Entity) Organization',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Party',
   @level2type = N'COLUMN',   @level2name = N'Organization_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Contact ID... An external reference to an (Entity) Contact',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Party',
   @level2type = N'COLUMN',   @level2name = N'Contact_ID';

EXECUTE sp_addextendedproperty
   @name = 'X_Reference', @value = 'Contact ID... An external reference to an (Entity) Contact',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Party',
   @level2type = N'COLUMN',   @level2name = N'Contact_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Person ID... An external reference to a (Entity) Person',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Party',
   @level2type = N'COLUMN',   @level2name = N'Person_ID';

EXECUTE sp_addextendedproperty
   @name = 'X_Reference', @value = 'Person ID... An external reference to a (Entity) Person',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Party',
   @level2type = N'COLUMN',   @level2name = N'Person_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Party',
   @level2type = N'COLUMN',   @level2name = N'Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Status Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Party',
   @level2type = N'COLUMN',   @level2name = N'Status_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Party',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Party',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Party',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Party',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Party',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Party',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Party',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Party',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Party',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Party',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Party',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'A single or set of related actions, events, or process steps',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Activity';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Activity ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Activity',
   @level2type = N'COLUMN',   @level2name = N'Activity_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Alternate ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Activity',
   @level2type = N'COLUMN',   @level2name = N'Alternate_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Type ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Activity',
   @level2type = N'COLUMN',   @level2name = N'Type_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Disposition ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Activity',
   @level2type = N'COLUMN',   @level2name = N'Disposition_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Name',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Activity',
   @level2type = N'COLUMN',   @level2name = N'Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Description',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Activity',
   @level2type = N'COLUMN',   @level2name = N'Description';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Priority Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Activity',
   @level2type = N'COLUMN',   @level2name = N'Priority_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Reason Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Activity',
   @level2type = N'COLUMN',   @level2name = N'Reason_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Scheduled Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Activity',
   @level2type = N'COLUMN',   @level2name = N'Scheduled_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Started Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Activity',
   @level2type = N'COLUMN',   @level2name = N'Started_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Ended Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Activity',
   @level2type = N'COLUMN',   @level2name = N'Ended_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Activity',
   @level2type = N'COLUMN',   @level2name = N'Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Status Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Activity',
   @level2type = N'COLUMN',   @level2name = N'Status_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Case ID... An external reference to a (Management) Case',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Activity',
   @level2type = N'COLUMN',   @level2name = N'Case_ID';

EXECUTE sp_addextendedproperty
   @name = 'X_Reference', @value = 'Case ID... An external reference to a (Management) Case',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Activity',
   @level2type = N'COLUMN',   @level2name = N'Case_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Location ID... An external reference to a (Geography) Location',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Activity',
   @level2type = N'COLUMN',   @level2name = N'Location_ID';

EXECUTE sp_addextendedproperty
   @name = 'X_Reference', @value = 'Location ID... An external reference to a (Geography) Location',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Activity',
   @level2type = N'COLUMN',   @level2name = N'Location_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Contact ID... An external reference to a (Entity) Contact',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Activity',
   @level2type = N'COLUMN',   @level2name = N'Contact_ID';

EXECUTE sp_addextendedproperty
   @name = 'X_Reference', @value = 'Contact ID... An external reference to a (Entity) Contact',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Activity',
   @level2type = N'COLUMN',   @level2name = N'Contact_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Activity',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Activity',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Activity',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Activity',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Activity',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Activity',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Activity',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Activity',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Activity',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Activity',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Activity',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Define details about an action, activity or event that happend or is planned',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Schedule_Event';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Schedule Event ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Schedule_Event',
   @level2type = N'COLUMN',   @level2name = N'Schedule_Event_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Type ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Schedule_Event',
   @level2type = N'COLUMN',   @level2name = N'Type_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Activity ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Schedule_Event',
   @level2type = N'COLUMN',   @level2name = N'Activity_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Disposition ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Schedule_Event',
   @level2type = N'COLUMN',   @level2name = N'Disposition_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Name',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Schedule_Event',
   @level2type = N'COLUMN',   @level2name = N'Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Description',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Schedule_Event',
   @level2type = N'COLUMN',   @level2name = N'Description';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Priority Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Schedule_Event',
   @level2type = N'COLUMN',   @level2name = N'Priority_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Reason Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Schedule_Event',
   @level2type = N'COLUMN',   @level2name = N'Reason_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Scheduled Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Schedule_Event',
   @level2type = N'COLUMN',   @level2name = N'Scheduled_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Started Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Schedule_Event',
   @level2type = N'COLUMN',   @level2name = N'Started_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Ended Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Schedule_Event',
   @level2type = N'COLUMN',   @level2name = N'Ended_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Schedule_Event',
   @level2type = N'COLUMN',   @level2name = N'Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Status Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Schedule_Event',
   @level2type = N'COLUMN',   @level2name = N'Status_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Schedule_Event',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Schedule_Event',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Schedule_Event',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Schedule_Event',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Schedule_Event',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Schedule_Event',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Schedule_Event',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Schedule_Event',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Schedule_Event',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Schedule_Event',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Schedule_Event',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Identify and describe the kind of note or comment',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Note_Type';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Type ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Note_Type',
   @level2type = N'COLUMN',   @level2name = N'Type_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Description',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Note_Type',
   @level2type = N'COLUMN',   @level2name = N'Description';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Category ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Note_Type',
   @level2type = N'COLUMN',   @level2name = N'Category_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code Set Name',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Note_Type',
   @level2type = N'COLUMN',   @level2name = N'CodeSet_Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Note_Type',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Note_Type',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Note_Type',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Note_Type',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Note_Type',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Note_Type',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Note_Type',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Note_Type',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Note_Type',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Note_Type',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Note_Type',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'A statement, comment, or remark defining a thing or providing additional information',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Note';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Note ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Note_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Note Type ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Note_Type_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Note Text',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Note_Text';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Note Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Note_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Author ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Author_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Author Role ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Author_Role_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Author Name',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Author_Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Status Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Status_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Activity ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Activity_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Event ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Event_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Identify and describe the kind of media',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Media_Type';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Type ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Media_Type',
   @level2type = N'COLUMN',   @level2name = N'Type_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Description',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Media_Type',
   @level2type = N'COLUMN',   @level2name = N'Description';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Category ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Media_Type',
   @level2type = N'COLUMN',   @level2name = N'Category_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Provided to set a comma delimited list of Privacy, Security or other data Tags such as GDPR, HIPAA, PII or other.',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Media_Type',
   @level2type = N'COLUMN',   @level2name = N'Tags';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code Set Name',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Media_Type',
   @level2type = N'COLUMN',   @level2name = N'CodeSet_Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Media_Type',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Media_Type',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Media_Type',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Media_Type',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Media_Type',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Media_Type',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Media_Type',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Media_Type',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Media_Type',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Media_Type',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Media_Type',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'The code that identify the kind of disposition',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Disposition_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Disposition_Code',
   @level2type = N'COLUMN',   @level2name = N'Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Description',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Disposition_Code',
   @level2type = N'COLUMN',   @level2name = N'Description';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Category ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Disposition_Code',
   @level2type = N'COLUMN',   @level2name = N'Category_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code Set Name',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Disposition_Code',
   @level2type = N'COLUMN',   @level2name = N'CodeSet_Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Disposition_Code',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Disposition_Code',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Disposition_Code',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Disposition_Code',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Disposition_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Disposition_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Disposition_Code',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Disposition_Code',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Disposition_Code',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Disposition_Code',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Disposition_Code',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'A instance of an action withing an activity, incident, or a process',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Event';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Event ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Event',
   @level2type = N'COLUMN',   @level2name = N'Event_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Alternate ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Event',
   @level2type = N'COLUMN',   @level2name = N'Alternate_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Activity ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Event',
   @level2type = N'COLUMN',   @level2name = N'Activity_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Event Type ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Event',
   @level2type = N'COLUMN',   @level2name = N'EventType_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Description',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Event',
   @level2type = N'COLUMN',   @level2name = N'Description';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Organization ID... An external reference to an (Entity) Organization',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Event',
   @level2type = N'COLUMN',   @level2name = N'Organization_ID';

EXECUTE sp_addextendedproperty
   @name = 'X_Reference', @value = 'Organization ID... An external reference to an (Entity) Organization',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Event',
   @level2type = N'COLUMN',   @level2name = N'Organization_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Person ID... An external reference to an (Entity) Person',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Event',
   @level2type = N'COLUMN',   @level2name = N'Person_ID';

EXECUTE sp_addextendedproperty
   @name = 'X_Reference', @value = 'Person ID... An external reference to an (Entity) Person',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Event',
   @level2type = N'COLUMN',   @level2name = N'Person_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Scheduled Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Event',
   @level2type = N'COLUMN',   @level2name = N'Scheduled_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Started Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Event',
   @level2type = N'COLUMN',   @level2name = N'Started_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Ended Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Event',
   @level2type = N'COLUMN',   @level2name = N'Ended_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Event',
   @level2type = N'COLUMN',   @level2name = N'Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Status Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Event',
   @level2type = N'COLUMN',   @level2name = N'Status_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Event',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Event',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Event',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Event',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Event',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Event',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Event',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Event',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Event',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Event',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Event',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Identify and describe the kind of activity',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Activity_Type';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Type ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Activity_Type',
   @level2type = N'COLUMN',   @level2name = N'Type_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Description',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Activity_Type',
   @level2type = N'COLUMN',   @level2name = N'Description';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Category ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Activity_Type',
   @level2type = N'COLUMN',   @level2name = N'Category_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code Set Name',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Activity_Type',
   @level2type = N'COLUMN',   @level2name = N'CodeSet_Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Activity_Type',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Activity_Type',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Activity_Type',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Activity_Type',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Activity_Type',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Activity_Type',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Activity_Type',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Activity_Type',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Activity_Type',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Activity_Type',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Activity_Type',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Identify and describe the cause, explanation, or justification for an action or event',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Reason_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Reason_Code',
   @level2type = N'COLUMN',   @level2name = N'Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Description',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Reason_Code',
   @level2type = N'COLUMN',   @level2name = N'Description';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Category ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Reason_Code',
   @level2type = N'COLUMN',   @level2name = N'Category_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code Set Name',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Reason_Code',
   @level2type = N'COLUMN',   @level2name = N'CodeSet_Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Reason_Code',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Reason_Code',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Reason_Code',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Reason_Code',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Reason_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Reason_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Reason_Code',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Reason_Code',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Reason_Code',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Reason_Code',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Reason_Code',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Identify and describe the precedence or importance of something',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Priority_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Priority_Code',
   @level2type = N'COLUMN',   @level2name = N'Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Description',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Priority_Code',
   @level2type = N'COLUMN',   @level2name = N'Description';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Category ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Priority_Code',
   @level2type = N'COLUMN',   @level2name = N'Category_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code Set Name',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Priority_Code',
   @level2type = N'COLUMN',   @level2name = N'CodeSet_Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Priority_Code',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Priority_Code',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Priority_Code',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Priority_Code',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Priority_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Priority_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Priority_Code',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Priority_Code',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Priority_Code',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Priority_Code',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Priority_Code',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'A result or outcome that is the product of handoing, processing, or finalizing something',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Disposition';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Disposition ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Disposition',
   @level2type = N'COLUMN',   @level2name = N'Disposition_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Disposition Code',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Disposition',
   @level2type = N'COLUMN',   @level2name = N'Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Status Code of the disposition that describe the state of the disposition',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Disposition',
   @level2type = N'COLUMN',   @level2name = N'Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Status Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Disposition',
   @level2type = N'COLUMN',   @level2name = N'Status_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Disposition',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Disposition',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Disposition',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Disposition',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Disposition',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Disposition',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Disposition',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Disposition',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Disposition',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Disposition',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Action',
   @level1type = N'TABLE',    @level1name = N'Disposition',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Action ',
   @level0type = N'SCHEMA',   @level0name = N'cd6',
   @level1type = N'TABLE',    @level1name = N'Action';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Media',
   @level0type = N'SCHEMA',   @level0name = N'cd6',
   @level1type = N'TABLE',    @level1name = N'Action',
   @level2type = N'COLUMN',   @level2name = N'Media';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Role Code',
   @level0type = N'SCHEMA',   @level0name = N'cd6',
   @level1type = N'TABLE',    @level1name = N'Action',
   @level2type = N'COLUMN',   @level2name = N'Role_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Party Type',
   @level0type = N'SCHEMA',   @level0name = N'cd6',
   @level1type = N'TABLE',    @level1name = N'Action',
   @level2type = N'COLUMN',   @level2name = N'Party_Type';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Party',
   @level0type = N'SCHEMA',   @level0name = N'cd6',
   @level1type = N'TABLE',    @level1name = N'Action',
   @level2type = N'COLUMN',   @level2name = N'Party';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Activity',
   @level0type = N'SCHEMA',   @level0name = N'cd6',
   @level1type = N'TABLE',    @level1name = N'Action',
   @level2type = N'COLUMN',   @level2name = N'Activity';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Schedule Event',
   @level0type = N'SCHEMA',   @level0name = N'cd6',
   @level1type = N'TABLE',    @level1name = N'Action',
   @level2type = N'COLUMN',   @level2name = N'Schedule_Event';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Note Type',
   @level0type = N'SCHEMA',   @level0name = N'cd6',
   @level1type = N'TABLE',    @level1name = N'Action',
   @level2type = N'COLUMN',   @level2name = N'Note_Type';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Note',
   @level0type = N'SCHEMA',   @level0name = N'cd6',
   @level1type = N'TABLE',    @level1name = N'Action',
   @level2type = N'COLUMN',   @level2name = N'Note';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Media Type',
   @level0type = N'SCHEMA',   @level0name = N'cd6',
   @level1type = N'TABLE',    @level1name = N'Action',
   @level2type = N'COLUMN',   @level2name = N'Media_Type';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Disposition Code',
   @level0type = N'SCHEMA',   @level0name = N'cd6',
   @level1type = N'TABLE',    @level1name = N'Action',
   @level2type = N'COLUMN',   @level2name = N'Disposition_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Event',
   @level0type = N'SCHEMA',   @level0name = N'cd6',
   @level1type = N'TABLE',    @level1name = N'Action',
   @level2type = N'COLUMN',   @level2name = N'Event';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Activity Type',
   @level0type = N'SCHEMA',   @level0name = N'cd6',
   @level1type = N'TABLE',    @level1name = N'Action',
   @level2type = N'COLUMN',   @level2name = N'Activity_Type';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Reason Code',
   @level0type = N'SCHEMA',   @level0name = N'cd6',
   @level1type = N'TABLE',    @level1name = N'Action',
   @level2type = N'COLUMN',   @level2name = N'Reason_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Priority Code',
   @level0type = N'SCHEMA',   @level0name = N'cd6',
   @level1type = N'TABLE',    @level1name = N'Action',
   @level2type = N'COLUMN',   @level2name = N'Priority_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Disposition',
   @level0type = N'SCHEMA',   @level0name = N'cd6',
   @level1type = N'TABLE',    @level1name = N'Action',
   @level2type = N'COLUMN',   @level2name = N'Disposition';

