EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Identify and describe a kind of content',
   @level0type = N'SCHEMA',   @level0name = N'Message',
   @level1type = N'TABLE',    @level1name = N'Content_Type';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Type ID',
   @level0type = N'SCHEMA',   @level0name = N'Message',
   @level1type = N'TABLE',    @level1name = N'Content_Type',
   @level2type = N'COLUMN',   @level2name = N'Type_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Description',
   @level0type = N'SCHEMA',   @level0name = N'Message',
   @level1type = N'TABLE',    @level1name = N'Content_Type',
   @level2type = N'COLUMN',   @level2name = N'Description';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Local Type ID',
   @level0type = N'SCHEMA',   @level0name = N'Message',
   @level1type = N'TABLE',    @level1name = N'Content_Type',
   @level2type = N'COLUMN',   @level2name = N'Local_Type_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Regional Type ID',
   @level0type = N'SCHEMA',   @level0name = N'Message',
   @level1type = N'TABLE',    @level1name = N'Content_Type',
   @level2type = N'COLUMN',   @level2name = N'Regional_Type_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Source ID',
   @level0type = N'SCHEMA',   @level0name = N'Message',
   @level1type = N'TABLE',    @level1name = N'Content_Type',
   @level2type = N'COLUMN',   @level2name = N'Source_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Message',
   @level1type = N'TABLE',    @level1name = N'Content_Type',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Message',
   @level1type = N'TABLE',    @level1name = N'Content_Type',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Message',
   @level1type = N'TABLE',    @level1name = N'Content_Type',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Message',
   @level1type = N'TABLE',    @level1name = N'Content_Type',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Message',
   @level1type = N'TABLE',    @level1name = N'Content_Type',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Message',
   @level1type = N'TABLE',    @level1name = N'Content_Type',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Message',
   @level1type = N'TABLE',    @level1name = N'Content_Type',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Message',
   @level1type = N'TABLE',    @level1name = N'Content_Type',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Message',
   @level1type = N'TABLE',    @level1name = N'Content_Type',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Message',
   @level1type = N'TABLE',    @level1name = N'Content_Type',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Message',
   @level1type = N'TABLE',    @level1name = N'Content_Type',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'A registry of a message of a given content type',
   @level0type = N'SCHEMA',   @level0name = N'Message',
   @level1type = N'TABLE',    @level1name = N'Submission';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Submission ID',
   @level0type = N'SCHEMA',   @level0name = N'Message',
   @level1type = N'TABLE',    @level1name = N'Submission',
   @level2type = N'COLUMN',   @level2name = N'Submission_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Submission Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Message',
   @level1type = N'TABLE',    @level1name = N'Submission',
   @level2type = N'COLUMN',   @level2name = N'Submission_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Reference ID... External reference to any external Entity',
   @level0type = N'SCHEMA',   @level0name = N'Message',
   @level1type = N'TABLE',    @level1name = N'Submission',
   @level2type = N'COLUMN',   @level2name = N'Reference_ID';

EXECUTE sp_addextendedproperty
   @name = 'X_Reference', @value = 'Reference ID... External reference to any external Entity',
   @level0type = N'SCHEMA',   @level0name = N'Message',
   @level1type = N'TABLE',    @level1name = N'Submission',
   @level2type = N'COLUMN',   @level2name = N'Reference_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Received Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Message',
   @level1type = N'TABLE',    @level1name = N'Submission',
   @level2type = N'COLUMN',   @level2name = N'Received_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Message Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Message',
   @level1type = N'TABLE',    @level1name = N'Submission',
   @level2type = N'COLUMN',   @level2name = N'Message_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Item ID',
   @level0type = N'SCHEMA',   @level0name = N'Message',
   @level1type = N'TABLE',    @level1name = N'Submission',
   @level2type = N'COLUMN',   @level2name = N'Data_Item_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Content Type ID',
   @level0type = N'SCHEMA',   @level0name = N'Message',
   @level1type = N'TABLE',    @level1name = N'Submission',
   @level2type = N'COLUMN',   @level2name = N'Content_Type_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Content ID',
   @level0type = N'SCHEMA',   @level0name = N'Message',
   @level1type = N'TABLE',    @level1name = N'Submission',
   @level2type = N'COLUMN',   @level2name = N'Content_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Source ID',
   @level0type = N'SCHEMA',   @level0name = N'Message',
   @level1type = N'TABLE',    @level1name = N'Submission',
   @level2type = N'COLUMN',   @level2name = N'Source_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Source Local ID',
   @level0type = N'SCHEMA',   @level0name = N'Message',
   @level1type = N'TABLE',    @level1name = N'Submission',
   @level2type = N'COLUMN',   @level2name = N'Source_Local_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Message Data',
   @level0type = N'SCHEMA',   @level0name = N'Message',
   @level1type = N'TABLE',    @level1name = N'Submission',
   @level2type = N'COLUMN',   @level2name = N'Message_Data';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Message Count',
   @level0type = N'SCHEMA',   @level0name = N'Message',
   @level1type = N'TABLE',    @level1name = N'Submission',
   @level2type = N'COLUMN',   @level2name = N'Message_Count';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Message Length In Bytes',
   @level0type = N'SCHEMA',   @level0name = N'Message',
   @level1type = N'TABLE',    @level1name = N'Submission',
   @level2type = N'COLUMN',   @level2name = N'Message_Length_InBytes';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Message',
   @level1type = N'TABLE',    @level1name = N'Submission',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Message',
   @level1type = N'TABLE',    @level1name = N'Submission',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Message',
   @level1type = N'TABLE',    @level1name = N'Submission',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Message',
   @level1type = N'TABLE',    @level1name = N'Submission',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Message',
   @level1type = N'TABLE',    @level1name = N'Submission',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Message',
   @level1type = N'TABLE',    @level1name = N'Submission',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Message',
   @level1type = N'TABLE',    @level1name = N'Submission',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Message',
   @level1type = N'TABLE',    @level1name = N'Submission',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Message',
   @level1type = N'TABLE',    @level1name = N'Submission',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Message',
   @level1type = N'TABLE',    @level1name = N'Submission',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Message',
   @level1type = N'TABLE',    @level1name = N'Submission',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Message ',
   @level0type = N'SCHEMA',   @level0name = N'cd10',
   @level1type = N'TABLE',    @level1name = N'Message';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Content Type',
   @level0type = N'SCHEMA',   @level0name = N'cd10',
   @level1type = N'TABLE',    @level1name = N'Message',
   @level2type = N'COLUMN',   @level2name = N'Content_Type';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Submission',
   @level0type = N'SCHEMA',   @level0name = N'cd10',
   @level1type = N'TABLE',    @level1name = N'Message',
   @level2type = N'COLUMN',   @level2name = N'Submission';

