
-- -----------------------------------------------------------------------------

-- we asume that 'Helper.HelperDropProcedure' was added as done above...

CREATE PROCEDURE Helper.HelperSchemaObjectsRevokeAccess
   @CatalogName VARCHAR(80) = '',
   @SchemaName  VARCHAR(80) = '',
   @UserName    VARCHAR(80) = '',
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
   SET @UserName    = rtrim(@UserName)

   DECLARE SchmInitCursor CURSOR FOR
      SELECT 'T' Object_Option, Table_Schema,   Table_Name,    Table_Type
        FROM Information_Schema.Tables
       WHERE (Table_Catalog = @CatalogName OR  @CatalogName = '')
         AND (Table_Schema = @SchemaName OR @SchemaName = '')
       UNION
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
      IF @option = 'T'
      BEGIN
         SET @cmd = 'REVOKE DELETE, INSERT, REFERENCES, SELECT, UPDATE ON '
            + @schema+'.'+@objName+' TO '+@UserName
         IF @TestOnly = 0
            EXECUTE(@cmd)
         --PRINT @cmd + ' -- DONE ('+@objType+')'
         --PRINT '---------------------------------------------------------------'
      END
      ELSE
      BEGIN
         SET @cmd = 'REVOKE EXECUTE ON '
            + @schema+'.'+@objName+' TO '+@UserName
         IF @TestOnly = 0 AND @objType <> 'FUNCTION'
            EXECUTE(@cmd)
         --PRINT @cmd + ' -- DONE ('+@objType+')'
         --PRINT '---------------------------------------------------------------'
      END

      -- Get the next table...
      FETCH NEXT FROM SchmInitCursor 
       INTO @option,@schema,@objName,@objType
   END 

   CLOSE SchmInitCursor
   DEALLOCATE SchmInitCursor
END
