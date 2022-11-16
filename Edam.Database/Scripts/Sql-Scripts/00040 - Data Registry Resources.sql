
SET NOCOUNT ON
INSERT INTO Data.DataKind (IdNo, Description, SpanishDescription) VALUES
   (  0, ' ', ' '),
   (  1, 'Property', 'Propiedad'),
   (  2, 'CodeSet', 'Codigos'),
   (  10, 'AuditProperty', 'Auditable')
GO

INSERT INTO Data.DataKeyType (IdNo, Description, SpanishDescription) VALUES
   (  0, ' ', ' '),
   (  1, 'None-Key', 'No es Unico'),
   (  2, 'Key', 'Unico'),
   (  3, 'Auto-Generate', 'Auto-Generado'),
   (  4, 'None', 'Ninguno'),
   (  99, 'Undefined', 'Indefinido')
GO

INSERT INTO Data.DataAssetGroupType (IdNo, Description, SpanishDescription) VALUES
   (  0, ' ', ' '),
   (  10, 'Catalog', 'Catalogo'),
   (  20, 'Document', 'Documento'),
   (  30, 'Submission', 'Envio')
GO

INSERT INTO Data.DataElementType (IdNo, Description, SpanishDescription) VALUES
   (  0, ' ', ' '),
   (  1, 'Element', 'Elemento'),
   (  2, 'Attribute', 'Atributo'),
   (  5, 'Type', 'Tipo'),
   (  6, 'Root', 'Raiz'),
   (  7, 'Reference', 'Referencia'),
   (  8, 'Enumerator', 'Enumerador'),
   (  9, 'Key', 'Chave'),
   ( 10, 'AutoPK', 'AutoPK'),
   ( 11, 'Identity', 'Identidad'),
   ( 99, 'Undefined', 'Indefinido')
GO

INSERT INTO Data.DataGroupType (IdNo, Description, SpanishDescription) VALUES
   (  0, ' ', ' '),
   (  6, 'Sequence', 'Secuencia'),
   (  7, 'Reference', 'Referencia'),
   (  8, 'OptionAll', 'SeleccionTodos'),
   (  9, 'OptionAny', 'Cualquiera'),
   ( 10, 'OptionOne', 'SeleccionUno'),
   ( 11, 'SubstitutionGroup', 'GrupoSubstitucion'),
   ( 12, 'Template', 'Plantilla')
GO

INSERT INTO Data.DataConstraintType (IdNo, Description, SpanishDescription) VALUES
   (  0, ' ', ' '),
   (  1, 'NonKey', 'Elemento'),
   (  2, 'Key', 'Atributo'),
   (  3, 'AutoPK', 'Tipo'),
   (  4, 'Identity', 'Raiz'),
   ( 99, 'Undefined', 'Indefinido')
GO

INSERT INTO Data.DataReferenceType (IdNo, Description, SpanishDescription) VALUES
   (  0, ' ', ' '),
   (  10, 'Object', 'Objeto'),
   (  20, 'Term', 'Termino'),
   (  30, 'Keyword', 'Keyword'),
   (  40, 'Element', 'Elemento'),
   (  50, 'Attribute', 'Atributo'),
   (  90, 'Table Reference', 'Tabla de Referencia'),
   (  91, 'Table Column Reference', 'Referencia a Tabla de Columna'),
   ( 100, 'URL', 'URL'),
   ( 110, 'Domain URI Prefix', 'Prefijo Dominio URI')
GO

INSERT INTO Data.DataAssociationType (IdNo, Description, SpanishDescription) VALUES
   (  0, ' ', ' '),
   (  10, 'Definition', 'Definicion'),
   (  20, 'Synonymous', 'Sinonimo'),
   (  30, 'Antonymous', 'Antonimo'),
   (  40, 'AKO (A Kind Of)', 'AKO (Tipo de)'),
   (  50, 'Alias', 'Alias')
GO

INSERT INTO Data.DataDomainType (IdNo, Description, SpanishDescription) VALUES
   (   0, ' ', ' '),
   (   1, 'Asset', 'Activo'),
   (   2, 'Instance', 'Instancia'),
   (  10, 'Information Exchange', 'Intercambio de Informacion'),
   (  20, 'Form', 'Forma'),
   (  30, 'Use Case', 'Caso de Uso'),
   (  40, 'Code Set', 'Conjunto de Codigos'),
   (  50, 'Document', 'Documento'),
   (  60, 'Report', 'Reporte'),
   (  70, 'Table', 'Table'),
   (  80, 'Schema', 'Esquema')
GO

INSERT INTO Data.DataReferenceStatus (IdNo, Description, SpanishDescription) VALUES
   (  0, ' ', ' '),
   (  1, 'Valid', 'Valido/a'),
   (  2, 'Invalid', 'Invalido/a'),
   (  3, 'Obsolete', 'Obsoleto/a'),
   (  4, 'Dismissed', 'Desestimado/a')
GO

INSERT INTO Data.DataNoteType (IdNo, Description, SpanishDescription) VALUES
   (  0, ' ', ' '),
   (  10, 'General Note', 'Nota General'),
   (  20, 'Caution - Adivice', 'Recomendacion - Precaucion'),
   (  30, 'Recomendation - Advice', 'Recomendacion - Consejo'),
   (  40, 'Reinforcement - Advice', 'Reforzar - Recomendacion')
GO


