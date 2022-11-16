
-- -----------------------------------------------------------------------------

CREATE PROCEDURE Helper.HelperDropSequence
   @SequenceName NVARCHAR(80)
AS
BEGIN
   IF EXISTS (
      SELECT * FROM dbo.sysobjects
      WHERE id = object_id(@SequenceName)  AND xtype = 'SO')
   BEGIN
      DECLARE @DropCommand VARCHAR(128)
      SET @DropCommand = 'DROP SEQUENCE ' + @SequenceName
      EXEC (@DropCommand)
   END
END
