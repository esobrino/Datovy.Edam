
CREATE PROCEDURE Helper.HelperSchemaSetExecuteToAll
   @SchemaName      VARCHAR(80) = '',
   @ObjectName      VARCHAR(80) = '',
   @ViewerRoleName  VARCHAR(80) = 'kifDataViewerRole',
   @EntryRoleName   VARCHAR(80) = 'kifDataEntryRole',
   @EditorRoleName  VARCHAR(80) = 'kifDataEditorRole',
   @TestOnly        BIT = 0
AS
BEGIN
   EXEC Helper.HelperSchemaSetAccess
      @SchemaName, 'E', @ObjectName,
      @ViewerRoleName,@EntryRoleName,@EditorRoleName, 'PROCEDURE', @TestOnly
END
