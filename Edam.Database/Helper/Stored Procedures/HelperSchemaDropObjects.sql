
-- EXEC Helper.HelperSchemaObjectsRevokeAccess '','','kifViewer',1
-- test schema initialization
-- EXEC Helper.HelperSchemaTablesSetAccess '','Resource','Admin','Viewer','Editor',1
-- EXEC Helper.HelperSchemaTablesSetAccess '','Resource','Admin','','',1
-- EXEC Helper.HelperSchemaTablesSetAccess '','Resource','','Viewer','',1
-- EXEC Helper.HelperSchemaTablesSetAccess '','Resource','','','Editor',1

-- -----------------------------------------------------------------------------

-- we asume that 'Helper.HelperDropProcedure' was added as done above...

CREATE PROCEDURE Helper.HelperSchemaDropObjects
   @CatalogName VARCHAR(80) = '',
   @SchemaName  VARCHAR(80) = '',
   @TestOnly    BIT = 0
AS
BEGIN
   DECLARE @catalog VARCHAR(20),
           @schema  VARCHAR(20),
           @objName VARCHAR(80),
           @objType VARCHAR(20),
           @cmd     VARCHAR(128),
           @option  CHAR(1)

   SET @SchemaName  = rtrim(@SchemaName)
   SET @CatalogName = rtrim(@CatalogName)

   DECLARE SchmInitCursor CURSOR FOR
      SELECT 'R' Routine_Option, Routine_Schema, Routine_Name, Routine_Type
        FROM Information_Schema.Routines
       WHERE (Routine_Catalog = @CatalogName OR  @CatalogName = '')
         AND (Routine_Schema = @SchemaName OR @SchemaName = '')

   OPEN SchmInitCursor
   FETCH NEXT FROM SchmInitCursor
    INTO @option,@schema,@objName,@objType

   WHILE @@FETCH_STATUS = 0
   BEGIN
      -- revoke all permissions to users
      SET @cmd = 'DROP ' + @objType + ' ' + @schema+'.'+@objName
      IF @TestOnly = 0
         EXECUTE(@cmd)
      PRINT @cmd + ' -- DONE ('+@objType+')'
      --PRINT '---------------------------------------------------------------'

      -- Get the next table...
      FETCH NEXT FROM SchmInitCursor 
       INTO @option,@schema,@objName,@objType
   END 

   CLOSE SchmInitCursor
   DEALLOCATE SchmInitCursor
END
