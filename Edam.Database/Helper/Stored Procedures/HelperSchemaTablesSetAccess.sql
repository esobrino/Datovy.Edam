
-- -----------------------------------------------------------------------------

-- we asume that 'Helper.HelperDropProcedure' was added as done above...

CREATE PROCEDURE Helper.HelperSchemaTablesSetAccess
   @CatalogName VARCHAR(80) = '',
   @SchemaName  VARCHAR(80) = '',
   @ViewerName  VARCHAR(80) = '',
   @EntryName   VARCHAR(80) = '',
   @EditorName  VARCHAR(80) = '',
   @AdminName   VARCHAR(80) = '',
   @TestOnly    BIT = 0
AS
BEGIN
   DECLARE @catalog VARCHAR(20),
           @schema  VARCHAR(20),
           @tblName VARCHAR(80),
           @tblType VARCHAR(20),
           @cmd     VARCHAR(128)

   SET @SchemaName  = rtrim(@SchemaName)
   SET @CatalogName = rtrim(@CatalogName)
   SET @AdminName   = rtrim(@AdminName)
   SET @ViewerName  = rtrim(@ViewerName)
   SET @EntryName   = rtrim(@EntryName)
   SET @EditorName  = rtrim(@EditorName)

   DECLARE SchmInitCursor CURSOR FOR
      SELECT Table_Schema, Table_Name, Table_Type
        FROM Information_Schema.Tables
       WHERE (Table_Catalog = @CatalogName OR  @CatalogName = '')
         AND (Table_Schema = @SchemaName OR @SchemaName = '')
       ORDER BY Table_Name

   OPEN SchmInitCursor
   FETCH NEXT FROM SchmInitCursor
    INTO @schema,@tblName,@tblType

   WHILE @@FETCH_STATUS = 0
   BEGIN
      -- setup permissions to users
      IF @AdminName <> ''
      BEGIN
         SET @cmd = 'GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE ON '
            + @schema+'.'+@tblName+' TO '+@AdminName
         IF @TestOnly = 0
            EXECUTE(@cmd)
         --PRINT @cmd + ' -- DONE ('+@tblType+')'
      END

      IF @ViewerName <> ''
      BEGIN
         SET @cmd = 'GRANT SELECT ON '+@schema+'.'+@tblName+' TO '+@ViewerName
         IF @TestOnly = 0
            EXECUTE(@cmd)
         --PRINT @cmd + ' -- DONE ('+@tblType+')'
      END

      IF @EntryName <> ''
      BEGIN
         SET @cmd = 'GRANT INSERT, REFERENCES, SELECT, UPDATE ON '
            + @schema+'.'+@tblName+' TO '+@EntryName
         IF @TestOnly = 0
            EXECUTE(@cmd)
         --PRINT @cmd + ' -- DONE ('+@tblType+')'
      END

      IF @EditorName <> ''
      BEGIN
         SET @cmd = 'GRANT DELETE, INSERT, REFERENCES, SELECT, UPDATE ON '
            + @schema+'.'+@tblName+' TO '+@EditorName
         IF @TestOnly = 0
            EXECUTE(@cmd)
         --PRINT @cmd + ' -- DONE ('+@tblType+')'
      END

      --PRINT '---------------------------------------------------------------'

      -- Get the next table...
      FETCH NEXT FROM SchmInitCursor 
       INTO @schema,@tblName,@tblType
   END 

   CLOSE SchmInitCursor
   DEALLOCATE SchmInitCursor
END
