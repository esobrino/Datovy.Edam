
SET NOCOUNT ON
INSERT INTO Object.ObjectRequirables (
   IdNo, Description, SpanishDescription) VALUES
   (0, 'Optional', 'Opcional'),
   (1, 'Required', 'Requerido')
GO

INSERT INTO Object.ObjectCheckables (
   IdNo, Description, SpanishDescription) VALUES
   (0, 'Pending', 'Pendiente'),
   (1, 'Done', 'Completado'),
   (2, 'Default', 'Defacto'),
   (3, 'N/A', 'N/A')
GO

INSERT INTO Object.ObjectApplicables (
   IdNo, Description, SpanishDescription) VALUES
   (0, 'NO', 'NO'),
   (1, 'YES', 'SI'),
   (2, 'N/A', 'N/A')
GO

INSERT INTO Object.ObjectStatus (
   IdNo, Description, SpanishDescription) VALUES
   (0, '', ''),
   (1, 'Active', 'Activo'),
   (2, 'Inactive', 'Inactivo'),

   (100, 'Editing', 'Editando'),
   (101, 'Accepted', 'Aceptado'),
   (102, 'Suspended', 'Suspendido'),
   (103, 'Canceled', 'Cancelado'),
   (104, 'Closed', 'Cerrado'),
   (105, 'Sealed', 'Sellado'),
   (106, 'Expired', 'Expirado'),
   (999, 'Deleted', 'Removido')
GO

INSERT INTO Object.ObjectSizes (
   IdNo, Description, SpanishDescription) VALUES
   ( 0, 'Unknown', 'Desconocido'),
   ( 1, 'Tiny', 'Tiny'),
   ( 2, 'Thumnail', 'Thumnail'),
   ( 3, 'Small', 'Small'),
   ( 4, 'Medium', 'Medium'),
   ( 5, 'Large', 'Large'),
   ( 6, 'XLarge', 'XLarge'),
   ( 7, 'Huge', 'Huge'),
   (10, 'Standard2x2', 'Standard2x2'),
   (11, 'Standard2x4', 'Standard2x4'),
   (40, 'Standard4x2', 'Standard4x2'),
   (41, 'Standard4x4', 'Standard4x4'),
   (30, 'Standard3x5', 'Standard3x5'),
   (50, 'Standard5x3', 'Standard5x3')
GO

INSERT INTO Object.ObjectConditions (
   IdNo, Description, SpanishDescription) VALUES
   (0, 'Unknown', 'Desconocido'),
   (1, 'Bad', 'Mal'),
   (2, 'Good', 'En Buenas Condiciones'),
   (3, 'Excelent', 'Excelente'),
   (4, 'Readable', 'Leible'),
   (5, 'Unreadable', 'No Leible'),
   (6, 'Damaged', 'Dañado'),
   (7, 'HightQuality', 'Alta Calidad')
GO

INSERT INTO Object.ObjectStates (
   IdNo, Description, SpanishDescription) VALUES
   ( 0, '', ''),
   ( 1, 'Submitted', 'Sometido'),
   ( 2, 'Pre-Approved', 'Pre-Aprovado'),
   ( 3, 'Registered', 'Registrado'),
   ( 4, 'Processed', 'Procesado'),
   ( 5, 'Verified', 'Verificado'),
   ( 6, 'Approved', 'Aprovado'),
   ( 7, 'Rejected', 'Rechazado'),
   ( 8, 'In Evaluation', 'En Evaluación'),
   ( 9, 'In Investigation', 'En Investigación'),
   (10, 'In Archive', 'En Archivo'),
   (11, 'In Legal', 'En Legal'),
   (12, 'In Process', 'En Proceso'),
   (13, 'To Evaluate', 'A Ser Evaluado'),
   (14, 'To Investigation','A Ser Invetigado'),
   (15, 'To Archive','A Ser Archivado'),
   (16, 'To Legal','A Legal'),
   (17, 'To Remove','A Remoción'),
   (18, 'Failed with Errors', 'Fallo con Errores'),
   (19, 'Completed', 'Completado')
GO

INSERT INTO Object.ObjectKeywordTypes (
   IdNo, Description, SpanishDescription) VALUES
   (0, 'General', 'General'),
   (1, 'A kind of', 'Tipo De'),
   (2, 'Known as', 'Conocido Como')
GO

INSERT INTO Object.ObjectValueTypes (
   IdNo, Description) VALUES
   (  0, 'Boolean'),
   (  1, 'String'),
   (  2, 'Char'),
   (  3, 'Bit'),
   (  4, 'SByte'),      -- -128 - 127
   (  5, 'Byte'),       --    0 - 256
   (  6, 'Int16'),
   (  7, 'Int32'),
   (  8, 'Int64'),
   (  9, 'UInt16'),
   ( 10, 'UInt32'),
   ( 11, 'UInt64'),
   ( 12, 'Single'),     -- 32 bits
   ( 13, 'Double'),     -- 64 bits
   ( 14, 'Decimal'),    -- 2^96
   ( 15, 'Money'),
   ( 16, 'Date'),
   ( 17, 'Time'),
   ( 18, 'DateTime'),
   ( 19, 'Text')
GO

INSERT INTO Object.ObjectValueQualifiers (
   IdNo, Description, SpanishDescription) VALUES
   (0,'General','General'),
   (1,'Default','Default'),
   (2,'Minimum Value','Valor Mínimo'),
   (3,'Maximum Value','Valor Máximo')
GO

INSERT INTO Object.ObjectColors (
   IdNo, Color, Description, SpanishDescription) VALUES
   (0, '#00000000', 'White', 'Blanco'),
   (1, '#FFFFFF00', 'Black', 'Negro')
GO

INSERT INTO Object.ObjectScopes (
   IdNo, Description, SpanishDescription) VALUES
   (  0,'',''),
   (  1,'Public','Público'),
   (  2,'Private','Privado'),
   (  3,'Sealed','Sellado'),
   (  4,'Confidential','Confidencial')
GO

INSERT INTO Object.ObjectTypes (
   IdNo, Description, SpanishDescription) VALUES
   (  0,'',''),
   (  1,'CDL Training','Entrenamiento CDL'),
   (  2,'Criminal Justice Activities','Actividades de Justicia Criminal'),
   (  3,'Law Enforcement Basic Training','Entrenamiento Básico Ley y Orden'),
   (  4,'Educational & Training Programs','Programas de Educación y Entrenamiento'),
   ( 99,'Other','Otro')
GO

INSERT INTO Object.ObjectSeverity (
   IdNo, Description, SpanishDescription) VALUES
   (  0,'',''),
   (  1,'Fatal','Fatal'),
   (  2,'Critical','Crítico'),
   (  3,'Warning', 'Advertencia'),
   (  4,'Information', 'Información')
GO

INSERT INTO Object.ObjectRelevance (
   IdNo, Description, SpanishDescription) VALUES
   (  0,'',''),
   (  1,'Critical','Crítico'),
   (  2,'Important', 'Importante'),
   (  3,'Informative', 'Informativo'),
   (  4,'Trivia', 'Trivia')
GO

INSERT INTO Object.ObjectLanguages (
   IdNo, Description, SpanishDescription, CultureCode) VALUES
   (  0,'Spanish','Español', 'ES'),
   (  1,'English','Ingles', 'EN')
GO

