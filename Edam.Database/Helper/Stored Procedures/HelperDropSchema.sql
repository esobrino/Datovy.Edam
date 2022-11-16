
CREATE PROCEDURE Helper.HelperDropSchema
   @SchemaName NVARCHAR(80)
AS
BEGIN
   IF EXISTS (
      SELECT * FROM sys.schemas WHERE name = @SchemaName)
   BEGIN
      DECLARE @DropCommand VARCHAR(128)
      SET @DropCommand = 'DROP SCHEMA ' + @SchemaName
      EXEC (@DropCommand)
   END
END
