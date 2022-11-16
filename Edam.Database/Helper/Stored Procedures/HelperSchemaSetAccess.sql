
-- exec Helper.HelperSchemaDropObjects 'Kifv1','',0
-- exec Helper.HelperSchemaDropObjects 'Kifv1','',1

-- -----------------------------------------------------------------------------
-- EXEC Helper.HelperDropProcedure 'Helper.HelperSchemaSetAccess'

CREATE PROCEDURE Helper.HelperSchemaSetAccess
   @SchemaName      VARCHAR(80),
   @Option          CHAR(1),
   @ObjName         VARCHAR(80),
   @ViewerRoleName  VARCHAR(80) = '',
   @EntryRoleName   VARCHAR(80) = '',
   @EditorRoleName  VARCHAR(80) = '',
   @ObjType         VARCHAR(80) = '',
   @TestOnly        BIT = 0
AS
BEGIN
   DECLARE @cmd     VARCHAR(128),
           @header  VARCHAR(80),
           @opt     CHAR(1)
   SET @header = 'GRANT EXECUTE ON '

   IF @Option = 'E'
      SET @opt = 'F'
   ELSE
      SET @opt = @Option

   IF @ViewerRoleName <> '' AND @opt = 'F'
   BEGIN
      SET @cmd = @header + @SchemaName + '.' + @ObjName+' TO '+@ViewerRoleName
      IF @TestOnly = 0
         EXECUTE(@cmd)
      ELSE
         PRINT @cmd + ' -- DONE ('+@Option+': '+@ObjType+')'
   END

   IF @EntryRoleName <> '' AND (@opt = 'F' OR @opt = 'M')
   BEGIN
      SET @cmd = @header + @SchemaName + '.' + @ObjName+' TO '+@EntryRoleName
      IF @TestOnly = 0
         EXECUTE(@cmd)
      ELSE
         PRINT @cmd + ' -- DONE ('+@Option+': '+@ObjType+')'
   END

   IF @EditorRoleName <> '' AND (@opt = 'F' OR @opt = 'M' OR @opt = 'D')
   BEGIN
      SET @cmd = @header + @SchemaName + '.' + @ObjName+' TO '+@EditorRoleName
      IF @TestOnly = 0
         EXECUTE(@cmd)
      ELSE
         PRINT @cmd + ' -- DONE ('+@Option+': '+@ObjType+')'
   END
END
