
-- -----------------------------------------------------------------------------

-- DropServiceMessageType
CREATE PROCEDURE Helper.HelperDropServiceMessageType
   @TypeName NVARCHAR(80)
AS
BEGIN
   IF EXISTS (
      SELECT * FROM sys.service_message_types WHERE name = @TypeName)
   BEGIN
      DECLARE @DropCommand VARCHAR(128)
      SET @DropCommand = 'DROP MESSAGE TYPE [' + @TypeName + ']'
      EXEC (@DropCommand)
   END
END
