EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Identify and describe a kind of Location',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Location_Type';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Type ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Location_Type',
   @level2type = N'COLUMN',   @level2name = N'Type_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Description',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Location_Type',
   @level2type = N'COLUMN',   @level2name = N'Description';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Category ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Location_Type',
   @level2type = N'COLUMN',   @level2name = N'Category_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code Set Name',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Location_Type',
   @level2type = N'COLUMN',   @level2name = N'CodeSet_Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Location_Type',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Location_Type',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Location_Type',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Location_Type',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Location_Type',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Location_Type',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Location_Type',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Location_Type',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Location_Type',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Location_Type',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Location_Type',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Identify and describe the kind of note or comment',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Note_Type';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Type ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Note_Type',
   @level2type = N'COLUMN',   @level2name = N'Type_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Description',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Note_Type',
   @level2type = N'COLUMN',   @level2name = N'Description';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Category ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Note_Type',
   @level2type = N'COLUMN',   @level2name = N'Category_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code Set Name',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Note_Type',
   @level2type = N'COLUMN',   @level2name = N'CodeSet_Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Note_Type',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Note_Type',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Note_Type',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Note_Type',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Note_Type',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Note_Type',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Note_Type',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Note_Type',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Note_Type',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Note_Type',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Note_Type',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'A statement, comment, or remark defining a thing or providing additional information',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Note';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Note ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Note_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Note Type ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Note_Type_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Note Text',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Note_Text';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Note Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Note_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Author ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Author_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Author Role ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Author_Role_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Author Name',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Author_Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Status Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Status_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Location ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Location_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Identify and describe the kind of media',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Media_Type';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Type ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Media_Type',
   @level2type = N'COLUMN',   @level2name = N'Type_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Description',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Media_Type',
   @level2type = N'COLUMN',   @level2name = N'Description';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Category ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Media_Type',
   @level2type = N'COLUMN',   @level2name = N'Category_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Provided to set a comma delimited list of Privacy, Security or other data Tags such as GDPR, HIPAA, PII or other.',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Media_Type',
   @level2type = N'COLUMN',   @level2name = N'Tags';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code Set Name',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Media_Type',
   @level2type = N'COLUMN',   @level2name = N'CodeSet_Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Media_Type',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Media_Type',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Media_Type',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Media_Type',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Media_Type',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Media_Type',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Media_Type',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Media_Type',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Media_Type',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Media_Type',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Media_Type',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'A document, image, or other digital artifacts that describe or define something',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Media';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Media ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Media_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Alternate ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Alternate_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Type ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Type_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Category Text',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Category_Text';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Status Code',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Status_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Url Text',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Url_Text';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Size In Bytes',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Size_In_Bytes';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Media Data',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Media_Data';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Scope Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Scope_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Content Type Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Content_Type_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Content Type Text',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Content_Type_Text';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Default Indicator',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Default_Indicator';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Serial No',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Serial_No';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Status Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Status_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Reference Date Type ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Reference_Date_Type_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Reference Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Reference_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Location ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Location_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Details about a geographical area or specific point in a geography',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Location';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Location ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Location',
   @level2type = N'COLUMN',   @level2name = N'Location_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Alternate ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Location',
   @level2type = N'COLUMN',   @level2name = N'Alternate_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Alternate Type',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Location',
   @level2type = N'COLUMN',   @level2name = N'Alternate_Type';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Identify and describe a kind of location',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Location',
   @level2type = N'COLUMN',   @level2name = N'Type_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Name',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Location',
   @level2type = N'COLUMN',   @level2name = N'Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Alias',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Location',
   @level2type = N'COLUMN',   @level2name = N'Alias';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Description',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Location',
   @level2type = N'COLUMN',   @level2name = N'Description';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Landmark Text',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Location',
   @level2type = N'COLUMN',   @level2name = N'Landmark_Text';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Address Full Text',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Location',
   @level2type = N'COLUMN',   @level2name = N'Address_Full_Text';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Address Line ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Location',
   @level2type = N'COLUMN',   @level2name = N'Address_Line_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Address Structured ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Location',
   @level2type = N'COLUMN',   @level2name = N'Address_Structured_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'City Name',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Location',
   @level2type = N'COLUMN',   @level2name = N'City_Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'State Code',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Location',
   @level2type = N'COLUMN',   @level2name = N'State_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Postal Code',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Location',
   @level2type = N'COLUMN',   @level2name = N'Postal_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Postal Code Extension',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Location',
   @level2type = N'COLUMN',   @level2name = N'Postal_Code_Extension';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Region Code',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Location',
   @level2type = N'COLUMN',   @level2name = N'Region_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'District Code',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Location',
   @level2type = N'COLUMN',   @level2name = N'District_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Country Code',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Location',
   @level2type = N'COLUMN',   @level2name = N'Country_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Latitude',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Location',
   @level2type = N'COLUMN',   @level2name = N'Latitude';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Longitude',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Location',
   @level2type = N'COLUMN',   @level2name = N'Longitude';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Primary Indicator',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Location',
   @level2type = N'COLUMN',   @level2name = N'Primary_Indicator';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Location',
   @level2type = N'COLUMN',   @level2name = N'Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Status Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Location',
   @level2type = N'COLUMN',   @level2name = N'Status_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Location',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Location',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Location',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Location',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Location',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Location',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Location',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Location',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Location',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Location',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Location',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Census Tiger - CLASFP - Class Feature Place Codes',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Class_Feature_Place_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Class_Feature_Place_Code',
   @level2type = N'COLUMN',   @level2name = N'Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Description',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Class_Feature_Place_Code',
   @level2type = N'COLUMN',   @level2name = N'Description';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Category ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Class_Feature_Place_Code',
   @level2type = N'COLUMN',   @level2name = N'Category_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Associated Entity',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Class_Feature_Place_Code',
   @level2type = N'COLUMN',   @level2name = N'Associated_Entity';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code Set Name',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Class_Feature_Place_Code',
   @level2type = N'COLUMN',   @level2name = N'CodeSet_Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Class_Feature_Place_Code',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Class_Feature_Place_Code',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Class_Feature_Place_Code',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Class_Feature_Place_Code',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Class_Feature_Place_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Class_Feature_Place_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Class_Feature_Place_Code',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Class_Feature_Place_Code',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Class_Feature_Place_Code',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Class_Feature_Place_Code',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Class_Feature_Place_Code',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Census Tiger - LSAD Area logal/statistical area description code',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Area_Description_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Area_Description_Code',
   @level2type = N'COLUMN',   @level2name = N'Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Description',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Area_Description_Code',
   @level2type = N'COLUMN',   @level2name = N'Description';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Category ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Area_Description_Code',
   @level2type = N'COLUMN',   @level2name = N'Category_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Associated Entity',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Area_Description_Code',
   @level2type = N'COLUMN',   @level2name = N'Associated_Entity';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code Set Name',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Area_Description_Code',
   @level2type = N'COLUMN',   @level2name = N'CodeSet_Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Area_Description_Code',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Area_Description_Code',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Area_Description_Code',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Area_Description_Code',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Area_Description_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Area_Description_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Area_Description_Code',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Area_Description_Code',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Area_Description_Code',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Area_Description_Code',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Area_Description_Code',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Identify and describe a Country code based on ISO-3166',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Country_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Country_Code',
   @level2type = N'COLUMN',   @level2name = N'Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Description',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Country_Code',
   @level2type = N'COLUMN',   @level2name = N'Description';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Category ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Country_Code',
   @level2type = N'COLUMN',   @level2name = N'Category_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code Set Name',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Country_Code',
   @level2type = N'COLUMN',   @level2name = N'CodeSet_Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Country_Code',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Country_Code',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Country_Code',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Country_Code',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Country_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Country_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Country_Code',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Country_Code',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Country_Code',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Country_Code',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Country_Code',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Census Tiger County Codes',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'County_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'County_Code',
   @level2type = N'COLUMN',   @level2name = N'Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'State FIPS',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'County_Code',
   @level2type = N'COLUMN',   @level2name = N'State_FIPS';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'County FIPS',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'County_Code',
   @level2type = N'COLUMN',   @level2name = N'County_FIPS';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'County ANSI',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'County_Code',
   @level2type = N'COLUMN',   @level2name = N'County_ANSI';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'County identifier; a concatenation of Current state FPIPS code and county FIPS code',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'County_Code',
   @level2type = N'COLUMN',   @level2name = N'Geography_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Name',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'County_Code',
   @level2type = N'COLUMN',   @level2name = N'Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Current name and the tralsnated legal/statistical area description for county',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'County_Code',
   @level2type = N'COLUMN',   @level2name = N'Name_LSAD';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Current legal/statistical area description code for county',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'County_Code',
   @level2type = N'COLUMN',   @level2name = N'Area_Description_LSAD';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Current FIPS class code',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'County_Code',
   @level2type = N'COLUMN',   @level2name = N'Class_FIPS';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'MAF/TIGER Feature Class Code (G4020)',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'County_Code',
   @level2type = N'COLUMN',   @level2name = N'Feature_Class_MTF';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Current FIPS class code',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'County_Code',
   @level2type = N'COLUMN',   @level2name = N'Area_CSAFP';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Current metropolitan statistical area/micropolitan statistical area code',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'County_Code',
   @level2type = N'COLUMN',   @level2name = N'Area_CBSAFP';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Current metropolitan division code',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'County_Code',
   @level2type = N'COLUMN',   @level2name = N'Metro_Division_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Current functional status',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'County_Code',
   @level2type = N'COLUMN',   @level2name = N'Functional_Status';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Area Land',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'County_Code',
   @level2type = N'COLUMN',   @level2name = N'Area_Land';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Area Water',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'County_Code',
   @level2type = N'COLUMN',   @level2name = N'Area_Water';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Latitude',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'County_Code',
   @level2type = N'COLUMN',   @level2name = N'Latitude';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Longitude',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'County_Code',
   @level2type = N'COLUMN',   @level2name = N'Longitude';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'County_Code',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'County_Code',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'County_Code',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'County_Code',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'County_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'County_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'County_Code',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'County_Code',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'County_Code',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'County_Code',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'County_Code',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'A (street based) structured address details',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Address_Structured';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Address Structured ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Address_Structured',
   @level2type = N'COLUMN',   @level2name = N'Address_Structured_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Building Name',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Address_Structured',
   @level2type = N'COLUMN',   @level2name = N'Building_Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Unit Number',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Address_Structured',
   @level2type = N'COLUMN',   @level2name = N'Unit_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Mailbox',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Address_Structured',
   @level2type = N'COLUMN',   @level2name = N'Mailbox';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Street Number',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Address_Structured',
   @level2type = N'COLUMN',   @level2name = N'Street_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Street Name',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Address_Structured',
   @level2type = N'COLUMN',   @level2name = N'Street_Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Street Direction',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Address_Structured',
   @level2type = N'COLUMN',   @level2name = N'Street_Direction';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Street Prefix',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Address_Structured',
   @level2type = N'COLUMN',   @level2name = N'Street_Prefix';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Street Suffix',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Address_Structured',
   @level2type = N'COLUMN',   @level2name = N'Street_Suffix';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Address_Structured',
   @level2type = N'COLUMN',   @level2name = N'Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Status Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Address_Structured',
   @level2type = N'COLUMN',   @level2name = N'Status_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Address_Structured',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Address_Structured',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Address_Structured',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Address_Structured',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Address_Structured',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Address_Structured',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Address_Structured',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Address_Structured',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Address_Structured',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Address_Structured',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Address_Structured',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'A line based unstructured address',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Address_Line';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Address Line ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Address_Line',
   @level2type = N'COLUMN',   @level2name = N'Address_Line_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Address Text1',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Address_Line',
   @level2type = N'COLUMN',   @level2name = N'Address_Text1';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Address Text2',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Address_Line',
   @level2type = N'COLUMN',   @level2name = N'Address_Text2';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Address Text3',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Address_Line',
   @level2type = N'COLUMN',   @level2name = N'Address_Text3';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Address Text4',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Address_Line',
   @level2type = N'COLUMN',   @level2name = N'Address_Text4';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Address Text5',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Address_Line',
   @level2type = N'COLUMN',   @level2name = N'Address_Text5';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Address_Line',
   @level2type = N'COLUMN',   @level2name = N'Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Status Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Address_Line',
   @level2type = N'COLUMN',   @level2name = N'Status_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Address_Line',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Address_Line',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Address_Line',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Address_Line',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Address_Line',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Address_Line',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Address_Line',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Address_Line',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Address_Line',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Address_Line',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Address_Line',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Identify and describe a kind of Zone Improvement Plan',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Zip_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Zip_Code',
   @level2type = N'COLUMN',   @level2name = N'Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Zip 5 Code',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Zip_Code',
   @level2type = N'COLUMN',   @level2name = N'Zip_5_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Geography ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Zip_Code',
   @level2type = N'COLUMN',   @level2name = N'Geography_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Class FIPS',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Zip_Code',
   @level2type = N'COLUMN',   @level2name = N'Class_FIPS';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Metro Division Code',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Zip_Code',
   @level2type = N'COLUMN',   @level2name = N'Metro_Division_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Functional Status',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Zip_Code',
   @level2type = N'COLUMN',   @level2name = N'Functional_Status';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Area Land',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Zip_Code',
   @level2type = N'COLUMN',   @level2name = N'Area_Land';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Area Water',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Zip_Code',
   @level2type = N'COLUMN',   @level2name = N'Area_Water';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Latitude',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Zip_Code',
   @level2type = N'COLUMN',   @level2name = N'Latitude';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Longitude',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Zip_Code',
   @level2type = N'COLUMN',   @level2name = N'Longitude';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Zip_Code',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Zip_Code',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Zip_Code',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Zip_Code',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Zip_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Zip_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Zip_Code',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Zip_Code',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Zip_Code',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Zip_Code',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Zip_Code',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Census Tiger County Subdivision Codes',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'County_Subdivision_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'County_Subdivision_Code',
   @level2type = N'COLUMN',   @level2name = N'Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'State FIPS',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'County_Subdivision_Code',
   @level2type = N'COLUMN',   @level2name = N'State_FIPS';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'County FIPS',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'County_Subdivision_Code',
   @level2type = N'COLUMN',   @level2name = N'County_FIPS';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Subdivision FIPS',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'County_Subdivision_Code',
   @level2type = N'COLUMN',   @level2name = N'Subdivision_FIPS';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Subdivision ANSI',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'County_Subdivision_Code',
   @level2type = N'COLUMN',   @level2name = N'Subdivision_ANSI';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'County identifier; a concatenation of Current state FPIPS code and county FIPS code',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'County_Subdivision_Code',
   @level2type = N'COLUMN',   @level2name = N'Geography_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Name',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'County_Subdivision_Code',
   @level2type = N'COLUMN',   @level2name = N'Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Current name and the tralsnated legal/statistical area description for county',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'County_Subdivision_Code',
   @level2type = N'COLUMN',   @level2name = N'Name_LSAD';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Current legal/statistical area description code for county',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'County_Subdivision_Code',
   @level2type = N'COLUMN',   @level2name = N'Area_Description_LSAD';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Current FIPS class code',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'County_Subdivision_Code',
   @level2type = N'COLUMN',   @level2name = N'Class_FIPS';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'MAF/TIGER Feature Class Code (G4020)',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'County_Subdivision_Code',
   @level2type = N'COLUMN',   @level2name = N'Feature_Class_MTF';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Current FIPS class code',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'County_Subdivision_Code',
   @level2type = N'COLUMN',   @level2name = N'Area_CSAFP';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Current metropolitan statistical area/micropolitan statistical area code',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'County_Subdivision_Code',
   @level2type = N'COLUMN',   @level2name = N'Area_CBSAFP';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Current metropolitan division code',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'County_Subdivision_Code',
   @level2type = N'COLUMN',   @level2name = N'Metro_Division_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Current functional status',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'County_Subdivision_Code',
   @level2type = N'COLUMN',   @level2name = N'Functional_Status';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Area Land',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'County_Subdivision_Code',
   @level2type = N'COLUMN',   @level2name = N'Area_Land';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Area Water',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'County_Subdivision_Code',
   @level2type = N'COLUMN',   @level2name = N'Area_Water';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Latitude',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'County_Subdivision_Code',
   @level2type = N'COLUMN',   @level2name = N'Latitude';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Longitude',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'County_Subdivision_Code',
   @level2type = N'COLUMN',   @level2name = N'Longitude';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'County_Subdivision_Code',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'County_Subdivision_Code',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'County_Subdivision_Code',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'County_Subdivision_Code',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'County_Subdivision_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'County_Subdivision_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'County_Subdivision_Code',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'County_Subdivision_Code',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'County_Subdivision_Code',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'County_Subdivision_Code',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'County_Subdivision_Code',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Identify and describe a state or province (based on Census states)',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'State_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'State_Code',
   @level2type = N'COLUMN',   @level2name = N'Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Description',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'State_Code',
   @level2type = N'COLUMN',   @level2name = N'Description';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Category ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'State_Code',
   @level2type = N'COLUMN',   @level2name = N'Category_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code Set Name',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'State_Code',
   @level2type = N'COLUMN',   @level2name = N'CodeSet_Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Region Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'State_Code',
   @level2type = N'COLUMN',   @level2name = N'Region_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Division Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'State_Code',
   @level2type = N'COLUMN',   @level2name = N'Division_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'State FIPS',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'State_Code',
   @level2type = N'COLUMN',   @level2name = N'State_FIPS';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'State ANSI',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'State_Code',
   @level2type = N'COLUMN',   @level2name = N'State_ANSI';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Geography ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'State_Code',
   @level2type = N'COLUMN',   @level2name = N'Geography_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'USPS Abbreviation',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'State_Code',
   @level2type = N'COLUMN',   @level2name = N'USPS_Abbreviation';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Area Description LSAD',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'State_Code',
   @level2type = N'COLUMN',   @level2name = N'Area_Description_LSAD';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Feature Class MTF',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'State_Code',
   @level2type = N'COLUMN',   @level2name = N'Feature_Class_MTF';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Area Land',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'State_Code',
   @level2type = N'COLUMN',   @level2name = N'Area_Land';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Area Water',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'State_Code',
   @level2type = N'COLUMN',   @level2name = N'Area_Water';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Latitude',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'State_Code',
   @level2type = N'COLUMN',   @level2name = N'Latitude';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Longitude',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'State_Code',
   @level2type = N'COLUMN',   @level2name = N'Longitude';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'State_Code',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'State_Code',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'State_Code',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'State_Code',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'State_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'State_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'State_Code',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'State_Code',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'State_Code',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'State_Code',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'State_Code',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Identify and describe a kind of Region (based on Census regions)',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Region_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Region_Code',
   @level2type = N'COLUMN',   @level2name = N'Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Description',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Region_Code',
   @level2type = N'COLUMN',   @level2name = N'Description';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Category ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Region_Code',
   @level2type = N'COLUMN',   @level2name = N'Category_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code Set Name',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Region_Code',
   @level2type = N'COLUMN',   @level2name = N'CodeSet_Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Region_Code',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Region_Code',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Region_Code',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Region_Code',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Region_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Region_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Region_Code',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Region_Code',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Region_Code',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Region_Code',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Geography',
   @level1type = N'TABLE',    @level1name = N'Region_Code',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Geography ',
   @level0type = N'SCHEMA',   @level0name = N'cd4',
   @level1type = N'TABLE',    @level1name = N'Geography';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Location Type',
   @level0type = N'SCHEMA',   @level0name = N'cd4',
   @level1type = N'TABLE',    @level1name = N'Geography',
   @level2type = N'COLUMN',   @level2name = N'Location_Type';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Note Type',
   @level0type = N'SCHEMA',   @level0name = N'cd4',
   @level1type = N'TABLE',    @level1name = N'Geography',
   @level2type = N'COLUMN',   @level2name = N'Note_Type';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Note',
   @level0type = N'SCHEMA',   @level0name = N'cd4',
   @level1type = N'TABLE',    @level1name = N'Geography',
   @level2type = N'COLUMN',   @level2name = N'Note';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Media Type',
   @level0type = N'SCHEMA',   @level0name = N'cd4',
   @level1type = N'TABLE',    @level1name = N'Geography',
   @level2type = N'COLUMN',   @level2name = N'Media_Type';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Media',
   @level0type = N'SCHEMA',   @level0name = N'cd4',
   @level1type = N'TABLE',    @level1name = N'Geography',
   @level2type = N'COLUMN',   @level2name = N'Media';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Location',
   @level0type = N'SCHEMA',   @level0name = N'cd4',
   @level1type = N'TABLE',    @level1name = N'Geography',
   @level2type = N'COLUMN',   @level2name = N'Location';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Class Feature Place Code',
   @level0type = N'SCHEMA',   @level0name = N'cd4',
   @level1type = N'TABLE',    @level1name = N'Geography',
   @level2type = N'COLUMN',   @level2name = N'Class_Feature_Place_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Area Description Code',
   @level0type = N'SCHEMA',   @level0name = N'cd4',
   @level1type = N'TABLE',    @level1name = N'Geography',
   @level2type = N'COLUMN',   @level2name = N'Area_Description_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Country Code',
   @level0type = N'SCHEMA',   @level0name = N'cd4',
   @level1type = N'TABLE',    @level1name = N'Geography',
   @level2type = N'COLUMN',   @level2name = N'Country_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'County Code',
   @level0type = N'SCHEMA',   @level0name = N'cd4',
   @level1type = N'TABLE',    @level1name = N'Geography',
   @level2type = N'COLUMN',   @level2name = N'County_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Address Structured',
   @level0type = N'SCHEMA',   @level0name = N'cd4',
   @level1type = N'TABLE',    @level1name = N'Geography',
   @level2type = N'COLUMN',   @level2name = N'Address_Structured';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Address Line',
   @level0type = N'SCHEMA',   @level0name = N'cd4',
   @level1type = N'TABLE',    @level1name = N'Geography',
   @level2type = N'COLUMN',   @level2name = N'Address_Line';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Zip Code',
   @level0type = N'SCHEMA',   @level0name = N'cd4',
   @level1type = N'TABLE',    @level1name = N'Geography',
   @level2type = N'COLUMN',   @level2name = N'Zip_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'County Subdivision Code',
   @level0type = N'SCHEMA',   @level0name = N'cd4',
   @level1type = N'TABLE',    @level1name = N'Geography',
   @level2type = N'COLUMN',   @level2name = N'County_Subdivision_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'State Code',
   @level0type = N'SCHEMA',   @level0name = N'cd4',
   @level1type = N'TABLE',    @level1name = N'Geography',
   @level2type = N'COLUMN',   @level2name = N'State_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Region Code',
   @level0type = N'SCHEMA',   @level0name = N'cd4',
   @level1type = N'TABLE',    @level1name = N'Geography',
   @level2type = N'COLUMN',   @level2name = N'Region_Code';

