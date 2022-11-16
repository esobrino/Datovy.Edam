
SET NOCOUNT ON
INSERT INTO IdBase.IdBaseStatus (
   IdNo, IdString, Description) VALUES
   (0, 'Active','Active'),
   (1, 'Inactive','Inactive'),
   (2, 'Expired','Expired'),
   (3, 'Invalid','Invalid')
GO

INSERT INTO IdBase.IdBaseGroups (
   IdNo, Description, SpanishDescription) VALUES 
   (0, 'Personal Ids', 'Id. Personal'),
   (1, 'Credit Cards', 'Tarjeta de Créditos'),
   (2, 'Phones', 'Teléfonos'),
   (3, 'Patient Record', 'Record de Paciente'),
   (4, 'Demographics', 'Demográficos'),
   (5, 'Mailing Address', 'Dirección Postal'),
   (6, 'Billing Address', 'Dirección Facturación'),
   (7, 'Healthcare', 'Salud'),
   (8, 'Resource', 'Recurso'),
   (9, 'Resource Parameter', 'Parámetro de Recurso')
GO

INSERT INTO IdBase.IdBasePrefixCounters (
   OrganizationId, PrefixId, IdString, Description, IdCount) VALUES
   ('Demo', 'CP','CaseFilePosting','CaseFilePosting',-1),
   ('Demo', 'MI','MediaIdentification','MediaIdentification',-1),
   ('Demo', 'DC','DocumentId','Document Id.',-1),
   ('Demo', 'RF','ReferenceId','Reference Id.',-1),

   ('Demo', 'CL','ClaimId','Claim Id.',-1),
   ('Demo', 'FI','CaseFileClaimId','Case File Claim Id.',-1),
   ('Demo', 'UM','UserMembershipId','User Membership Id.',-1),
   ('Demo', 'TK','TaskId','Task Id.',-1),

   ('Demo', 'JO','JoinRequestId','Join Request Id.',-1),
   ('Demo', 'EG','MemberId','Entity Group Member Id.',-1),
   ('Demo', 'ES','SecretId','Entity Secret Id.',-1),
   ('Demo', 'EU','EntityUrlId','Entity URL Id.',-1)
GO

INSERT INTO IdBase.IdBaseCounters (IdNo, IdString, Description, IdCount) VALUES 
   ( 0, 'EntityNo','Entity Unique No', 0),
   ( 1, 'AddressNo','Entity Unique Address No', 0),
   ( 2, 'NameNo','Entity Unique Name No', 0),
   ( 3, 'EDISubmissionNo','EDI Document Submission No', 0),
   ( 4, 'ResourceObject','Resource Object No', 0),
   ( 5, 'AccountNo','Account Unique No', 0),
   ( 6, 'AccountKindNo','Account Kind Unique No', 0),
   ( 7, 'Centers','Center Unique No', 0),
   ( 8, 'EntityName','Entity Unique Name No', 0),
   ( 9, 'SystemUser','System User Unique No', 0),
   (10, 'ApplicationLog','Application Log Unique No', 0),
   (11, 'ApplicationSession','Application Session Unique No', 0),
   (12, 'BookingRequests','Booking Requests', 0),
   (13, 'DocumentNo','Document Record', 0),
   (14, 'DetailNo','Document Details', 0),
   (15, 'TransactionNo','Document Transactions', 0),
   (16, 'Resource','Resource Cataloged Item', 0),
   (17, 'ResourceCollections','Resource Collections', 0),
   (18, 'ResourceXmlDocuments','Resource Xml Documents', 0),
   (19, 'ResourceXmlDocColl','Resource Xml Documents Collection', 0),
   (20, 'IdNo','EntityId Number', 0),
   (21, 'PhoneNo','Entity Phone Number', 0),
   (22, 'EntityUrlNo','EntityId Url Number', 0),
   (23, 'CardNo','EntityId Credit Card Number', 0),
   (24, 'EntityUrlNo','Entity Url Number', 0),
   (25, 'DocumentNo','Document Number', 0),
   (26, 'JournalEntryNo','Journal Entry Number', 0),
   (27, 'EntryNoteNo','Entity Note Number', 0),
   (28, 'WorksheetEntryNo','Worksheet Entry Number', 0),
   (29, 'GroupNo','Document Details Groups', 0),
   (30, 'AccountNo','Human Resource Account No.', 0),
   (31, 'ProfileNo','Human Resource Account Profile No.', 0),
   (32, 'PeriodNo','Time-Period Period No.', 0),
   (33, 'DeviceNo','Device Registry No.', 0),
   (34, 'PresentationNo','Worksheets Presentation No.', 0),
   (35, 'Medias','Medias No.', 0),
   (36, 'ResourceParams','Resource Parameters', 28),
   (37, 'EventNo','Event Number', 0),
   (38, 'IdBaseId','Create a Unique Id', -1),
   (39, 'CaseFileDeliveryNo','Case File Delivery No.', 0),
   (40, 'EquipmentProfileNo','Equipment Profile No.', 0),
   (50, 'TaskNoteNo','Task Note No.', 0),
   (51, 'TaskNo','Task No.', 0)
GO

INSERT INTO IdBase.IdBaseExtensions (ExtensionNo,IdString,Description,Length,Template) VALUES 
   (0,'UnitNumber','Unit Number',10,'9999999999'),
   (1,'PhoneExtention','Phone Extention',4,'9999'),
   (2,'ExpirationDate','Expiration Date',4,'9999')
GO

INSERT INTO IdBase.IdBaseTypes (TypeNo,Description,Length,Template) VALUES
   (0,'Social Security',9,'999-99-9999'),
   (1,'Driver Licence No.',10,'9999999999'),
   (2,'Home Phone Number',10,'(999) 999-9999'),
   (3,'Work Place Phone Number',10,'(999) 999-9999'),
   (4,'Mobile Phone Number',10,'(999) 999-9999'),
   (5,'Faximile Number',10,'(999) 999-9999'),
   (6,'Pager Number',10,'(999) 999-9999'),
   (10,'Other Number',10,'(999) 999-9999'),

   (7,'VISA',15,'999999999999999'),
   (8,'Master Card',15,'999999999999999'),
   (12,'AMEX',15,'999999999999999'),
   (11,'Discovery',15,'999999999999999'),

   (9,'Healthcare Taxonomy Code',10,'999X99999X') --, 'HealthcareTaxonomyCodes')
GO

INSERT INTO IdBase.IdBaseGroupMembers (IdNo, GroupNo, TypeNo) VALUES 
   (  0, 0, 0),  -- SOC
   (  1, 0, 1),  -- LIC

-- Phones Id's
   (  2, 2, 2),  -- Home Phone Number
   (  3, 2, 3),  -- Work Place Phone
   (  4, 2, 4),  -- Mobile Phone Number
   (  5, 2, 5),  -- Faximile Number
   (  6, 2, 6),  -- Pager Number
   (  7, 2, 10), -- Other Number

-- Credit Cards Id's
   (  8, 1, 7),  -- VISA
   (  9, 1, 8),  -- Master Card
   ( 10, 1,10),  -- AMEX

-- Healthcare Id's
   ( 11, 7, 9)   -- Provider Taxonomy Code
GO

INSERT INTO IdBase.IdBaseTypeExtensions (TypeNo, ExtensionNo) VALUES 
   (3,1), -- Phone Extension
   (6,0) -- Pager Unit Number
GO
