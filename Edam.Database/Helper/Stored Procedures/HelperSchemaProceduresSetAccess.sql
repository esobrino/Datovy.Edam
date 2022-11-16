
-- -----------------------------------------------------------------------------

-- we asume that 'Helper.HelperDropProcedure' was added as done above...
-- drop procedure Helper.HelperSchemaProceduresSetAccess
CREATE PROCEDURE Helper.HelperSchemaProceduresSetAccess
   @CatalogName     VARCHAR(80) = '',
   @SchemaName      VARCHAR(80) = '',
   @ViewerRoleName  VARCHAR(80) = '',
   @EntryRoleName   VARCHAR(80) = '',
   @EditorRoleName  VARCHAR(80) = '',
   @TestOnly        BIT = 0
AS
BEGIN
   DECLARE @catalog VARCHAR(20),
           @schema  VARCHAR(20),
           @objName VARCHAR(80),
           @objType VARCHAR(20),
           @option  CHAR(1),
           @cmd     VARCHAR(128),
           @header  VARCHAR(80)

   SET @header          = 'GRANT EXECUTE ON '
   SET @SchemaName      = rtrim(@SchemaName)
   SET @CatalogName     = rtrim(@CatalogName)
   SET @ViewerRoleName  = rtrim(@ViewerRoleName)
   SET @EntryRoleName   = rtrim(@EntryRoleName)
   SET @EditorRoleName  = rtrim(@EditorRoleName)

   DECLARE SchmInitCursor CURSOR FOR
      SELECT Routine_Option, Routine_Schema, Routine_Name, Routine_Type
        FROM (

      -- 'F' = Find
      SELECT 'F' Routine_Option, Routine_Schema, Routine_Name, Routine_Type
        FROM Information_Schema.Routines
       WHERE (Routine_Catalog = @CatalogName OR  @CatalogName = '')
         AND (Routine_Schema = @SchemaName OR @SchemaName = '')
         AND (Routine_Name like '%Get%'
          OR  Routine_Name like '%Find%')
       UNION
      -- 'M' = Modify
      SELECT 'M' Routine_Option, Routine_Schema, Routine_Name, Routine_Type
        FROM Information_Schema.Routines
       WHERE (Routine_Catalog = @CatalogName OR  @CatalogName = '')
         AND (Routine_Schema = @SchemaName OR @SchemaName = '')
         AND (Routine_Name like '%Insert%'
          OR  Routine_Name like '%Update%'
          OR  Routine_Name like '%Add%'
          OR  Routine_Name like '%Create%')
       UNION
      -- 'D' = Delete
      SELECT 'D' Routine_Option, Routine_Schema, Routine_Name, Routine_Type
        FROM Information_Schema.Routines
       WHERE (Routine_Catalog = @CatalogName OR  @CatalogName = '')
         AND (Routine_Schema = @SchemaName OR @SchemaName = '')
         AND (Routine_Name like '%Delete%')
       UNION
      -- 'E' = Execution for the remainder
      SELECT 'E' Routine_Option, Routine_Schema, Routine_Name, Routine_Type
        FROM Information_Schema.Routines
       WHERE Routine_Type = 'PROCEDURE'
         AND Routine_Name NOT IN (
      SELECT Routine_Name
        FROM Information_Schema.Routines
       WHERE (Routine_Name like '%Get%'
          OR  Routine_Name like '%Find%')
       UNION
      SELECT Routine_Name
        FROM Information_Schema.Routines
       WHERE (Routine_Name like '%Insert%'
          OR  Routine_Name like '%Update%'
          OR  Routine_Name like '%Add%'
          OR  Routine_Name like '%Create%')
       UNION
      SELECT Routine_Name
        FROM Information_Schema.Routines
       WHERE (Routine_Name like '%Delete%'))
         AND Routine_Schema <> 'Helper') x
       ORDER BY Routine_Option, Routine_Schema, Routine_Name

   OPEN SchmInitCursor
   FETCH NEXT FROM SchmInitCursor
    INTO @option,@schema,@objName,@objType

   WHILE @@FETCH_STATUS = 0
   BEGIN
      -- setup permissions to users

      EXEC Helper.HelperSchemaSetAccess
         @schema,         @option,        @objName, 
         @ViewerRoleName, @EntryRoleName, @EditorRoleName,
         @objType,        @TestOnly

      --PRINT '---------------------------------------------------------------'

      -- Get the next table...
      FETCH NEXT FROM SchmInitCursor 
       INTO @option,@schema,@objName,@objType
   END 

   CLOSE SchmInitCursor
   DEALLOCATE SchmInitCursor
END
