
SET NOCOUNT ON
INSERT INTO Reference.ReferenceBaseTypes (
   IdNo, Description, SpanishDescription, ForceComposedName, ApplyToIndividual) VALUES
   ( -1,'Test User','Test User',0,1),
   (  0,'','',0,1),
   (  1,'Personal','Personal',1,1),
   (  2,'Administration','Administración',1,0),
   (  3,'Institution','Institución',0,0),
   (  4,'Corporate','Corporativo',0,0),
   (  5,'Government','Gobierno',0,0),
   (  6,'Member','Miembro',1,1),
   (  7,'Employee','Empleado',1,1),
   (  8,'Exchange','Intercambio',0,0),
   (  9,'Promotion','Promoción',0,0),

   ( 10,'Patient','Paciente',1,1),
   ( 11,'Business Partner','Compañero/a de Negocios',0,0),
   ( 12,'Center','Centro',0,0),
   ( 13,'Supplier - Vendor','Suplidor - Vendedor',0,0),
   ( 14,'Customer','Cliente',1,1),
   ( 15,'Bank','Banco',0,0),
   ( 17,'System User','Usuario del Sistema',1,1),

   ( 18,'Principal','Principal',0,0),
   ( 19,'Agency','Agencia',0,0),
   ( 20,'Organization','Organización',0,0),
   ( 21,'Service Account','Cuenta de Servicio',0,0),

   ( 22,'Associate','Asociado',0,0),
   ( 23,'Participant','Participante',0,0),
   ( 24,'Student','Estudiante',1,1),
   ( 25,'Professor','Profesor',1,1),
   ( 26,'Director','Director',1,1),
   ( 27,'Signator','Signatario',1,1),
   ( 28,'Instructor','Instructor',1,1),
   ( 29,'Visitor','Visitante',1,1),
   ( 30,'Inspector','Inspector',1,1),
   ( 31,'Observer','Observer',1,1),
   ( 32,'Sponsor','Auspiciador',1,1),
   ( 33,'Agent','Agente',1,1),
   ( 34,'Self','Mismo',1,1),
   ( 35,'Employer','Patrono',1,1),

   ( 40,'Shipper (Consignor)','Consignador',0,0),
   ( 41,'Carrier','Transportista',0,0),
   ( 42,'Consignee','Destinatario',0,0),
   ( 43,'Broker (Agent)','Agente (Broker)',0,0),
   ( 44,'Warehouse','Almacén',0,0),
   ( 45,'Logistics','Logística',0,0),

   ( 50,'Retailer','Comerciante',0,0),

   ( 60,'Location','Localización',0,0),
   ( 61,'Entity','Entidad',0,0),
   ( 62,'Activity Program','Programa de Actividad',0,0),
   ( 63,'Activity Thread','Hilo de Actividad',0,0),
   ( 64,'Activity Session','Sessión de Actividad',0,0),
   ( 65,'Ledger','Registro',0,0),
   ( 66,'Document','Documento',0,0),
   ( 67,'Reference','Referencia',0,0),
   ( 68,'Media','Medio',0,0),
   ( 69,'Activity Rating','Evaluación de Actividad',0,0),
   ( 70,'Note','Nota',0,0),
   ( 71,'Ledger Entry','Entrada en Jornal',0,0),
   ( 72,'Payments','Pagos',0,0),
   ( 73,'Submission','Envío',0,0),
   ( 74,'Invoice','Factura',0,0),

   ( 80,'Educational Institution','Institución Educativa',0,0),

   (100,'Medical Doctor','Médico Doctor',0,1),
   (101,'Provider (Generalist)','Proveedor de Salud (Generalista)',0,1),
   (102,'Provider (Specialist)','Proveedor de Salud (Especialista)',0,1),
   (103,'Provider','Proveedor de Salud',0,1),
   (104,'Practitioner','Practicante de Salud',0,1),

   (105,'Provider (Hospital)','Proveedor de Salud (Hospital)',0,0),
   (106,'Provider (Institution)','Proveedor de Salud (Institución)',0,0),
   (107,'Provider (Laboratory)','Proveedor de Salud (Laboratorio)',0,0),
   (108,'Provider (X-Ray Laboratory)','Proveedor de Salud Laboratorio de Rayos-X',0,0),
   (109,'Provider (Sonography)','Proveedor de Salud (Sonografía)',0,0),

   (205,'Lawyer','Abogado',0,1),
   (206,'Policeman','Policia',0,1),
   (207,'Operator','Operador',0,1),
   (208,'Investigating Officer','Oficial de Investigación',0,1),
   (209,'Prosecutor','Fiscal',0,1),
   (210,'Judge','Jues',0,1),

   (800,'Group','Grupo',0,0),
   (801,'Group Member', 'Miembro de Grupo',0,0),
   (802,'Owner', 'Dueño',0,1),
   (803,'Co-Owner', 'Co-Dueño',0,1),
   (804,'Leader', 'Lider',0,1),
   (805,'Registry', 'Registro',0,1),
   (806,'Identifier', 'Identificador',0,0),

   (870,'Career Sponsor', 'Auspiciador de Empleos',0,1),

   (900,'Federal Agency','Agencia Federal',0,0),
   (901,'Local - State Agency','Agencia Estatal Local',0,0),
   (902,'Local Correctional Institution','Institución Correccional Local',0,0),
   (903,'Federal Correctional Institution','Institución Correccional Federal',0,0),
   (904,'Local ORI','ORI Local',0,0),
   (905,'Department of Transportation','Departamento de Transportación',0,0),
   (906,'Department of Education','Departamento de Educación',0,0),
   (907,'Military','Militar',0,0),

   (999,'Other','Otro',0,0)
GO

INSERT INTO Reference.ReferenceTypesGroups (
   IdNo, Description, SpanishDescription) VALUES
   (   0, '',''),
   (   1, 'System Administration Group','Administradores del Sistema'),
   (   2, 'Centers','Centros'),
   (   3, 'Application Users','Usuarios de Aplicaciones'),
   (   4, 'Contractors','Contratistas'),
   (   5, 'Human Resource','Recurso Humano'),
----------
   (  10, 'Marine (Import/Export) Service Providers','Proveedores de Servicio Marítimo'),
                   ----------------------------------------
   (  11, 'Healthcare Groups','Grupos de Salud'),
   (  12, 'Criminal Justice Groups','Grupos de Justicia Criminal'),
   (  13, 'Events Participants','Participantes del Evento'),
   (  14, 'Transportation Participants','Participantes de Transportación'),
   (  15, 'Professional Driving School','Escuela Profesional de Conducir'),
   (  80, 'Educational Institution','Institución Educativa'),
   (  81, 'Employers (Transporation)','Empresas Patronos (Transportación)'),

   ( 900, 'General Groups','Grupos en General')
GO

-- -----------------------------------------------------------------------------

-- Entries in (Reference.ReferenceTypesGroupMembers) had been ommitted...

-- -----------------------------------------------------------------------------

INSERT INTO Reference.ReferenceTypes (IdNo, IdPrefix, Description, SpanishDescription) VALUES
   (   0, '', '', ''),
   (   9, 'ID', 'Identifier', 'Identificador'),
   (  10, 'EN', 'Entity', 'Entidad'),
   (  11, 'AP', 'Application', 'Aplicación'),
   (  12, 'PE', 'Person', 'Persona'),
   (  13, 'OG', 'Organization', 'Organización'),
   (  14, 'LO', 'Location', 'Localización'),
   (  40, 'AC', 'Activity', 'Actividad'),
   (  41, 'AR', 'Rating', 'Evaluación'),
   (  42, 'FU', 'Follow-Up', 'Seguimiento'),
   (  50, 'EG', 'Group', 'Grupo'),
   (  51, 'GP', 'Participant', 'Participante'),
   (  52, 'PY', 'Payer', 'Pagador'),
   (  53, 'EM', 'Employer', 'Empleador'),
   (  60, 'DR', 'Document', 'Documento'),
   (  70, 'ME', 'Media', 'Medio'),
   (  71, 'MB', 'Media Blob', 'Blob del Medio'),
   (  80, 'NT', 'Note', 'Nota'),
   (  81, 'NF', 'Notification', 'Notificación'),
   (  90, 'LG', 'Ledger', 'Jornal'),
   ( 100, 'SB', 'Submission', 'Envío'),
   ( 110, 'RI', 'Reference Item', 'Item de Referencia'),
   ( 111, 'RV', 'Reference Item Value', 'Valor del Item'),
   ( 200, 'CA', 'Case', 'Caso'),
   ( 205, 'CI', 'Incident', 'Incidente'),
   ( 210, 'CP', 'Complaint', 'Querella'),
   ( 215, 'CR', 'Request', 'Petición')
GO

-- -----------------------------------------------------------------------------

INSERT INTO Reference.ReferenceObjects
   (TypeNo, EntityTypeNo, OrganizationId, ReferenceId, AlternateId, Description, Alias, StatusNo) VALUES 
   (  0,  0, '',        '',        '',        '',              '',              0),
   ( 13, 12, 'COMMONS', '',        '',        '',              '',              0),
   ( 13, 12, 'COMMONS', 'COMMONS', 'COMMONS', 'COMMONS',       'COMMONS',       0),
   ( 10, 17, 'COMMONS', 'GUEST',   'GUEST',   'COMMONS GUEST', 'COMMONS GUEST', 1)
GO

-- -----------------------------------------------------------------------------

INSERT INTO Reference.ReferenceTraceTypes (
   IdNo, Description, SpanishDescription) VALUES
   (  0, '', ''),
   (  1, 'Created By', 'Creado Por'),
   (  2, 'Updated By', 'Actualizado Por'),
   (  3, 'Removed By', 'Removido Por'),
   (  4, 'Approved By', 'Aprovado Por'),
   (  5, 'Rejected By', 'Rechazado Por'),
   (  6, 'Canceled By', 'Cancelado Por')
GO

INSERT Reference.ReferencePolicyGroups (
   IdNo, Description, SpanishDescription) VALUES
   (   0, '', ''),
   (   1, 'Base Policies', 'Políticas Básicas')
GO

INSERT Reference.ReferencePolicyTypes (
   IdNo, GroupNo, ValueTypeNo, Value, Description, SpanishDescription) VALUES 
   (   0, 0, 0, '', '', ''),

-- Base Policies
   (   1, 1, 0, 'false', 'Can Manage Organization', 'Puede Manejar la Organización'),
   (   2, 1, 0, 'false', 'Can Change the Reference', 'Puede Cambiar de Referencia'),
   (   3, 1, 0, 'false', 'Can Use Application', 'Puede Utilizar la Aplicación'),
   (   4, 1, 0, 'false', 'Can Admin System', 'Puede Administrar el Sistema'),
   (   5, 1, 0, 'false', 'Can Admin Application', 'Puede Administrar la Aplicación'),
   (   6, 1, 0, 'false', 'Can Manage Organization Data', 'Puede Manage los Datos de la Organización'),
   (   7, 1, 0, 'false', 'Can Manage Self Data', 'Puede Manejar Datos de Si')
GO                                                              
--  ------------------------------    ------------------------------------------------------------
