DECLARE @instance VARCHAR(80) = 'sqldb'

SELECT @instance InstanceName,
       DB_NAME() CatalogName,
	   SchemaName,
	   ObjectName,
	   ColumnName,
	   OrdinalPosition,
	   DataType,
	   CharacterMaxLength,
	   Precision,
	   Scale,
	   IsOutput,
	   IsReadOnly,
	   IsNullable,
	   IsIdentity,
       ObjectType,
	   ConstraintType,
       ReferenceTableSchema,
       ReferenceTableName,
       ReferenceColumnName
  FROM (
  
SELECT t.TABLE_SCHEMA SchemaName,
       t.TABLE_NAME ObjectName,
       c.COLUMN_NAME ColumnName,
       c.ORDINAL_POSITION OrdinalPosition,
       c.DATA_TYPE DataType,
       isnull(c.CHARACTER_MAXIMUM_LENGTH, '') CharacterMaxLength,
	   isnull(c.NUMERIC_PRECISION, 0) Precision,
	   isnull(c.NUMERIC_SCALE, 0) Scale,
	   cast(0 as bit) IsOutput,
	   cast(0 as bit) IsReadOnly,
	   cast(0 as bit) IsNullable,
       IsIdentity = cast(
          case when COLUMNPROPERTY(object_id(t.TABLE_SCHEMA+'.'+t.TABLE_NAME), c.COLUMN_NAME, 'IsIdentity') = 1
		       then 1 else 0 end as bit),
       cast('TABLE' as varchar(20)) ObjectType,
       isnull(n.CONSTRAINT_TYPE,'') ConstraintType,
       isnull(k2.TABLE_SCHEMA,'') ReferenceTableSchema,
       isnull(k2.TABLE_NAME,'') ReferenceTableName,
       isnull(k2.COLUMN_NAME,'') ReferenceColumnName
  FROM INFORMATION_SCHEMA.TABLES t 
  LEFT JOIN INFORMATION_SCHEMA.COLUMNS c 
    ON t.TABLE_CATALOG=c.TABLE_CATALOG 
   AND t.TABLE_SCHEMA=c.TABLE_SCHEMA 
   AND t.TABLE_NAME=c.TABLE_NAME 
  LEFT JOIN(INFORMATION_SCHEMA.KEY_COLUMN_USAGE k 
  JOIN INFORMATION_SCHEMA.TABLE_CONSTRAINTS n 
    ON k.CONSTRAINT_CATALOG=n.CONSTRAINT_CATALOG 
   AND k.CONSTRAINT_SCHEMA=n.CONSTRAINT_SCHEMA 
   AND k.CONSTRAINT_NAME=n.CONSTRAINT_NAME 
  LEFT JOIN INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS r 
    ON k.CONSTRAINT_CATALOG=r.CONSTRAINT_CATALOG 
   AND k.CONSTRAINT_SCHEMA=r.CONSTRAINT_SCHEMA 
   AND k.CONSTRAINT_NAME=r.CONSTRAINT_NAME)
    ON c.TABLE_CATALOG=k.TABLE_CATALOG 
   AND c.TABLE_SCHEMA=k.TABLE_SCHEMA 
   AND c.TABLE_NAME=k.TABLE_NAME
   AND c.COLUMN_NAME=k.COLUMN_NAME 
  LEFT JOIN INFORMATION_SCHEMA.KEY_COLUMN_USAGE k2 
    ON k.ORDINAL_POSITION=k2.ORDINAL_POSITION 
   AND r.UNIQUE_CONSTRAINT_CATALOG=k2.CONSTRAINT_CATALOG
   AND r.UNIQUE_CONSTRAINT_SCHEMA=k2.CONSTRAINT_SCHEMA 
   AND r.UNIQUE_CONSTRAINT_NAME=k2.CONSTRAINT_NAME 
 WHERE t.TABLE_TYPE='BASE TABLE'
 
 UNION
SELECT schema_name(pr.schema_id) SchemaName,
       pr.name ObjectName,
	   pa.name ColumnName,
	   pa.parameter_id OrdinalPosition,
	   ty.name DataType,
	   pa.max_length CharacterMaxLength,
	   pa.precision Precision,
	   pa.scale Scale,
	   pa.is_output IsOutput,
	   pa.is_readonly IsReadOnly,
	   pa.is_nullable IsNullable,
	   cast(0 as bit) IsIdentity,
       cast('SP' as varchar(20)) ObjectType,
	   cast('' as varchar(128)) ConstraintType,
       cast('' as varchar(128)) ReferenceTableSchema,
       cast('' as varchar(128)) ReferenceTableName,
       cast('' as varchar(128)) ReferenceColumnName
  FROM sys.parameters pa
  JOIN sys.procedures pr
    ON pa.object_id = pr.object_id 
  JOIN sys.types ty
    ON pa.system_type_id = ty.system_type_id 
   AND pa.user_type_id = ty.user_type_id
  JOIN sys.sysobjects so
    ON so.id = pr.object_id
 UNION
SELECT schema_name(v.schema_id) SchemaName,
       object_name(c.object_id) ObjectName,
       c.name ColumnName,
       c.column_id OrdinalPosition,
       type_name(user_type_id) DataType,
       c.max_length CharacterMaxLength,
       c.precision,
	   c.scale,
	   0,
	   0,
	   0,
	   0,
       cast('VIEW' as varchar(20)) ObjectType,
	   cast(null as varchar(128)) ConstraintType,
       cast(null as varchar(128)) ReferenceTableSchema,
       cast(null as varchar(128)) ReferenceTableName,
       cast(null as varchar(128)) ReferenceColumnName
  FROM sys.columns c
  JOIN sys.views v 
    ON v.object_id = c.object_id) x
 ORDER BY ObjectType, SchemaName, ObjectName, 
          OrdinalPosition, ColumnName
