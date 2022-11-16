
-- -----------------------------------------------------------------------------

CREATE PROCEDURE Helper.HelperDropService
   @ServiceName NVARCHAR(80)
AS
BEGIN
   IF EXISTS (
      SELECT * FROM sys.services WHERE name = @ServiceName)
   BEGIN
      DECLARE @DropCommand VARCHAR(128)
      SET @DropCommand = 'DROP SERVICE [' + @ServiceName + ']'
      EXEC (@DropCommand)
   END
END
