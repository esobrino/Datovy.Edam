EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Identify and describe a specimen associated with virus laboratory tests',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Specimen_Source_Type';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Type ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Specimen_Source_Type',
   @level2type = N'COLUMN',   @level2name = N'Type_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Description',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Specimen_Source_Type',
   @level2type = N'COLUMN',   @level2name = N'Description';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Category ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Specimen_Source_Type',
   @level2type = N'COLUMN',   @level2name = N'Category_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code Set Name',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Specimen_Source_Type',
   @level2type = N'COLUMN',   @level2name = N'CodeSet_Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Specimen_Source_Type',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Specimen_Source_Type',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Specimen_Source_Type',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Specimen_Source_Type',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Specimen_Source_Type',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Specimen_Source_Type',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Specimen_Source_Type',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Specimen_Source_Type',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Specimen_Source_Type',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Specimen_Source_Type',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Specimen_Source_Type',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Identify and describe the kind of note or comment',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Note_Type';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Type ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Note_Type',
   @level2type = N'COLUMN',   @level2name = N'Type_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Description',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Note_Type',
   @level2type = N'COLUMN',   @level2name = N'Description';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Category ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Note_Type',
   @level2type = N'COLUMN',   @level2name = N'Category_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code Set Name',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Note_Type',
   @level2type = N'COLUMN',   @level2name = N'CodeSet_Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Note_Type',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Note_Type',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Note_Type',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Note_Type',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Note_Type',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Note_Type',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Note_Type',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Note_Type',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Note_Type',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Note_Type',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Note_Type',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'A statement, comment, or remark defining a thing or providing additional information',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Note';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Note ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Note_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Note Type ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Note_Type_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Note Text',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Note_Text';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Note Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Note_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Author ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Author_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Author Role ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Author_Role_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Author Name',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Author_Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Status Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Status_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Lab Result ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Lab_Result_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Specimen ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Specimen_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Note',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Identify and describe the kind of media',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Media_Type';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Type ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Media_Type',
   @level2type = N'COLUMN',   @level2name = N'Type_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Description',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Media_Type',
   @level2type = N'COLUMN',   @level2name = N'Description';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Category ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Media_Type',
   @level2type = N'COLUMN',   @level2name = N'Category_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Provided to set a comma delimited list of Privacy, Security or other data Tags such as GDPR, HIPAA, PII or other.',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Media_Type',
   @level2type = N'COLUMN',   @level2name = N'Tags';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code Set Name',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Media_Type',
   @level2type = N'COLUMN',   @level2name = N'CodeSet_Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Media_Type',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Media_Type',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Media_Type',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Media_Type',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Media_Type',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Media_Type',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Media_Type',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Media_Type',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Media_Type',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Media_Type',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Media_Type',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'A document, image, or other digital artifacts that describe or define something',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Media';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Media ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Media_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Alternate ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Alternate_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Type ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Type_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Category Text',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Category_Text';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Status Code',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Status_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Url Text',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Url_Text';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Size In Bytes',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Size_In_Bytes';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Media Data',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Media_Data';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Scope Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Scope_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Content Type Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Content_Type_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Content Type Text',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Content_Type_Text';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Default Indicator',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Default_Indicator';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Serial No',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Serial_No';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Status Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Status_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Reference Date Type ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Reference_Date_Type_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Reference Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Reference_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Lab Result ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Lab_Result_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Specimen ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Specimen_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Media',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Identify and describe a Lab type/kind',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Type';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Type ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Type',
   @level2type = N'COLUMN',   @level2name = N'Type_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Description',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Type',
   @level2type = N'COLUMN',   @level2name = N'Description';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Category ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Type',
   @level2type = N'COLUMN',   @level2name = N'Category_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code Set Name',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Type',
   @level2type = N'COLUMN',   @level2name = N'CodeSet_Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Type',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Type',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Type',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Type',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Type',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Type',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Type',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Type',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Type',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Type',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Type',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Identify and describe Lab test type/kind associated with a disease',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Test_Type';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Type ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Test_Type',
   @level2type = N'COLUMN',   @level2name = N'Type_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Description',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Test_Type',
   @level2type = N'COLUMN',   @level2name = N'Description';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Category ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Test_Type',
   @level2type = N'COLUMN',   @level2name = N'Category_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code Set Name',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Test_Type',
   @level2type = N'COLUMN',   @level2name = N'CodeSet_Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Test_Type',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Test_Type',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Test_Type',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Test_Type',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Test_Type',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Test_Type',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Test_Type',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Test_Type',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Test_Type',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Test_Type',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Test_Type',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Identify and describe a kind of lab result',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Result_Type';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Type ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Result_Type',
   @level2type = N'COLUMN',   @level2name = N'Type_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Description',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Result_Type',
   @level2type = N'COLUMN',   @level2name = N'Description';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Category ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Result_Type',
   @level2type = N'COLUMN',   @level2name = N'Category_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code Set Name',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Result_Type',
   @level2type = N'COLUMN',   @level2name = N'CodeSet_Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Result_Type',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Result_Type',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Result_Type',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Result_Type',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Result_Type',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Result_Type',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Result_Type',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Result_Type',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Result_Type',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Result_Type',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Result_Type',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Provide details about a Lab test results',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Result';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Lab Result ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Result',
   @level2type = N'COLUMN',   @level2name = N'Lab_Result_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Laboratory ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Result',
   @level2type = N'COLUMN',   @level2name = N'Laboratory_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Lab Result Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Result',
   @level2type = N'COLUMN',   @level2name = N'Lab_Result_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Result Type ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Result',
   @level2type = N'COLUMN',   @level2name = N'Result_Type_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Result Value',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Result',
   @level2type = N'COLUMN',   @level2name = N'Result_Value';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Result Unit',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Result',
   @level2type = N'COLUMN',   @level2name = N'Result_Unit';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Result',
   @level2type = N'COLUMN',   @level2name = N'Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Status Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Result',
   @level2type = N'COLUMN',   @level2name = N'Status_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Result',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Result',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Result',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Result',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Result',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Result',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Result',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Result',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Result',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Result',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Result',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Provide details about a laboratory unit and reference to its unit/organization',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Laboratory';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Laboratory ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Laboratory',
   @level2type = N'COLUMN',   @level2name = N'Laboratory_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Alternate ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Laboratory',
   @level2type = N'COLUMN',   @level2name = N'Alternate_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Lab Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Laboratory',
   @level2type = N'COLUMN',   @level2name = N'Lab_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Name',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Laboratory',
   @level2type = N'COLUMN',   @level2name = N'Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Laboratory Type ',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Laboratory',
   @level2type = N'COLUMN',   @level2name = N'Type_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'LIMS - Laborary Information Management System',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Laboratory',
   @level2type = N'COLUMN',   @level2name = N'Vendor_LIMS_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Laboratory',
   @level2type = N'COLUMN',   @level2name = N'Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Status Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Laboratory',
   @level2type = N'COLUMN',   @level2name = N'Status_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Organization ID... External reference to (Entity) Organization',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Laboratory',
   @level2type = N'COLUMN',   @level2name = N'Organization_ID';

EXECUTE sp_addextendedproperty
   @name = 'X_Reference', @value = 'Organization ID... External reference to (Entity) Organization',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Laboratory',
   @level2type = N'COLUMN',   @level2name = N'Organization_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Laboratory',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Laboratory',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Laboratory',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Laboratory',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Laboratory',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Laboratory',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Laboratory',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Laboratory',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Laboratory',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Laboratory',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Laboratory',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Identify and describe Epidemiologic interpretation of the results of the tests performed for Vaccine Preventable Disease (VPD)',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Test_Interpretation_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Test_Interpretation_Code',
   @level2type = N'COLUMN',   @level2name = N'Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Description',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Test_Interpretation_Code',
   @level2type = N'COLUMN',   @level2name = N'Description';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Category ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Test_Interpretation_Code',
   @level2type = N'COLUMN',   @level2name = N'Category_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code Set Name',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Test_Interpretation_Code',
   @level2type = N'COLUMN',   @level2name = N'CodeSet_Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Test_Interpretation_Code',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Test_Interpretation_Code',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Test_Interpretation_Code',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Test_Interpretation_Code',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Test_Interpretation_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Test_Interpretation_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Test_Interpretation_Code',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Test_Interpretation_Code',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Test_Interpretation_Code',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Test_Interpretation_Code',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Test_Interpretation_Code',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Identify and describe codes for a standard measure in terms of which quantities may be express',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Unit_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Unit_Code',
   @level2type = N'COLUMN',   @level2name = N'Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Description',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Unit_Code',
   @level2type = N'COLUMN',   @level2name = N'Description';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Category ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Unit_Code',
   @level2type = N'COLUMN',   @level2name = N'Category_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code Set Name',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Unit_Code',
   @level2type = N'COLUMN',   @level2name = N'CodeSet_Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Unit_Code',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Unit_Code',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Unit_Code',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Unit_Code',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Unit_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Unit_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Unit_Code',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Unit_Code',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Unit_Code',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Unit_Code',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Unit_Code',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Details about a laboratory test based on CDC NNDSS messages MMGs',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Test_Report';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Lab Test Report ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Test_Report',
   @level2type = N'COLUMN',   @level2name = N'Lab_Test_Report_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Laboratory ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Test_Report',
   @level2type = N'COLUMN',   @level2name = N'Laboratory_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Performing laboratory type',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Test_Report',
   @level2type = N'COLUMN',   @level2name = N'Lab_Type_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Epidemiologic interpretation of the type of test(s) performed for this case',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Test_Report',
   @level2type = N'COLUMN',   @level2name = N'Test_Type_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Epidemiologic interpretation of the results of the test(s) performed for this case. This is a qualitative test result.  (e.g, positive, detected, negative)',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Test_Report',
   @level2type = N'COLUMN',   @level2name = N'Test_Interpretation_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Quantitative Test Result Value',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Test_Report',
   @level2type = N'COLUMN',   @level2name = N'Test_Result_Quantitative';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Units of measure for the Quantitative Test Result Value',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Test_Report',
   @level2type = N'COLUMN',   @level2name = N'Test_Result_Unit_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'This indicates the source of the specimen tested.',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Test_Report',
   @level2type = N'COLUMN',   @level2name = N'Specimen_Source_Type_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Date of collection of laboratory specimen used for diagnosis of health event reported in this case report. Time of collection is an optional addition to date.',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Test_Report',
   @level2type = N'COLUMN',   @level2name = N'Specimen_Collection_Date';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Date specimen sent to CDC',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Test_Report',
   @level2type = N'COLUMN',   @level2name = N'Specimen_Sent_Date';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Case ID... External reference to (Management) Case',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Test_Report',
   @level2type = N'COLUMN',   @level2name = N'Case_ID';

EXECUTE sp_addextendedproperty
   @name = 'X_Reference', @value = 'Case ID... External reference to (Management) Case',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Test_Report',
   @level2type = N'COLUMN',   @level2name = N'Case_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Test_Report',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Test_Report',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Test_Report',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Test_Report',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Test_Report',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Test_Report',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Test_Report',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Test_Report',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Test_Report',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Test_Report',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Test_Report',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Association of a Lab with an external reference such as a Patient, Specimen, or other',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Link';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Lab Link ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Link',
   @level2type = N'COLUMN',   @level2name = N'Lab_Link_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Reference laboratory that will be used along with the patient identifier and specimen identifier to uniquely identify a lab message',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Link',
   @level2type = N'COLUMN',   @level2name = N'Laboratory_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Case ID... External reference to (Management) Case',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Link',
   @level2type = N'COLUMN',   @level2name = N'Case_ID';

EXECUTE sp_addextendedproperty
   @name = 'X_Reference', @value = 'Case ID... External reference to (Management) Case',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Link',
   @level2type = N'COLUMN',   @level2name = N'Case_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Lab message patient Identifier that will be used along with the reference laboratory and specimen identifier to uniquely identify a VPD lab message... External reference to (Entity) Person',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Link',
   @level2type = N'COLUMN',   @level2name = N'Subject_ID';

EXECUTE sp_addextendedproperty
   @name = 'X_Reference', @value = 'Lab message patient Identifier that will be used along with the reference laboratory and specimen identifier to uniquely identify a VPD lab message... External reference to (Entity) Person',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Link',
   @level2type = N'COLUMN',   @level2name = N'Subject_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Lab message patient Identifier that will be used along with the reference laboratory and specimen identifier to uniquely identify a VPD lab message',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Link',
   @level2type = N'COLUMN',   @level2name = N'Specimen_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Link',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Link',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Link',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Link',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Link',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Link',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Link',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Link',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Link',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Link',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Link',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Lab report details captured at a given date-time to be reported to an Authority',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Report';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Lab Report ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Report',
   @level2type = N'COLUMN',   @level2name = N'Lab_Report_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Report Date',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Report',
   @level2type = N'COLUMN',   @level2name = N'Report_Date';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Was laboratory testing done to confirm the diagnosis?',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Report',
   @level2type = N'COLUMN',   @level2name = N'Testing_Performed_Flag_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Was the case laboratory confirmed?',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Report',
   @level2type = N'COLUMN',   @level2name = N'Lab_Confirmed_Flag_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Was a specimen sent to CDC for testing?',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Report',
   @level2type = N'COLUMN',   @level2name = N'Specimen_Sent_Flag_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Case ID... External reference to (Management) Case',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Report',
   @level2type = N'COLUMN',   @level2name = N'Case_ID';

EXECUTE sp_addextendedproperty
   @name = 'X_Reference', @value = 'Case ID... External reference to (Management) Case',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Report',
   @level2type = N'COLUMN',   @level2name = N'Case_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Subject ID... External reference to (Entity) Person',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Report',
   @level2type = N'COLUMN',   @level2name = N'Subject_ID';

EXECUTE sp_addextendedproperty
   @name = 'X_Reference', @value = 'Subject ID... External reference to (Entity) Person',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Report',
   @level2type = N'COLUMN',   @level2name = N'Subject_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Report',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Report',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Report',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Report',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Report',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Report',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Report',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Report',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Report',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Report',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Lab_Report',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'A sample of a tissue, organ, or other use for testing and epidemiology studies',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Specimen';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Specimen ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Specimen',
   @level2type = N'COLUMN',   @level2name = N'Specimen_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Description',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Specimen',
   @level2type = N'COLUMN',   @level2name = N'Description';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Case ID... External reference to (Management) Case',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Specimen',
   @level2type = N'COLUMN',   @level2name = N'Case_ID';

EXECUTE sp_addextendedproperty
   @name = 'X_Reference', @value = 'Case ID... External reference to (Management) Case',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Specimen',
   @level2type = N'COLUMN',   @level2name = N'Case_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Subject ID... External reference to (Entity) Person',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Specimen',
   @level2type = N'COLUMN',   @level2name = N'Subject_ID';

EXECUTE sp_addextendedproperty
   @name = 'X_Reference', @value = 'Subject ID... External reference to (Entity) Person',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Specimen',
   @level2type = N'COLUMN',   @level2name = N'Subject_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Specimen',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Specimen',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Specimen',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Specimen',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Specimen',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Specimen',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Specimen',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Specimen',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Specimen',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Specimen',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Epidemiology',
   @level1type = N'TABLE',    @level1name = N'Specimen',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Epidemiology ',
   @level0type = N'SCHEMA',   @level0name = N'cd12',
   @level1type = N'TABLE',    @level1name = N'Epidemiology';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Specimen Source Type',
   @level0type = N'SCHEMA',   @level0name = N'cd12',
   @level1type = N'TABLE',    @level1name = N'Epidemiology',
   @level2type = N'COLUMN',   @level2name = N'Specimen_Source_Type';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Note Type',
   @level0type = N'SCHEMA',   @level0name = N'cd12',
   @level1type = N'TABLE',    @level1name = N'Epidemiology',
   @level2type = N'COLUMN',   @level2name = N'Note_Type';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Note',
   @level0type = N'SCHEMA',   @level0name = N'cd12',
   @level1type = N'TABLE',    @level1name = N'Epidemiology',
   @level2type = N'COLUMN',   @level2name = N'Note';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Media Type',
   @level0type = N'SCHEMA',   @level0name = N'cd12',
   @level1type = N'TABLE',    @level1name = N'Epidemiology',
   @level2type = N'COLUMN',   @level2name = N'Media_Type';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Media',
   @level0type = N'SCHEMA',   @level0name = N'cd12',
   @level1type = N'TABLE',    @level1name = N'Epidemiology',
   @level2type = N'COLUMN',   @level2name = N'Media';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Lab Type',
   @level0type = N'SCHEMA',   @level0name = N'cd12',
   @level1type = N'TABLE',    @level1name = N'Epidemiology',
   @level2type = N'COLUMN',   @level2name = N'Lab_Type';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Lab Test Type',
   @level0type = N'SCHEMA',   @level0name = N'cd12',
   @level1type = N'TABLE',    @level1name = N'Epidemiology',
   @level2type = N'COLUMN',   @level2name = N'Lab_Test_Type';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Lab Result Type',
   @level0type = N'SCHEMA',   @level0name = N'cd12',
   @level1type = N'TABLE',    @level1name = N'Epidemiology',
   @level2type = N'COLUMN',   @level2name = N'Lab_Result_Type';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Lab Result',
   @level0type = N'SCHEMA',   @level0name = N'cd12',
   @level1type = N'TABLE',    @level1name = N'Epidemiology',
   @level2type = N'COLUMN',   @level2name = N'Lab_Result';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Laboratory',
   @level0type = N'SCHEMA',   @level0name = N'cd12',
   @level1type = N'TABLE',    @level1name = N'Epidemiology',
   @level2type = N'COLUMN',   @level2name = N'Laboratory';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Lab Test Interpretation Code',
   @level0type = N'SCHEMA',   @level0name = N'cd12',
   @level1type = N'TABLE',    @level1name = N'Epidemiology',
   @level2type = N'COLUMN',   @level2name = N'Lab_Test_Interpretation_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Unit Code',
   @level0type = N'SCHEMA',   @level0name = N'cd12',
   @level1type = N'TABLE',    @level1name = N'Epidemiology',
   @level2type = N'COLUMN',   @level2name = N'Unit_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Lab Test Report',
   @level0type = N'SCHEMA',   @level0name = N'cd12',
   @level1type = N'TABLE',    @level1name = N'Epidemiology',
   @level2type = N'COLUMN',   @level2name = N'Lab_Test_Report';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Lab Link',
   @level0type = N'SCHEMA',   @level0name = N'cd12',
   @level1type = N'TABLE',    @level1name = N'Epidemiology',
   @level2type = N'COLUMN',   @level2name = N'Lab_Link';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Lab Report',
   @level0type = N'SCHEMA',   @level0name = N'cd12',
   @level1type = N'TABLE',    @level1name = N'Epidemiology',
   @level2type = N'COLUMN',   @level2name = N'Lab_Report';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Specimen',
   @level0type = N'SCHEMA',   @level0name = N'cd12',
   @level1type = N'TABLE',    @level1name = N'Epidemiology',
   @level2type = N'COLUMN',   @level2name = N'Specimen';

