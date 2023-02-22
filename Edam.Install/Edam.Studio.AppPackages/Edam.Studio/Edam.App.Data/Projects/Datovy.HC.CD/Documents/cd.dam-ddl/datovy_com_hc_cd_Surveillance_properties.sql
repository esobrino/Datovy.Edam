EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Details about a found complication to be reported to an Authority',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Complication_Report';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Complication Report ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Complication_Report',
   @level2type = N'COLUMN',   @level2name = N'Complication_Report_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Report Date',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Complication_Report',
   @level2type = N'COLUMN',   @level2name = N'Report_Date';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Permanent Flag ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Complication_Report',
   @level2type = N'COLUMN',   @level2name = N'Permanent_Flag_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Length of time in the US since the last travel',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Complication_Report',
   @level2type = N'COLUMN',   @level2name = N'Travel_Time_Last';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Length of Time in the US units ',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Complication_Report',
   @level2type = N'COLUMN',   @level2name = N'Travel_Time_Unit_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'List any international destinations of recent travel',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Complication_Report',
   @level2type = N'COLUMN',   @level2name = N'Travel_Country_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Travel Returned Date',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Complication_Report',
   @level2type = N'COLUMN',   @level2name = N'Travel_Returned_Date';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Did symptom onset occur within 12-25 days of entering the US, following any travel or living outside the US?',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Complication_Report',
   @level2type = N'COLUMN',   @level2name = N'Import_Status_Flag_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sub-classification of disease or condition acquired in the US',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Complication_Report',
   @level2type = N'COLUMN',   @level2name = N'Exposure_Source_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Detection Method',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Complication_Report',
   @level2type = N'COLUMN',   @level2name = N'Detection_Method_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Patient address city',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Complication_Report',
   @level2type = N'COLUMN',   @level2name = N'Patient_Address_City_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Case investigation status code',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Complication_Report',
   @level2type = N'COLUMN',   @level2name = N'Investigation_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'What was the transmission setting where the condition was acquired?',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Complication_Report',
   @level2type = N'COLUMN',   @level2name = N'Transmission_Setting_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Does the age of the case match or make sense for the transmission setting listed (e.g., a subject aged 80 probably would not have a transmission setting of child day care center)?',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Complication_Report',
   @level2type = N'COLUMN',   @level2name = N'Age_Setting_Verified_Flag_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Is this case Epi-Linked to another confirmed or probable case?',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Complication_Report',
   @level2type = N'COLUMN',   @level2name = N'Epidemiology_Linked_Flag_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Case ID... External reference to (Management) Case',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Complication_Report',
   @level2type = N'COLUMN',   @level2name = N'Case_ID';

EXECUTE sp_addextendedproperty
   @name = 'X_Reference', @value = 'Case ID... External reference to (Management) Case',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Complication_Report',
   @level2type = N'COLUMN',   @level2name = N'Case_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Subject ID... External reference to (Entity) Person',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Complication_Report',
   @level2type = N'COLUMN',   @level2name = N'Subject_ID';

EXECUTE sp_addextendedproperty
   @name = 'X_Reference', @value = 'Subject ID... External reference to (Entity) Person',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Complication_Report',
   @level2type = N'COLUMN',   @level2name = N'Subject_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Complication_Report',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Complication_Report',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Complication_Report',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Complication_Report',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Complication_Report',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Complication_Report',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Complication_Report',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Complication_Report',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Complication_Report',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Complication_Report',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Complication_Report',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Identify and describe a kind of reporting criteria',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Reporting_Criteria_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Reporting_Criteria_Code',
   @level2type = N'COLUMN',   @level2name = N'Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Description',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Reporting_Criteria_Code',
   @level2type = N'COLUMN',   @level2name = N'Description';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Category ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Reporting_Criteria_Code',
   @level2type = N'COLUMN',   @level2name = N'Category_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code Set Name',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Reporting_Criteria_Code',
   @level2type = N'COLUMN',   @level2name = N'CodeSet_Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Notifiable Indicator',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Reporting_Criteria_Code',
   @level2type = N'COLUMN',   @level2name = N'Notifiable_Indicator';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Reporting_Criteria_Code',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Reporting_Criteria_Code',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Reporting_Criteria_Code',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Reporting_Criteria_Code',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Reporting_Criteria_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Reporting_Criteria_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Reporting_Criteria_Code',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Reporting_Criteria_Code',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Reporting_Criteria_Code',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Reporting_Criteria_Code',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Reporting_Criteria_Code',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Identify and describe a Code specifying the type of facility or provider associated with the source of information sent to Public Health',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Reporting_Source_Type';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Type ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Reporting_Source_Type',
   @level2type = N'COLUMN',   @level2name = N'Type_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Description',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Reporting_Source_Type',
   @level2type = N'COLUMN',   @level2name = N'Description';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Category ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Reporting_Source_Type',
   @level2type = N'COLUMN',   @level2name = N'Category_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code Set Name',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Reporting_Source_Type',
   @level2type = N'COLUMN',   @level2name = N'CodeSet_Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Reporting_Source_Type',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Reporting_Source_Type',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Reporting_Source_Type',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Reporting_Source_Type',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Reporting_Source_Type',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Reporting_Source_Type',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Reporting_Source_Type',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Reporting_Source_Type',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Reporting_Source_Type',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Reporting_Source_Type',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Reporting_Source_Type',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Identify and describe a kind of state case notification',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Result_Status_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Result_Status_Code',
   @level2type = N'COLUMN',   @level2name = N'Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Description',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Result_Status_Code',
   @level2type = N'COLUMN',   @level2name = N'Description';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Category ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Result_Status_Code',
   @level2type = N'COLUMN',   @level2name = N'Category_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code Set Name',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Result_Status_Code',
   @level2type = N'COLUMN',   @level2name = N'CodeSet_Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Result_Status_Code',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Result_Status_Code',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Result_Status_Code',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Result_Status_Code',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Result_Status_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Result_Status_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Result_Status_Code',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Result_Status_Code',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Result_Status_Code',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Result_Status_Code',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Result_Status_Code',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Identify and describe the kind of Case classification state',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Class_Status_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Class_Status_Code',
   @level2type = N'COLUMN',   @level2name = N'Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Description',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Class_Status_Code',
   @level2type = N'COLUMN',   @level2name = N'Description';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Category ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Class_Status_Code',
   @level2type = N'COLUMN',   @level2name = N'Category_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code Set Name',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Class_Status_Code',
   @level2type = N'COLUMN',   @level2name = N'CodeSet_Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Class_Status_Code',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Class_Status_Code',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Class_Status_Code',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Class_Status_Code',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Class_Status_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Class_Status_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Class_Status_Code',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Class_Status_Code',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Class_Status_Code',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Class_Status_Code',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Class_Status_Code',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Identify and describe a kind of transmission mode of a disease',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Transmission_Mode_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Transmission_Mode_Code',
   @level2type = N'COLUMN',   @level2name = N'Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Description',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Transmission_Mode_Code',
   @level2type = N'COLUMN',   @level2name = N'Description';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Category ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Transmission_Mode_Code',
   @level2type = N'COLUMN',   @level2name = N'Category_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code Set Name',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Transmission_Mode_Code',
   @level2type = N'COLUMN',   @level2name = N'CodeSet_Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Transmission_Mode_Code',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Transmission_Mode_Code',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Transmission_Mode_Code',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Transmission_Mode_Code',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Transmission_Mode_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Transmission_Mode_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Transmission_Mode_Code',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Transmission_Mode_Code',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Transmission_Mode_Code',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Transmission_Mode_Code',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Transmission_Mode_Code',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Details about an exposure to a disease to be reported to an Authority',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Exposure_Report';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Exposure Report ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Exposure_Report',
   @level2type = N'COLUMN',   @level2name = N'Exposure_Report_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code for the mechanism by which disease or condition was acquired by the subject of the investigation.',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Exposure_Report',
   @level2type = N'COLUMN',   @level2name = N'Transmission_Mode_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Reporting State Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Exposure_Report',
   @level2type = N'COLUMN',   @level2name = N'Reporting_State_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Reporting County Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Exposure_Report',
   @level2type = N'COLUMN',   @level2name = N'Reporting_County_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Status of the case/event as suspect, probable, confirmed, or not a case per CSTE/CDC/ surveillance case definitions.',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Exposure_Report',
   @level2type = N'COLUMN',   @level2name = N'Case_Class_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Denotes whether the reported case was associated with an identified outbreak.',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Exposure_Report',
   @level2type = N'COLUMN',   @level2name = N'Case_Outbreak_Flag_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Denotes whether the reported case was associated with an identified outbreak.',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Exposure_Report',
   @level2type = N'COLUMN',   @level2name = N'Case_Outbreak_Name_Text';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Case Investigation Start Date',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Exposure_Report',
   @level2type = N'COLUMN',   @level2name = N'Case_Investigation_Start_Date';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Case Submitted First Date',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Exposure_Report',
   @level2type = N'COLUMN',   @level2name = N'Case_Submitted_First_Date';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Case Notified CDC Date',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Exposure_Report',
   @level2type = N'COLUMN',   @level2name = N'Case_Notified_CDC_Date';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Does this case meet the criteria for immediate (extremely urgent or urgent) notification to CDC?',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Exposure_Report',
   @level2type = N'COLUMN',   @level2name = N'Notify_Immediate_Flag_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Status of the notification',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Exposure_Report',
   @level2type = N'COLUMN',   @level2name = N'Notification_Result_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Identifier for the physical site from which the notification is being submitted. Locally defined field.',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Exposure_Report',
   @level2type = N'COLUMN',   @level2name = N'Jurisdiction_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Reported Date',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Exposure_Report',
   @level2type = N'COLUMN',   @level2name = N'Reported_Date';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Reported State Date',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Exposure_Report',
   @level2type = N'COLUMN',   @level2name = N'Reported_State_Date';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Reported County Date',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Exposure_Report',
   @level2type = N'COLUMN',   @level2name = N'Reported_County_Date';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Type of facility or provider associated with the source of information sent to Public Health.',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Exposure_Report',
   @level2type = N'COLUMN',   @level2name = N'Reporting_Source_Type_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'ZIP Code of the reporting source for this case.',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Exposure_Report',
   @level2type = N'COLUMN',   @level2name = N'Reporting_Source_Zip_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'For cases meeting the binational criteria, select all the criteria which are met.',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Exposure_Report',
   @level2type = N'COLUMN',   @level2name = N'Reporting_Criteria_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Reporting Jurisdiction Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Exposure_Report',
   @level2type = N'COLUMN',   @level2name = N'Reporting_Jurisdiction_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Person Reporting Name Text',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Exposure_Report',
   @level2type = N'COLUMN',   @level2name = N'Person_Reporting_Name_Text';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Person Reporting Phone Number',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Exposure_Report',
   @level2type = N'COLUMN',   @level2name = N'Person_Reporting_Phone_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Person Reporting Email',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Exposure_Report',
   @level2type = N'COLUMN',   @level2name = N'Person_Reporting_Email';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Comment Text',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Exposure_Report',
   @level2type = N'COLUMN',   @level2name = N'Comment_Text';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Case Report ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Exposure_Report',
   @level2type = N'COLUMN',   @level2name = N'Case_Report_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Location ID... External reference to (Geography) Location',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Exposure_Report',
   @level2type = N'COLUMN',   @level2name = N'Location_ID';

EXECUTE sp_addextendedproperty
   @name = 'X_Reference', @value = 'Location ID... External reference to (Geography) Location',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Exposure_Report',
   @level2type = N'COLUMN',   @level2name = N'Location_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Exposure_Report',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Exposure_Report',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Exposure_Report',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Exposure_Report',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Exposure_Report',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Exposure_Report',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Exposure_Report',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Exposure_Report',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Exposure_Report',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Exposure_Report',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Exposure_Report',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Identify and describe a kind of profile or common set of conditions',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Profile_Type';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Type ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Profile_Type',
   @level2type = N'COLUMN',   @level2name = N'Type_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Description',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Profile_Type',
   @level2type = N'COLUMN',   @level2name = N'Description';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Category ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Profile_Type',
   @level2type = N'COLUMN',   @level2name = N'Category_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code Set Name',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Profile_Type',
   @level2type = N'COLUMN',   @level2name = N'CodeSet_Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Profile_Type',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Profile_Type',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Profile_Type',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Profile_Type',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Profile_Type',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Profile_Type',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Profile_Type',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Profile_Type',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Profile_Type',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Profile_Type',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Profile_Type',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Identify and describe the kind of assessment',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment_Type';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Type ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment_Type',
   @level2type = N'COLUMN',   @level2name = N'Type_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Description',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment_Type',
   @level2type = N'COLUMN',   @level2name = N'Description';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Category ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment_Type',
   @level2type = N'COLUMN',   @level2name = N'Category_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code Set Name',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment_Type',
   @level2type = N'COLUMN',   @level2name = N'CodeSet_Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment_Type',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment_Type',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment_Type',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment_Type',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment_Type',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment_Type',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment_Type',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment_Type',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment_Type',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment_Type',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment_Type',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'A person travel details',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Travel_Detail';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Travel Detail ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Travel_Detail',
   @level2type = N'COLUMN',   @level2name = N'Travel_Detail_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Travel Parent ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Travel_Detail',
   @level2type = N'COLUMN',   @level2name = N'Travel_Parent_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'By Air, By Train, By Ship',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Travel_Detail',
   @level2type = N'COLUMN',   @level2name = N'Type_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Purpose Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Travel_Detail',
   @level2type = N'COLUMN',   @level2name = N'Purpose_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Case ID... External reference to (Management) Case',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Travel_Detail',
   @level2type = N'COLUMN',   @level2name = N'Case_ID';

EXECUTE sp_addextendedproperty
   @name = 'X_Reference', @value = 'Case ID... External reference to (Management) Case',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Travel_Detail',
   @level2type = N'COLUMN',   @level2name = N'Case_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Subject ID... External reference to (Entity) Person',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Travel_Detail',
   @level2type = N'COLUMN',   @level2name = N'Subject_ID';

EXECUTE sp_addextendedproperty
   @name = 'X_Reference', @value = 'Subject ID... External reference to (Entity) Person',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Travel_Detail',
   @level2type = N'COLUMN',   @level2name = N'Subject_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Travel Number',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Travel_Detail',
   @level2type = N'COLUMN',   @level2name = N'Travel_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'State Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Travel_Detail',
   @level2type = N'COLUMN',   @level2name = N'State_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'County Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Travel_Detail',
   @level2type = N'COLUMN',   @level2name = N'County_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Country Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Travel_Detail',
   @level2type = N'COLUMN',   @level2name = N'Country_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Origin ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Travel_Detail',
   @level2type = N'COLUMN',   @level2name = N'Origin_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Destination ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Travel_Detail',
   @level2type = N'COLUMN',   @level2name = N'Destination_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Departure Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Travel_Detail',
   @level2type = N'COLUMN',   @level2name = N'Departure_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Arrival Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Travel_Detail',
   @level2type = N'COLUMN',   @level2name = N'Arrival_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Travel_Detail',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Travel_Detail',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Travel_Detail',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Travel_Detail',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Travel_Detail',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Travel_Detail',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Travel_Detail',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Travel_Detail',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Travel_Detail',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Travel_Detail',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Travel_Detail',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Define the list of Medical Condition that are related to a particular disease being trackt',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Profile_Condition';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Profile Condition ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Profile_Condition',
   @level2type = N'COLUMN',   @level2name = N'Profile_Condition_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Profile ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Profile_Condition',
   @level2type = N'COLUMN',   @level2name = N'Profile_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Condition Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Profile_Condition',
   @level2type = N'COLUMN',   @level2name = N'Condition_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Profile_Condition',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Profile_Condition',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Profile_Condition',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Profile_Condition',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Profile_Condition',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Profile_Condition',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Profile_Condition',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Profile_Condition',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Profile_Condition',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Profile_Condition',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Profile_Condition',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Identify a group of conditions and circumstances that are common to an investigation of a disease, outbreak, or medical situation',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Profile';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Profile ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Profile',
   @level2type = N'COLUMN',   @level2name = N'Profile_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Profile Type ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Profile',
   @level2type = N'COLUMN',   @level2name = N'Profile_Type_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Profile Name',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Profile',
   @level2type = N'COLUMN',   @level2name = N'Profile_Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Profile',
   @level2type = N'COLUMN',   @level2name = N'Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Status Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Profile',
   @level2type = N'COLUMN',   @level2name = N'Status_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Profile',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Profile',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Profile',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Profile',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Profile',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Profile',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Profile',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Profile',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Profile',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Profile',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Profile',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Questionnaire Template for an assessment',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment_Questionnaire';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Questionnaire ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment_Questionnaire',
   @level2type = N'COLUMN',   @level2name = N'Questionnaire_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Questionnaire No',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment_Questionnaire',
   @level2type = N'COLUMN',   @level2name = N'Questionnaire_No';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Title',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment_Questionnaire',
   @level2type = N'COLUMN',   @level2name = N'Title';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Description',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment_Questionnaire',
   @level2type = N'COLUMN',   @level2name = N'Description';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Questionnaire URL',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment_Questionnaire',
   @level2type = N'COLUMN',   @level2name = N'Questionnaire_URL';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Questionnaire Answer URL',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment_Questionnaire',
   @level2type = N'COLUMN',   @level2name = N'Questionnaire_Answer_URL';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment_Questionnaire',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment_Questionnaire',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment_Questionnaire',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment_Questionnaire',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment_Questionnaire',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment_Questionnaire',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment_Questionnaire',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment_Questionnaire',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment_Questionnaire',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment_Questionnaire',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment_Questionnaire',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'A question or statement about an area of concern to be discussed, assessed or detailed',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment_Question';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Question ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment_Question',
   @level2type = N'COLUMN',   @level2name = N'Question_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Question Sequence',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment_Question',
   @level2type = N'COLUMN',   @level2name = N'Question_Sequence';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Question Text',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment_Question',
   @level2type = N'COLUMN',   @level2name = N'Question_Text';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Questionnaire ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment_Question',
   @level2type = N'COLUMN',   @level2name = N'Questionnaire_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Base Type Complex Type single-select, multi-select radio button, date-time if calendar, free text, option',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment_Question',
   @level2type = N'COLUMN',   @level2name = N'Answer_Type_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment_Question',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment_Question',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment_Question',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment_Question',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment_Question',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment_Question',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment_Question',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment_Question',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment_Question',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment_Question',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment_Question',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'An answer to an assessment question or concern',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment_Answer';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Answer ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment_Answer',
   @level2type = N'COLUMN',   @level2name = N'Answer_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Assessment ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment_Answer',
   @level2type = N'COLUMN',   @level2name = N'Assessment_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Question ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment_Answer',
   @level2type = N'COLUMN',   @level2name = N'Question_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Answer Value',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment_Answer',
   @level2type = N'COLUMN',   @level2name = N'AnswerValue';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment_Answer',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment_Answer',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment_Answer',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment_Answer',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment_Answer',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment_Answer',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment_Answer',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment_Answer',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment_Answer',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment_Answer',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment_Answer',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'An evaluation, appraisal, or assessment of something or someone',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Assessment ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment',
   @level2type = N'COLUMN',   @level2name = N'Assessment_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Type ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment',
   @level2type = N'COLUMN',   @level2name = N'Type_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Alternate ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment',
   @level2type = N'COLUMN',   @level2name = N'Alternate_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Description',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment',
   @level2type = N'COLUMN',   @level2name = N'Description';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Questionnaire ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment',
   @level2type = N'COLUMN',   @level2name = N'Questionnaire_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Case ID... External reference to (Management) Case',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment',
   @level2type = N'COLUMN',   @level2name = N'Case_ID';

EXECUTE sp_addextendedproperty
   @name = 'X_Reference', @value = 'Case ID... External reference to (Management) Case',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment',
   @level2type = N'COLUMN',   @level2name = N'Case_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Subject ID... External reference to (Entity) Person',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment',
   @level2type = N'COLUMN',   @level2name = N'Subject_ID';

EXECUTE sp_addextendedproperty
   @name = 'X_Reference', @value = 'Subject ID... External reference to (Entity) Person',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment',
   @level2type = N'COLUMN',   @level2name = N'Subject_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment',
   @level2type = N'COLUMN',   @level2name = N'Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Status Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment',
   @level2type = N'COLUMN',   @level2name = N'Status_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Assessment',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Identify and describe a kind of answer',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Answer_Type';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Type ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Answer_Type',
   @level2type = N'COLUMN',   @level2name = N'Type_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Description',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Answer_Type',
   @level2type = N'COLUMN',   @level2name = N'Description';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Category ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Answer_Type',
   @level2type = N'COLUMN',   @level2name = N'Category_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code Set Name',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Answer_Type',
   @level2type = N'COLUMN',   @level2name = N'CodeSet_Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Answer_Type',
   @level2type = N'COLUMN',   @level2name = N'Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Status Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Answer_Type',
   @level2type = N'COLUMN',   @level2name = N'Status_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Answer_Type',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Answer_Type',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Answer_Type',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Answer_Type',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Answer_Type',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Answer_Type',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Answer_Type',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Answer_Type',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Answer_Type',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Answer_Type',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Answer_Type',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Identify and describe a kind of report or summary',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Report_Type';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Type ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Report_Type',
   @level2type = N'COLUMN',   @level2name = N'Type_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Description',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Report_Type',
   @level2type = N'COLUMN',   @level2name = N'Description';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Category ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Report_Type',
   @level2type = N'COLUMN',   @level2name = N'Category_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code Set Name',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Report_Type',
   @level2type = N'COLUMN',   @level2name = N'CodeSet_Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Report_Type',
   @level2type = N'COLUMN',   @level2name = N'Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Status Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Report_Type',
   @level2type = N'COLUMN',   @level2name = N'Status_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Report_Type',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Report_Type',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Report_Type',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Report_Type',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Report_Type',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Report_Type',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Report_Type',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Report_Type',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Report_Type',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Report_Type',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Report_Type',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Investigation or case details collected as of a particular date to be reported to an Authority',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Report';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Case Report ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Report',
   @level2type = N'COLUMN',   @level2name = N'Case_Report_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Report Date',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Report',
   @level2type = N'COLUMN',   @level2name = N'Report_Date';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Type ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Report',
   @level2type = N'COLUMN',   @level2name = N'Type_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Description',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Report',
   @level2type = N'COLUMN',   @level2name = N'Description';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Date of the beginning of the illness.  Reported date of the onset of symptoms of the condition being reported to the public health system.',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Report',
   @level2type = N'COLUMN',   @level2name = N'Illness_Onset_Date';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Date at which the disease or condition ends.',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Report',
   @level2type = N'COLUMN',   @level2name = N'Illness_End_Date';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Length of time this subject had this disease or condition.',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Report',
   @level2type = N'COLUMN',   @level2name = N'Illness_Duration';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Unit of time used to describe the length of the illness or condition.',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Report',
   @level2type = N'COLUMN',   @level2name = N'Illness_Duration_Unit_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Indicates whether the subject was pregnant at the time of the event.',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Report',
   @level2type = N'COLUMN',   @level2name = N'Pregnancy_Status_Flag_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Diagnosis Date',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Report',
   @level2type = N'COLUMN',   @level2name = N'Diagnosis_Date';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Was subject hospitalized because of this event?',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Report',
   @level2type = N'COLUMN',   @level2name = N'Hospitalized_Flag_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Subject's duration of stay at the hospital for the condition covered by the investigation.',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Report',
   @level2type = N'COLUMN',   @level2name = N'Hospital_Stay_InDays';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Subject’s most recent admission date to the hospital for the condition covered by the investigation.',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Report',
   @level2type = N'COLUMN',   @level2name = N'Admission_Date';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Subject’s most recent discharge date from the hospital for the condition covered by the investigation.',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Report',
   @level2type = N'COLUMN',   @level2name = N'Discharged_Date';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Place or location where subject may had been exposed to the virus or disease',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Report',
   @level2type = N'COLUMN',   @level2name = N'Exposure_Setting_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Condition or event that constitutes the reason the notification is being sent.',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Report',
   @level2type = N'COLUMN',   @level2name = N'Condition_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Did the subject die from this illness or complications of this illness?',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Report',
   @level2type = N'COLUMN',   @level2name = N'Subject_Died_Flag_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'If the subject died from this illness or complications associated with this illness, indicate the date of death.',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Report',
   @level2type = N'COLUMN',   @level2name = N'Deceased_Date';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Indication of where the disease/condition was likely acquired.',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Report',
   @level2type = N'COLUMN',   @level2name = N'Deceased_Source_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'If the disease or condition was imported, indicates the country in which the disease was likely acquired.',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Report',
   @level2type = N'COLUMN',   @level2name = N'Imported_Country_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'If the disease or condition was imported, indicates the state in which the disease was likely acquired.',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Report',
   @level2type = N'COLUMN',   @level2name = N'Imported_State_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'If the disease or condition was imported, indicates the city in which the disease was likely acquired.',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Report',
   @level2type = N'COLUMN',   @level2name = N'Imported_City_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'If the disease or condition was imported, contains the county of origin of the disease or condition..',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Report',
   @level2type = N'COLUMN',   @level2name = N'Imported_County_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Subject age at time of case investigation',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Report',
   @level2type = N'COLUMN',   @level2name = N'Age_At_Case';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Subject age unit at time of case investigation',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Report',
   @level2type = N'COLUMN',   @level2name = N'Age_Unit_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Case State ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Report',
   @level2type = N'COLUMN',   @level2name = N'Case_State_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Case Legacy ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Report',
   @level2type = N'COLUMN',   @level2name = N'Case_Legacy_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Case ID... External reference to (Management) Case',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Report',
   @level2type = N'COLUMN',   @level2name = N'Case_ID';

EXECUTE sp_addextendedproperty
   @name = 'X_Reference', @value = 'Case ID... External reference to (Management) Case',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Report',
   @level2type = N'COLUMN',   @level2name = N'Case_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Subject ID... External reference to (Entity) Person',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Report',
   @level2type = N'COLUMN',   @level2name = N'Subject_ID';

EXECUTE sp_addextendedproperty
   @name = 'X_Reference', @value = 'Subject ID... External reference to (Entity) Person',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Report',
   @level2type = N'COLUMN',   @level2name = N'Subject_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Report',
   @level2type = N'COLUMN',   @level2name = N'Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Status Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Report',
   @level2type = N'COLUMN',   @level2name = N'Status_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Report',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Report',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Report',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Report',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Report',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Report',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Report',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Report',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Report',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Report',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Report',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Identify and describe a kind of travel purpose',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Travel_Purpose_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Travel_Purpose_Code',
   @level2type = N'COLUMN',   @level2name = N'Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Description',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Travel_Purpose_Code',
   @level2type = N'COLUMN',   @level2name = N'Description';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Category ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Travel_Purpose_Code',
   @level2type = N'COLUMN',   @level2name = N'Category_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code Set Name',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Travel_Purpose_Code',
   @level2type = N'COLUMN',   @level2name = N'CodeSet_Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Travel_Purpose_Code',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Travel_Purpose_Code',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Travel_Purpose_Code',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Travel_Purpose_Code',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Travel_Purpose_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Travel_Purpose_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Travel_Purpose_Code',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Travel_Purpose_Code',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Travel_Purpose_Code',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Travel_Purpose_Code',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Travel_Purpose_Code',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Details about the location of an exposure to be reported to an Authority',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Exposure_Location_Report';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Exposure Report ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Exposure_Location_Report',
   @level2type = N'COLUMN',   @level2name = N'Exposure_Report_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Country Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Exposure_Location_Report',
   @level2type = N'COLUMN',   @level2name = N'Country_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'State Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Exposure_Location_Report',
   @level2type = N'COLUMN',   @level2name = N'State_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'City Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Exposure_Location_Report',
   @level2type = N'COLUMN',   @level2name = N'City_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'County Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Exposure_Location_Report',
   @level2type = N'COLUMN',   @level2name = N'County_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Case Report ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Exposure_Location_Report',
   @level2type = N'COLUMN',   @level2name = N'Case_Report_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Exposure_Location_Report',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Exposure_Location_Report',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Exposure_Location_Report',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Exposure_Location_Report',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Exposure_Location_Report',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Exposure_Location_Report',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Exposure_Location_Report',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Exposure_Location_Report',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Exposure_Location_Report',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Exposure_Location_Report',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Exposure_Location_Report',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Identify and describe a geographical area in which an organization, person, or object has a specific range of authority',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Jurisdiction_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Jurisdiction_Code',
   @level2type = N'COLUMN',   @level2name = N'Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Description',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Jurisdiction_Code',
   @level2type = N'COLUMN',   @level2name = N'Description';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Category ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Jurisdiction_Code',
   @level2type = N'COLUMN',   @level2name = N'Category_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code Set Name',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Jurisdiction_Code',
   @level2type = N'COLUMN',   @level2name = N'CodeSet_Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Jurisdiction_Code',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Jurisdiction_Code',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Jurisdiction_Code',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Jurisdiction_Code',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Jurisdiction_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Jurisdiction_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Jurisdiction_Code',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Jurisdiction_Code',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Jurisdiction_Code',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Jurisdiction_Code',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Jurisdiction_Code',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Identify and describe codes for a standard measure in terms of which quantities may be express',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Unit_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Unit_Code',
   @level2type = N'COLUMN',   @level2name = N'Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Description',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Unit_Code',
   @level2type = N'COLUMN',   @level2name = N'Description';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Category ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Unit_Code',
   @level2type = N'COLUMN',   @level2name = N'Category_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code Set Name',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Unit_Code',
   @level2type = N'COLUMN',   @level2name = N'CodeSet_Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Unit_Code',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Unit_Code',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Unit_Code',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Unit_Code',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Unit_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Unit_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Unit_Code',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Unit_Code',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Unit_Code',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Unit_Code',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Unit_Code',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Identify and describe an event',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Event_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Event_Code',
   @level2type = N'COLUMN',   @level2name = N'Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Description',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Event_Code',
   @level2type = N'COLUMN',   @level2name = N'Description';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Category ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Event_Code',
   @level2type = N'COLUMN',   @level2name = N'Category_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code Set Name',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Event_Code',
   @level2type = N'COLUMN',   @level2name = N'CodeSet_Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Notifiable Indicator',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Event_Code',
   @level2type = N'COLUMN',   @level2name = N'Notifiable_Indicator';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Event_Code',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Event_Code',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Event_Code',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Event_Code',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Event_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Event_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Event_Code',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Event_Code',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Event_Code',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Event_Code',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Event_Code',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Identify and describe a kind of sexual orientation a degree of voluntary choice',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Sexual_Preference_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Sexual_Preference_Code',
   @level2type = N'COLUMN',   @level2name = N'Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Description',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Sexual_Preference_Code',
   @level2type = N'COLUMN',   @level2name = N'Description';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Category ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Sexual_Preference_Code',
   @level2type = N'COLUMN',   @level2name = N'Category_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code Set Name',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Sexual_Preference_Code',
   @level2type = N'COLUMN',   @level2name = N'CodeSet_Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Sexual_Preference_Code',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Sexual_Preference_Code',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Sexual_Preference_Code',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Sexual_Preference_Code',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Sexual_Preference_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Sexual_Preference_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Sexual_Preference_Code',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Sexual_Preference_Code',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Sexual_Preference_Code',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Sexual_Preference_Code',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Sexual_Preference_Code',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Identify and describe an indicator, Yes (true), No (false), or unknown',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Indicator_Flag_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Indicator_Flag_Code',
   @level2type = N'COLUMN',   @level2name = N'Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Description',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Indicator_Flag_Code',
   @level2type = N'COLUMN',   @level2name = N'Description';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Category ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Indicator_Flag_Code',
   @level2type = N'COLUMN',   @level2name = N'Category_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code Set Name',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Indicator_Flag_Code',
   @level2type = N'COLUMN',   @level2name = N'CodeSet_Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Indicator_Flag_Code',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Indicator_Flag_Code',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Indicator_Flag_Code',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Indicator_Flag_Code',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Indicator_Flag_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Indicator_Flag_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Indicator_Flag_Code',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Indicator_Flag_Code',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Indicator_Flag_Code',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Indicator_Flag_Code',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Indicator_Flag_Code',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Identify and describe a kind of encounter or contact',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Contact_Type';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Type ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Contact_Type',
   @level2type = N'COLUMN',   @level2name = N'Type_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Description',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Contact_Type',
   @level2type = N'COLUMN',   @level2name = N'Description';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Category ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Contact_Type',
   @level2type = N'COLUMN',   @level2name = N'Category_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code Set Name',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Contact_Type',
   @level2type = N'COLUMN',   @level2name = N'CodeSet_Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Contact_Type',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Contact_Type',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Contact_Type',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Contact_Type',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Contact_Type',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Contact_Type',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Contact_Type',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Contact_Type',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Contact_Type',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Contact_Type',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Contact_Type',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Details about an encounter of a person with another or a situation',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Contact_Report';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Contact Report ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Contact_Report',
   @level2type = N'COLUMN',   @level2name = N'Contact_Report_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Report Date',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Contact_Report',
   @level2type = N'COLUMN',   @level2name = N'Report_Date';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Contacted Date',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Contact_Report',
   @level2type = N'COLUMN',   @level2name = N'Contacted_Date';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'During the 2-6 weeks prior to the onset of symptoms, type of contact the subject had with a person with confirmed or suspected virus infection?',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Contact_Report',
   @level2type = N'COLUMN',   @level2name = N'Contact_Type_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Contact Type Other Flag ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Contact_Report',
   @level2type = N'COLUMN',   @level2name = N'Contact_Type_Other_Flag_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Contact Type Other Text',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Contact_Report',
   @level2type = N'COLUMN',   @level2name = N'Contact_Type_Other_Text';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'During the 2-6 weeks prior to the onset of symptoms, answer (Yes, No, Unknown) for each type of contact the subject had with a person with confirmed or suspected virus infection',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Contact_Report',
   @level2type = N'COLUMN',   @level2name = N'Contact_Flag_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Specify if this case Epidemiologically-linked to another confirmed or probable case of virus',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Contact_Report',
   @level2type = N'COLUMN',   @level2name = N'Epidemiology_Linked_Flag_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'During the 2-6 weeks prior to the onset of symptoms, was the subject in contact with a person with confirmed or suspected virus infection?',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Contact_Report',
   @level2type = N'COLUMN',   @level2name = N'Case_Linked_Flag_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Child Care Linked Flag ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Contact_Report',
   @level2type = N'COLUMN',   @level2name = N'Child_Care_Linked_Flag_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Was there an identified virus case in the childcare facility?',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Contact_Report',
   @level2type = N'COLUMN',   @level2name = N'Child_Care_Case_Flag_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'What is/was the subject's sexual preference?',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Contact_Report',
   @level2type = N'COLUMN',   @level2name = N'Sexual_Preference_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sexual Partner Male Total',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Contact_Report',
   @level2type = N'COLUMN',   @level2name = N'Sexual_Partner_Male_Total';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sexual Partner Female Total',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Contact_Report',
   @level2type = N'COLUMN',   @level2name = N'Sexual_Partner_Female_Total';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'During the 2-6 weeks prior to the onset of symptoms, did the subject inject drugs not prescribed by a doctor?',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Contact_Report',
   @level2type = N'COLUMN',   @level2name = N'Drug_Used_Flag_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'During the 2-6 weeks prior to the onset of symptoms, did the subject use street drugs but not inject?',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Contact_Report',
   @level2type = N'COLUMN',   @level2name = N'Drug_Street_Used_Flag_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Traveled Flag ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Contact_Report',
   @level2type = N'COLUMN',   @level2name = N'Traveled_Flag_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Travel Detail ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Contact_Report',
   @level2type = N'COLUMN',   @level2name = N'Travel_Detail_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Outbreak Source Flag ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Contact_Report',
   @level2type = N'COLUMN',   @level2name = N'Outbreak_Source_Flag_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Subject is associated with a foodborne outbreak that is associated with an infected food handler?',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Contact_Report',
   @level2type = N'COLUMN',   @level2name = N'Outbreak_Foodborne_Flag_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Outbreak Food Item Text',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Contact_Report',
   @level2type = N'COLUMN',   @level2name = N'Outbreak_Food_Item_Text';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Subject is associated with a foodborne outbreak that is associated with an infected food handler?',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Contact_Report',
   @level2type = N'COLUMN',   @level2name = N'Outbreak_Waterborne_Flag_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Subject is associated with an outbreak that does not have an identified source?',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Contact_Report',
   @level2type = N'COLUMN',   @level2name = N'Outbreak_Unidentified_Flag_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'During the 2 weeks prior to the onset of symptoms or while ill, was the subject employed as a food handler?',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Contact_Report',
   @level2type = N'COLUMN',   @level2name = N'Food_Handler_Flag_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Case ID of subject that was contacted... External reference to (Management) Case',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Contact_Report',
   @level2type = N'COLUMN',   @level2name = N'Case_ID';

EXECUTE sp_addextendedproperty
   @name = 'X_Reference', @value = 'Case ID of subject that was contacted... External reference to (Management) Case',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Contact_Report',
   @level2type = N'COLUMN',   @level2name = N'Case_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Subject Person ID that was contacted... External reference to (Entity) Person',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Contact_Report',
   @level2type = N'COLUMN',   @level2name = N'Subject_ID';

EXECUTE sp_addextendedproperty
   @name = 'X_Reference', @value = 'Subject Person ID that was contacted... External reference to (Entity) Person',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Contact_Report',
   @level2type = N'COLUMN',   @level2name = N'Subject_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Contact_Report',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Contact_Report',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Contact_Report',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Contact_Report',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Contact_Report',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Contact_Report',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Contact_Report',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Contact_Report',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Contact_Report',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Contact_Report',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Contact_Report',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Identify and describe a kind of exposure setting',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Exposure_Setting_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Exposure_Setting_Code',
   @level2type = N'COLUMN',   @level2name = N'Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Description',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Exposure_Setting_Code',
   @level2type = N'COLUMN',   @level2name = N'Description';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Category ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Exposure_Setting_Code',
   @level2type = N'COLUMN',   @level2name = N'Category_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code Set Name',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Exposure_Setting_Code',
   @level2type = N'COLUMN',   @level2name = N'CodeSet_Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Exposure_Setting_Code',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Exposure_Setting_Code',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Exposure_Setting_Code',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Exposure_Setting_Code',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Exposure_Setting_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Exposure_Setting_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Exposure_Setting_Code',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Exposure_Setting_Code',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Exposure_Setting_Code',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Exposure_Setting_Code',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Exposure_Setting_Code',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Investigation or case details about a virus collected and reported on a given date to an Authority',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Viral_Report';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Viral Report ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Viral_Report',
   @level2type = N'COLUMN',   @level2name = N'Viral_Report_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Report Date',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Viral_Report',
   @level2type = N'COLUMN',   @level2name = N'Report_Date';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Viral_Report',
   @level2type = N'COLUMN',   @level2name = N'Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Status Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Viral_Report',
   @level2type = N'COLUMN',   @level2name = N'Status_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Viral_Report',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Viral_Report',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Viral_Report',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Viral_Report',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Viral_Report',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Viral_Report',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Viral_Report',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Viral_Report',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Viral_Report',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Viral_Report',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Viral_Report',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Identify and describe a Location where the patient was exposed to the illness',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Transmission_Setting_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Transmission_Setting_Code',
   @level2type = N'COLUMN',   @level2name = N'Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Description',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Transmission_Setting_Code',
   @level2type = N'COLUMN',   @level2name = N'Description';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Category ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Transmission_Setting_Code',
   @level2type = N'COLUMN',   @level2name = N'Category_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code Set Name',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Transmission_Setting_Code',
   @level2type = N'COLUMN',   @level2name = N'CodeSet_Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Transmission_Setting_Code',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Transmission_Setting_Code',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Transmission_Setting_Code',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Transmission_Setting_Code',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Transmission_Setting_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Transmission_Setting_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Transmission_Setting_Code',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Transmission_Setting_Code',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Transmission_Setting_Code',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Transmission_Setting_Code',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Transmission_Setting_Code',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Identify and describe a Process by which the case first identified',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Detection_Method_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Detection_Method_Code',
   @level2type = N'COLUMN',   @level2name = N'Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Description',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Detection_Method_Code',
   @level2type = N'COLUMN',   @level2name = N'Description';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Category ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Detection_Method_Code',
   @level2type = N'COLUMN',   @level2name = N'Category_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code Set Name',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Detection_Method_Code',
   @level2type = N'COLUMN',   @level2name = N'CodeSet_Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Detection_Method_Code',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Detection_Method_Code',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Detection_Method_Code',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Detection_Method_Code',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Detection_Method_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Detection_Method_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Detection_Method_Code',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Detection_Method_Code',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Detection_Method_Code',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Detection_Method_Code',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Detection_Method_Code',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Identify and describe the state of an investigation (open or close)',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Investigation_Stattus_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Investigation_Stattus_Code',
   @level2type = N'COLUMN',   @level2name = N'Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Description',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Investigation_Stattus_Code',
   @level2type = N'COLUMN',   @level2name = N'Description';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Category ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Investigation_Stattus_Code',
   @level2type = N'COLUMN',   @level2name = N'Category_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code Set Name',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Investigation_Stattus_Code',
   @level2type = N'COLUMN',   @level2name = N'CodeSet_Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Investigation_Stattus_Code',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Investigation_Stattus_Code',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Investigation_Stattus_Code',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Investigation_Stattus_Code',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Investigation_Stattus_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Investigation_Stattus_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Investigation_Stattus_Code',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Investigation_Stattus_Code',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Investigation_Stattus_Code',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Investigation_Stattus_Code',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Investigation_Stattus_Code',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Identify and describe an Answer list for how the case should be classified by source',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Classification_Exposure_Source_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Classification_Exposure_Source_Code',
   @level2type = N'COLUMN',   @level2name = N'Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Description',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Classification_Exposure_Source_Code',
   @level2type = N'COLUMN',   @level2name = N'Description';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Category ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Classification_Exposure_Source_Code',
   @level2type = N'COLUMN',   @level2name = N'Category_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Code Set Name',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Classification_Exposure_Source_Code',
   @level2type = N'COLUMN',   @level2name = N'CodeSet_Name';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Tenant ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Classification_Exposure_Source_Code',
   @level2type = N'COLUMN',   @level2name = N'Tenant_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Data Owner ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Classification_Exposure_Source_Code',
   @level2type = N'COLUMN',   @level2name = N'Data_Owner_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Agency Reporting ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Classification_Exposure_Source_Code',
   @level2type = N'COLUMN',   @level2name = N'Agency_Reporting_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sequence Number',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Classification_Exposure_Source_Code',
   @level2type = N'COLUMN',   @level2name = N'Sequence_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Classification_Exposure_Source_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Effective End Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Classification_Exposure_Source_Code',
   @level2type = N'COLUMN',   @level2name = N'Effective_End_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Version Number',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Classification_Exposure_Source_Code',
   @level2type = N'COLUMN',   @level2name = N'Version_Number';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Created Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Classification_Exposure_Source_Code',
   @level2type = N'COLUMN',   @level2name = N'Created_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Updated Date Time',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Classification_Exposure_Source_Code',
   @level2type = N'COLUMN',   @level2name = N'Updated_DateTime';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Record Status Code ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Classification_Exposure_Source_Code',
   @level2type = N'COLUMN',   @level2name = N'Record_Status_Code_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Session Updated ID',
   @level0type = N'SCHEMA',   @level0name = N'Surveillance',
   @level1type = N'TABLE',    @level1name = N'Case_Classification_Exposure_Source_Code',
   @level2type = N'COLUMN',   @level2name = N'Session_Updated_ID';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Surveillance ',
   @level0type = N'SCHEMA',   @level0name = N'cd2',
   @level1type = N'TABLE',    @level1name = N'Surveillance';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Complication Report',
   @level0type = N'SCHEMA',   @level0name = N'cd2',
   @level1type = N'TABLE',    @level1name = N'Surveillance',
   @level2type = N'COLUMN',   @level2name = N'Complication_Report';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Reporting Criteria Code',
   @level0type = N'SCHEMA',   @level0name = N'cd2',
   @level1type = N'TABLE',    @level1name = N'Surveillance',
   @level2type = N'COLUMN',   @level2name = N'Reporting_Criteria_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Reporting Source Type',
   @level0type = N'SCHEMA',   @level0name = N'cd2',
   @level1type = N'TABLE',    @level1name = N'Surveillance',
   @level2type = N'COLUMN',   @level2name = N'Reporting_Source_Type';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Result Status Code',
   @level0type = N'SCHEMA',   @level0name = N'cd2',
   @level1type = N'TABLE',    @level1name = N'Surveillance',
   @level2type = N'COLUMN',   @level2name = N'Result_Status_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Case Class Status Code',
   @level0type = N'SCHEMA',   @level0name = N'cd2',
   @level1type = N'TABLE',    @level1name = N'Surveillance',
   @level2type = N'COLUMN',   @level2name = N'Case_Class_Status_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Case Transmission Mode Code',
   @level0type = N'SCHEMA',   @level0name = N'cd2',
   @level1type = N'TABLE',    @level1name = N'Surveillance',
   @level2type = N'COLUMN',   @level2name = N'Case_Transmission_Mode_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Exposure Report',
   @level0type = N'SCHEMA',   @level0name = N'cd2',
   @level1type = N'TABLE',    @level1name = N'Surveillance',
   @level2type = N'COLUMN',   @level2name = N'Exposure_Report';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Profile Type',
   @level0type = N'SCHEMA',   @level0name = N'cd2',
   @level1type = N'TABLE',    @level1name = N'Surveillance',
   @level2type = N'COLUMN',   @level2name = N'Profile_Type';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Assessment Type',
   @level0type = N'SCHEMA',   @level0name = N'cd2',
   @level1type = N'TABLE',    @level1name = N'Surveillance',
   @level2type = N'COLUMN',   @level2name = N'Assessment_Type';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Travel Detail',
   @level0type = N'SCHEMA',   @level0name = N'cd2',
   @level1type = N'TABLE',    @level1name = N'Surveillance',
   @level2type = N'COLUMN',   @level2name = N'Travel_Detail';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Profile Condition',
   @level0type = N'SCHEMA',   @level0name = N'cd2',
   @level1type = N'TABLE',    @level1name = N'Surveillance',
   @level2type = N'COLUMN',   @level2name = N'Profile_Condition';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Profile',
   @level0type = N'SCHEMA',   @level0name = N'cd2',
   @level1type = N'TABLE',    @level1name = N'Surveillance',
   @level2type = N'COLUMN',   @level2name = N'Profile';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Assessment Questionnaire',
   @level0type = N'SCHEMA',   @level0name = N'cd2',
   @level1type = N'TABLE',    @level1name = N'Surveillance',
   @level2type = N'COLUMN',   @level2name = N'Assessment_Questionnaire';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Assessment Question',
   @level0type = N'SCHEMA',   @level0name = N'cd2',
   @level1type = N'TABLE',    @level1name = N'Surveillance',
   @level2type = N'COLUMN',   @level2name = N'Assessment_Question';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Assessment Answer',
   @level0type = N'SCHEMA',   @level0name = N'cd2',
   @level1type = N'TABLE',    @level1name = N'Surveillance',
   @level2type = N'COLUMN',   @level2name = N'Assessment_Answer';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Assessment',
   @level0type = N'SCHEMA',   @level0name = N'cd2',
   @level1type = N'TABLE',    @level1name = N'Surveillance',
   @level2type = N'COLUMN',   @level2name = N'Assessment';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Answer Type',
   @level0type = N'SCHEMA',   @level0name = N'cd2',
   @level1type = N'TABLE',    @level1name = N'Surveillance',
   @level2type = N'COLUMN',   @level2name = N'Answer_Type';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Report Type',
   @level0type = N'SCHEMA',   @level0name = N'cd2',
   @level1type = N'TABLE',    @level1name = N'Surveillance',
   @level2type = N'COLUMN',   @level2name = N'Report_Type';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Case Report',
   @level0type = N'SCHEMA',   @level0name = N'cd2',
   @level1type = N'TABLE',    @level1name = N'Surveillance',
   @level2type = N'COLUMN',   @level2name = N'Case_Report';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Travel Purpose Code',
   @level0type = N'SCHEMA',   @level0name = N'cd2',
   @level1type = N'TABLE',    @level1name = N'Surveillance',
   @level2type = N'COLUMN',   @level2name = N'Travel_Purpose_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Exposure Location Report',
   @level0type = N'SCHEMA',   @level0name = N'cd2',
   @level1type = N'TABLE',    @level1name = N'Surveillance',
   @level2type = N'COLUMN',   @level2name = N'Exposure_Location_Report';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Jurisdiction Code',
   @level0type = N'SCHEMA',   @level0name = N'cd2',
   @level1type = N'TABLE',    @level1name = N'Surveillance',
   @level2type = N'COLUMN',   @level2name = N'Jurisdiction_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Unit Code',
   @level0type = N'SCHEMA',   @level0name = N'cd2',
   @level1type = N'TABLE',    @level1name = N'Surveillance',
   @level2type = N'COLUMN',   @level2name = N'Unit_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Event Code',
   @level0type = N'SCHEMA',   @level0name = N'cd2',
   @level1type = N'TABLE',    @level1name = N'Surveillance',
   @level2type = N'COLUMN',   @level2name = N'Event_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Sexual Preference Code',
   @level0type = N'SCHEMA',   @level0name = N'cd2',
   @level1type = N'TABLE',    @level1name = N'Surveillance',
   @level2type = N'COLUMN',   @level2name = N'Sexual_Preference_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Indicator Flag Code',
   @level0type = N'SCHEMA',   @level0name = N'cd2',
   @level1type = N'TABLE',    @level1name = N'Surveillance',
   @level2type = N'COLUMN',   @level2name = N'Indicator_Flag_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Contact Type',
   @level0type = N'SCHEMA',   @level0name = N'cd2',
   @level1type = N'TABLE',    @level1name = N'Surveillance',
   @level2type = N'COLUMN',   @level2name = N'Contact_Type';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Contact Report',
   @level0type = N'SCHEMA',   @level0name = N'cd2',
   @level1type = N'TABLE',    @level1name = N'Surveillance',
   @level2type = N'COLUMN',   @level2name = N'Contact_Report';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Exposure Setting Code',
   @level0type = N'SCHEMA',   @level0name = N'cd2',
   @level1type = N'TABLE',    @level1name = N'Surveillance',
   @level2type = N'COLUMN',   @level2name = N'Exposure_Setting_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Viral Report',
   @level0type = N'SCHEMA',   @level0name = N'cd2',
   @level1type = N'TABLE',    @level1name = N'Surveillance',
   @level2type = N'COLUMN',   @level2name = N'Viral_Report';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Transmission Setting Code',
   @level0type = N'SCHEMA',   @level0name = N'cd2',
   @level1type = N'TABLE',    @level1name = N'Surveillance',
   @level2type = N'COLUMN',   @level2name = N'Transmission_Setting_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Detection Method Code',
   @level0type = N'SCHEMA',   @level0name = N'cd2',
   @level1type = N'TABLE',    @level1name = N'Surveillance',
   @level2type = N'COLUMN',   @level2name = N'Detection_Method_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Case Investigation Stattus Code',
   @level0type = N'SCHEMA',   @level0name = N'cd2',
   @level1type = N'TABLE',    @level1name = N'Surveillance',
   @level2type = N'COLUMN',   @level2name = N'Case_Investigation_Stattus_Code';

EXECUTE sp_addextendedproperty
   @name = 'Description', @value = 'Case Classification Exposure Source Code',
   @level0type = N'SCHEMA',   @level0name = N'cd2',
   @level1type = N'TABLE',    @level1name = N'Surveillance',
   @level2type = N'COLUMN',   @level2name = N'Case_Classification_Exposure_Source_Code';

